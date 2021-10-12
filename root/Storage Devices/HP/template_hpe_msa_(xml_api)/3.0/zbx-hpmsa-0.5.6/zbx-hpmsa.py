#!/usr/bin/env python3

import os
import json
import urllib3
from hashlib import md5
from socket import gethostbyname
from argparse import ArgumentParser
from xml.etree import ElementTree as eTree
from datetime import datetime, timedelta

import sqlite3
import requests


def make_pwd_hash(cred, isfile=False):
    """
    Return md5 hash of login string.

    :param cred: Login string in 'user_password' format or path to the file with credentials.
    :type cred: str
    :param isfile: Is the 'cred' is path to file.
    :type isfile: bool
    :return: md5 hash.
    :rtype: str
    """

    if isfile:
        try:
            with open(cred, 'r') as login_file:
                login_data = login_file.readline().replace('\n', '').strip()
                if login_data.find('_') != -1:
                    hashed = md5(login_data.encode()).hexdigest()
                else:
                    hashed = login_data
        except FileNotFoundError:
            raise SystemExit("ERROR: File password doesn't exists: {}".format(cred))
    else:
        hashed = md5(cred.encode()).hexdigest()
    return hashed


def prepare_tmp(path):
    """
    Create temporary directory for cache.

    :param path: Path to temporary directory
    :return: None
    :rtype: None
    """

    try:
        os.makedirs(path)
        os.chmod(path, 0o777)
    except PermissionError:
        raise SystemExit("ERROR: '{}' not writable for user '{}'.".format(tmp_dir, os.getenv('USER')))


def sql_cmd(query, fetch_all=False):
    """
    Check and execute SQL query.

    :param query: SQL query to execute.
    :type query: str
    :param fetch_all: Set it True to execute fetchall().
    :type fetch_all: bool
    :return: Tuple with SQL query result.
    :rtype: tuple
    """

    if not any(verb.lower() in query.lower() for verb in ('DROP', 'DELETE', 'TRUNCATE', 'ALTER')):
        conn = sqlite3.connect(CACHE_DB)
        cursor = conn.cursor()
        try:
            if not fetch_all:
                data = cursor.execute(query).fetchone()
            else:
                data = cursor.execute(query).fetchall()
        except sqlite3.OperationalError as e:
            if str(e).startswith('no such table'):
                raise SystemExit("Cache is empty")
            else:
                raise SystemExit('ERROR: {}. Query: {}'.format(e, query))
        conn.commit()
        conn.close()

        return data
    else:
        raise SystemExit('ERROR: Unacceptable SQL query: "{query}"'.format(query=query))


def get_skey(storage, hashed_login, use_cache=True):
    """
    Get session key from HP MSA API and and print it.

    :param storage: Storage IP address or DNS name.
    :type storage: str
    :param hashed_login: Hashed with md5 login data.
    :type hashed_login: str
    :param use_cache: The function will try to save session key to disk.
    :type use_cache: bool
    :return: Session key or error code.
    :rtype: str
    """

    # Get MSA IP from name
    msa_ip = gethostbyname(storage)

    # Trying to use cached session key
    if use_cache:
        cur_timestamp = datetime.timestamp(datetime.utcnow())
        if not USE_HTTPS:  # http
            cache_data = sql_cmd('SELECT expired,skey FROM skey_cache WHERE ip="{}" AND proto="http"'.format(storage))
        else:  # https
            cache_data = sql_cmd('SELECT expired,skey '
                                 'FROM skey_cache '
                                 'WHERE dns_name="{}" AND IP ="{}" AND proto="https"'.format(storage, msa_ip)
                                 )
        if cache_data is not None:
            cache_expired, cached_skey = cache_data
            if cur_timestamp < float(cache_expired):
                return cached_skey
            else:
                return get_skey(storage, hashed_login, use_cache=False)
        else:
            return get_skey(storage, hashed_login, use_cache=False)
    else:
        # Forming URL and trying to make GET query
        login_url = '{strg}/api/login/{hash}'.format(strg=storage, hash=hashed_login)
        ret_code, sessionkey, xml = query_xmlapi(url=login_url, sessionkey=None)

        # 1 - success, write sessionkey to DB and return it
        if ret_code == '1':
            expired_time = datetime.timestamp(datetime.utcnow() + timedelta(minutes=15))
            if not USE_HTTPS:  # http
                if sql_cmd('SELECT ip FROM skey_cache WHERE ip = "{}" AND proto="http"'.format(storage)) is None:
                    sql_cmd('INSERT INTO skey_cache VALUES ('
                            '"{dns}", "{ip}", "http", "{time}", "{skey}")'.format(dns=storage,
                                                                                  ip=storage,
                                                                                  time=expired_time,
                                                                                  skey=sessionkey
                                                                                  )
                            )
                else:
                    sql_cmd('UPDATE skey_cache SET skey="{skey}", expired="{expired}" '
                            'WHERE ip="{ip}" AND proto="http"'.format(skey=sessionkey,
                                                                      expired=expired_time,
                                                                      ip=storage
                                                                      )
                            )
            else:  # https
                if sql_cmd('SELECT dns_name, ip FROM skey_cache '
                           'WHERE dns_name="{}" AND ip="{}" AND proto="https"'.format(storage, msa_ip)) is None:
                    sql_cmd('INSERT INTO skey_cache VALUES ('
                            '"{name}", "{ip}", "https", "{expired}", "{skey}")'.format(name=storage,
                                                                                       ip=msa_ip,
                                                                                       expired=expired_time,
                                                                                       skey=sessionkey
                                                                                       )
                            )
                else:
                    sql_cmd('UPDATE skey_cache SET skey = "{skey}", expired = "{expired}" '
                            'WHERE dns_name="{name}" AND ip="{ip}" AND proto="https"'.format(skey=sessionkey,
                                                                                             expired=expired_time,
                                                                                             name=storage,
                                                                                             ip=msa_ip
                                                                                             )
                            )
            return sessionkey
        # 2 - Authentication Unsuccessful, return "2"
        elif ret_code == '2':
            return ret_code


def query_xmlapi(url, sessionkey):
    """
    Making HTTP(s) request to HP MSA XML API.

    :param url: URL to make GET request.
    :type url: str
    :param sessionkey: Session key to authorize.
    :type sessionkey: Union[str, None]
    :return: Tuple with return code, return description and etree object <xml.etree.ElementTree.Element>.
    :rtype: tuple
    """

    # Set file where we can find root CA
    ca_file = '/etc/pki/tls/certs/ca-bundle.crt'

    # Makes GET request to URL
    try:
        # Connection timeout in seconds (connection, read).
        timeout = (1, 3)
        # Headers for newer MSA and cookies for old MSA model
        headers = {'sessionKey': sessionkey}
        cookies = {'wbisessionkey': sessionkey, 'wbiusername': MSA_USERNAME}
        if USE_HTTPS:  # https
            url = 'https://' + url
            if VERIFY_SSL:
                response = requests.get(url, headers=headers, cookies=cookies, verify=ca_file, timeout=timeout)
            else:
                urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)
                response = requests.get(url, headers=headers, cookies=cookies, verify=False, timeout=timeout)
        else:  # http
            url = 'http://' + url
            response = requests.get(url, headers=headers, cookies=cookies, timeout=timeout)
    except requests.exceptions.SSLError:
        raise SystemExit('ERROR: Cannot verify storage SSL Certificate.')
    except requests.exceptions.ConnectTimeout:
        raise SystemExit('ERROR: Timeout occurred!')
    except requests.exceptions.ConnectionError as e:
        raise SystemExit("ERROR: Cannot connect to storage {}.".format(e))

    # Reading data from server XML response
    try:
        if SAVE_XML is not None and 'login' not in url:
            try:
                with open(SAVE_XML, 'w') as xml_file:
                    xml_file.write(response.text)
            except PermissionError:
                    raise SystemExit('ERROR: Cannot save XML file to "{}"'.format(args.savexml))
        response_xml = eTree.fromstring(response.content)
        return_code = response_xml.find("./OBJECT[@name='status']/PROPERTY[@name='return-code']").text
        return_response = response_xml.find("./OBJECT[@name='status']/PROPERTY[@name='response']").text

        return return_code, return_response, response_xml
    except (ValueError, AttributeError) as e:
        raise SystemExit("ERROR: Cannot parse XML. {}".format(e))


def get_health(storage, component, item, sessionkey):
    """
    Get health status of single MSA part.

    :param storage: Storage DNS name or IP address.
    :type storage: str
    :param sessionkey: Session key.
    :type sessionkey: str
    :param component: Storage component name.
    :type component: str
    :param item: Component ID.
    :type item: str
    :return: Health status.
    :rtype: str
    """

    # Forming url
    if component in ('vdisks', 'disks'):
        url = '{strg}/api/show/{comp}/{item}'.format(strg=storage, comp=component, item=item)
    else:
        url = '{strg}/api/show/{comp}'.format(strg=storage, comp=component)

    # Querying API
    ret_code, descr, xml = query_xmlapi(url, sessionkey)
    if ret_code != '0':
        raise SystemExit('ERROR: {} : {}'.format(ret_code, descr))

    # Components ID matching dict.
    id_md = {
        'controllers': 'controller-id', 'enclosures': 'enclosure-id', 'power-supplies': 'durable-id',
        'fans': 'durable-id', 'pools': 'name', 'disk-groups': 'name', 'ports': 'port', 'volumes': 'volume-name'
    }

    # Returns health statuses
    if component in ('vdisks', 'disks'):
        health = xml.find("./OBJECT[@name='{}']/PROPERTY[@name='health-numeric']".format(NAMES_MATCH[component])).text
    else:
        # We'll make dict {ctrl_id: health} because of we cannot call API for exact of some components
        health_dict = {}
        for OBJ in xml.findall("./OBJECT[@name='{}']".format(NAMES_MATCH[component])):
            comp_id = OBJ.find("./PROPERTY[@name='{}']".format(id_md[component])).text
            health_dict[comp_id] = OBJ.find("./PROPERTY[@name='health-numeric']").text
        # If given item presents in our dict - return status
        if item in health_dict:
            health = health_dict[item]
        else:
            raise SystemExit("ERROR: No such id: '{}'.".format(item))
    return health


def make_lld(storage, component, sessionkey):
    """
    Form LLD JSON for Zabbix server.

    :param storage: Storage DNS name or IP address.
    :type storage: str
    :param sessionkey: Session key.
    :type sessionkey: str
    :param component: Name of storage component.
    :type component: str
    :return: JSON with discovery data.
    :rtype: str
    """

    # Forming URL
    url = '{strg}/api/show/{comp}'.format(strg=storage, comp=component)

    # Making request to API
    resp_return_code, resp_description, xml = query_xmlapi(url, sessionkey)
    if resp_return_code != '0':
        raise SystemExit('ERROR: {rc} : {rd}'.format(rc=resp_return_code, rd=resp_description))

    # Eject XML from response
    all_components = []
    # Vdisks is deprecated in HPE MSA 1040/2040+ so it stay here for compatibilities
    if component == 'disks':
        for disk in xml.findall("./OBJECT[@name='{}']".format(NAMES_MATCH[component])):
            disk_id = disk.find("./PROPERTY[@name='location']").text
            disk_sn = disk.find("./PROPERTY[@name='serial-number']").text
            lld_dict = {
                "{#DISK.ID}": "{}".format(disk_id),
                "{#DISK.SN}": "{}".format(disk_sn)
            }
            all_components.append(lld_dict)
    elif component == 'vdisks':
        for vdisk in xml.findall("./OBJECT[@name='{}']".format(NAMES_MATCH[component])):
            vdisk_id = vdisk.find("./PROPERTY[@name='name']").text
            try:
                vdisk_type = vdisk.find("./PROPERTY[@name='storage-type']").text
            except AttributeError:
                vdisk_type = "UNKNOWN"
            lld_dict = {
                "{#VDISK.ID}": "{}".format(vdisk_id),
                "{#VDISK.TYPE}": "{}".format(vdisk_type)
            }
            all_components.append(lld_dict)
    elif component == 'pools':
        for pool in xml.findall("./OBJECT[@name='{}']".format(NAMES_MATCH[component])):
            pool_id = pool.find("./PROPERTY[@name='name']").text
            try:
                pool_type = pool.find("./PROPERTY[@name='storage-type']").text
            except AttributeError:
                pool_type = "UNKNOWN"
            lld_dict = {
                "{#POOL.ID}": "{}".format(pool_id),
                "{#POOL.TYPE}": "{}".format(pool_type)
            }
            all_components.append(lld_dict)
    elif component == 'disk-groups':
        for pool in xml.findall("./OBJECT[@name='{}']".format(NAMES_MATCH[component])):
            dg_id = pool.find("./PROPERTY[@name='name']").text
            try:
                dg_type = pool.find("./PROPERTY[@name='storage-type']").text
            except AttributeError:
                dg_type = "UNKNOWN"
            lld_dict = {
                "{#DG.ID}": "{}".format(dg_id),
                "{#DG.TYPE}": "{}".format(dg_type)
            }
            all_components.append(lld_dict)
    elif component == 'volumes':
        for pool in xml.findall("./OBJECT[@name='{}']".format(NAMES_MATCH[component])):
            volume_id = pool.find("./PROPERTY[@name='volume-name']").text
            try:
                volume_type = pool.find("./PROPERTY[@name='volume-type']").text
            except AttributeError:
                volume_type = "UNKNOWN"
            lld_dict = {
                "{#VOLUME.ID}": "{}".format(volume_id),
                "{#VOLUME.TYPE}": "{}".format(volume_type)
            }
            all_components.append(lld_dict)
    elif component == 'controllers':
        for ctrl in xml.findall("./OBJECT[@name='{}']".format(NAMES_MATCH[component])):
            ctrl_id = ctrl.find("./PROPERTY[@name='controller-id']").text
            ctrl_sn = ctrl.find("./PROPERTY[@name='serial-number']").text
            ctrl_ip = ctrl.find("./PROPERTY[@name='ip-address']").text
            lld_dict = {
                "{#CONTROLLER.ID}": "{}".format(ctrl_id),
                "{#CONTROLLER.SN}": "{}".format(ctrl_sn),
                "{#CONTROLLER.IP}": "{}".format(ctrl_ip)
            }
            all_components.append(lld_dict)
    elif component == 'enclosures':
        for encl in xml.findall("./OBJECT[@name='{}']".format(NAMES_MATCH[component])):
            encl_id = encl.find("./PROPERTY[@name='enclosure-id']").text
            encl_sn = encl.find("./PROPERTY[@name='midplane-serial-number']").text
            lld_dict = {
                "{#ENCLOSURE.ID}": "{}".format(encl_id),
                "{#ENCLOSURE.SN}": "{}".format(encl_sn)
            }
            all_components.append(lld_dict)
    elif component == 'power-supplies':
        for PS in xml.findall("./OBJECT[@name='{}']".format(NAMES_MATCH[component])):
            ps_id = PS.find("./PROPERTY[@name='durable-id']").text
            ps_loc = PS.find("./PROPERTY[@name='location']").text
            ps_name = PS.find("./PROPERTY[@name='name']").text
            # Exclude voltage regulators from discovery
            if ps_name.lower().find('voltage regulator') == -1:
                lld_dict = {
                    "{#POWERSUPPLY.ID}": "{}".format(ps_id),
                    "{#POWERSUPPLY.LOCATION}": "{}".format(ps_loc)
                }
                all_components.append(lld_dict)
    elif component == 'fans':
        for FAN in xml.findall("./OBJECT[@name='{}']".format(NAMES_MATCH[component])):
            fan_id = FAN.find("./PROPERTY[@name='durable-id']").text
            fan_loc = FAN.find("./PROPERTY[@name='location']").text
            lld_dict = {
                "{#FAN.ID}": "{}".format(fan_id),
                "{#FAN.LOCATION}": "{}".format(fan_loc)
            }
            all_components.append(lld_dict)
    elif component == 'ports':
        for PORT in xml.findall("./OBJECT[@name='{}']".format(NAMES_MATCH[component])):
            port_id = PORT.find("./PROPERTY[@name='port']").text
            port_type = PORT.find("./PROPERTY[@name='port-type']").text
            port_speed = PORT.find("./PROPERTY[@name='actual-speed']").text
            port_sfp = PORT.find("./OBJECT[@name='port-details']/PROPERTY[@name='sfp-present']").text
            lld_dict = {
                "{#PORT.ID}": "{}".format(port_id),
                "{#PORT.TYPE}": "{}".format(port_type),
                "{#PORT.SPEED}": "{}".format(port_speed),
                "{#PORT.SFP}": "{}".format(port_sfp)
            }
            all_components.append(lld_dict)

    # Dumps JSON and return it
    return json.dumps({"data": all_components}, separators=(',', ':'))


def get_full_json(storage, component, sessionkey):
    """
    Form text in JSON with storage component data.

    :param storage: Storage DNS name or IP address.
    :type storage: str
    :param sessionkey: Session key.
    :type sessionkey: str
    :param component: Name of storage component.
    :type component: str
    :return: JSON with all found data.
    :rtype: str
    """

    # Forming URL
    url = '{strg}/api/show/{comp}'.format(strg=storage, comp=component)

    # Making request to API
    resp_return_code, resp_description, xml = query_xmlapi(url, sessionkey)
    if resp_return_code != '0':
        raise SystemExit('ERROR: {rc} : {rd}'.format(rc=resp_return_code, rd=resp_description))

    # Processing XML
    all_components = {}
    if component == 'disks':
        for PROP in xml.findall("./OBJECT[@name='drive']"):
            # Processing main properties
            disk_location = PROP.find("./PROPERTY[@name='location']").text
            disk_health = PROP.find("./PROPERTY[@name='health']").text
            disk_health_num = PROP.find("./PROPERTY[@name='health-numeric']").text
            disk_error = PROP.find("./PROPERTY[@name='error']").text
            disk_full_data = {
                "health": disk_health,
                "health-num": disk_health_num,
                "error": disk_error
            }

            # Processing advanced properties
            disk_ext = dict()
            disk_ext['temperature'] = PROP.find("./PROPERTY[@name='temperature-numeric']")
            disk_ext['power-on-hours'] = PROP.find("./PROPERTY[@name='power-on-hours']")
            for prop, value in disk_ext.items():
                if value is not None:
                    disk_full_data[prop] = value.text
            all_components[disk_location] = disk_full_data
    elif component == 'vdisks':
        for PROP in xml.findall("./OBJECT[@name='virtual-disk']"):
            vdisk_name = PROP.find("./PROPERTY[@name='name']").text
            vdisk_health = PROP.find("./PROPERTY[@name='health']").text
            vdisk_health_num = PROP.find("./PROPERTY[@name='health-numeric']").text
            vdisk_status = PROP.find("./PROPERTY[@name='status']").text
            vdisk_status_num = PROP.find("./PROPERTY[@name='status-numeric']").text
            vdisk_owner = PROP.find("./PROPERTY[@name='owner']").text
            vdisk_owner_num = PROP.find("./PROPERTY[@name='owner-numeric']").text
            vdisk_owner_pref = PROP.find("./PROPERTY[@name='preferred-owner']").text
            vdisk_owner_pref_num = PROP.find("./PROPERTY[@name='preferred-owner-numeric']").text
            vdisk_full_data = {
                "health": vdisk_health,
                "health-num": vdisk_health_num,
                "status": vdisk_status,
                "status-num": vdisk_status_num,
                "owner": vdisk_owner,
                "owner-num": vdisk_owner_num,
                "owner-pref": vdisk_owner_pref,
                "owner-pref-num": vdisk_owner_pref_num
            }
            all_components[vdisk_name] = vdisk_full_data
    elif component == 'pools':
        for PROP in xml.findall("./OBJECT[@name='pools']"):
            pool_name = PROP.find("./PROPERTY[@name='name']").text
            pool_health = PROP.find("./PROPERTY[@name='health']").text
            pool_health_num = PROP.find("./PROPERTY[@name='health-numeric']").text
            pool_owner = PROP.find("./PROPERTY[@name='owner']").text
            pool_owner_num = PROP.find("./PROPERTY[@name='owner-numeric']").text
            pool_owner_pref = PROP.find("./PROPERTY[@name='preferred-owner']").text
            pool_owner_pref_num = PROP.find("./PROPERTY[@name='preferred-owner-numeric']").text
            pool_full_data = {
                "health": pool_health,
                "health-num": pool_health_num,
                "owner": pool_owner,
                "owner-num": pool_owner_num,
                "owner-pref": pool_owner_pref,
                "owner-pref-num": pool_owner_pref_num
            }
            all_components[pool_name] = pool_full_data
    elif component == 'disk-groups':
        for PROP in xml.findall("./OBJECT[@name='disk-group']"):
            dg_name = PROP.find("./PROPERTY[@name='name']").text
            dg_health = PROP.find("./PROPERTY[@name='health']").text
            dg_health_num = PROP.find("./PROPERTY[@name='health-numeric']").text
            dg_status = PROP.find("./PROPERTY[@name='status']").text
            dg_status_num = PROP.find("./PROPERTY[@name='status-numeric']").text
            dg_owner = PROP.find("./PROPERTY[@name='owner']").text
            dg_owner_num = PROP.find("./PROPERTY[@name='owner-numeric']").text
            dg_owner_pref = PROP.find("./PROPERTY[@name='preferred-owner']").text
            dg_owner_pref_num = PROP.find("./PROPERTY[@name='preferred-owner-numeric']").text
            dg_full_data = {
                "health": dg_health,
                "health-num": dg_health_num,
                "status": dg_status,
                "status-num": dg_status_num,
                "owner": dg_owner,
                "owner-num": dg_owner_num,
                "owner-pref": dg_owner_pref,
                "owner-pref-num": dg_owner_pref_num
            }
            all_components[dg_name] = dg_full_data
    elif component == 'volumes':
        for PROP in xml.findall("./OBJECT[@name='volume']"):
            volume_name = PROP.find("./PROPERTY[@name='volume-name']").text
            volume_health = PROP.find("./PROPERTY[@name='health']").text
            volume_health_num = PROP.find("./PROPERTY[@name='health-numeric']").text
            volume_owner = PROP.find("./PROPERTY[@name='owner']").text
            volume_owner_num = PROP.find("./PROPERTY[@name='owner-numeric']").text
            volume_owner_pref = PROP.find("./PROPERTY[@name='preferred-owner']").text
            volume_owner_pref_num = PROP.find("./PROPERTY[@name='preferred-owner-numeric']").text
            volume_full_data = {
                "health": volume_health,
                "health-num": volume_health_num,
                "owner": volume_owner,
                "owner-num": volume_owner_num,
                "owner-pref": volume_owner_pref,
                "owner-pref-num": volume_owner_pref_num
            }
            all_components[volume_name] = volume_full_data
    elif component == 'controllers':
        for PROP in xml.findall("./OBJECT[@name='controllers']"):
            # Processing main controller properties
            ctrl_id = PROP.find("./PROPERTY[@name='controller-id']").text
            ctrl_health = PROP.find("./PROPERTY[@name='health']").text
            ctrl_health_num = PROP.find("./PROPERTY[@name='health-numeric']").text
            ctrl_status = PROP.find("./PROPERTY[@name='status']").text
            ctrl_status_num = PROP.find("./PROPERTY[@name='status-numeric']").text
            ctrl_rd_status = PROP.find("./PROPERTY[@name='redundancy-status']").text
            ctrl_rd_status_num = PROP.find("./PROPERTY[@name='redundancy-status-numeric']").text

            # Get controller statistics
            url = '{strg}/api/show/{comp}'.format(strg=storage, comp='controller-statistics')

            # Making request to API
            stats_ret_code, stats_descr, stats_xml = query_xmlapi(url, sessionkey)
            if stats_ret_code != '0':
                raise SystemExit('ERROR: {} : {}'.format(stats_ret_code, stats_descr))

            # THINK: I don't know, is it good solution, but it's one more query to XML API
            ctrl_cpu_load = stats_xml.find("./OBJECT[@name='controller-statistics']/PROPERTY[@name='cpu-load']").text
            ctrl_iops = stats_xml.find("./OBJECT[@name='controller-statistics']/PROPERTY[@name='iops']").text

            # Making full controller dict
            ctrl_full_data = {
                "health": ctrl_health,
                "health-num": ctrl_health_num,
                "status": ctrl_status,
                "status-num": ctrl_status_num,
                "redundancy": ctrl_rd_status,
                "redundancy-num": ctrl_rd_status_num,
                "cpu-load": ctrl_cpu_load,
                "iops": ctrl_iops
            }

            # Processing advanced controller properties
            ctrl_ext = dict()
            ctrl_ext['flash-health'] = PROP.find("./OBJECT[@basetype='compact-flash']/PROPERTY[@name='health']")
            ctrl_ext['flash-health-num'] = PROP.find(
                "./OBJECT[@basetype='compact-flash']/PROPERTY[@name='health-numeric']")
            ctrl_ext['flash-status'] = PROP.find("./OBJECT[@basetype='compact-flash']/PROPERTY[@name='status']")
            ctrl_ext['flash-status-num'] = PROP.find(
                "./OBJECT[@basetype='compact-flash']/PROPERTY[@name='status-numeric']")
            for prop, value in ctrl_ext.items():
                if value is not None:
                    ctrl_full_data[prop] = value.text
            all_components[ctrl_id] = ctrl_full_data
    elif component == 'enclosures':
        for PROP in xml.findall("./OBJECT[@name='enclosures']"):
            # Processing main enclosure properties
            encl_id = PROP.find("./PROPERTY[@name='enclosure-id']").text
            encl_health = PROP.find("./PROPERTY[@name='health']").text
            encl_health_num = PROP.find("./PROPERTY[@name='health-numeric']").text
            encl_status = PROP.find("./PROPERTY[@name='status']").text
            encl_status_num = PROP.find("./PROPERTY[@name='status-numeric']").text
            # Making full enclosure dict
            encl_full_data = {
                "health": encl_health,
                "health-num": encl_health_num,
                "status": encl_status,
                "status-num": encl_status_num
            }
            all_components[encl_id] = encl_full_data
    elif component == 'power-supplies':
        # Getting info about all power supplies
        for PS in xml.findall("./OBJECT[@name='power-supplies']"):
            # Processing main power supplies properties
            ps_id = PS.find("./PROPERTY[@name='durable-id']").text
            ps_name = PS.find("./PROPERTY[@name='name']").text
            # Exclude voltage regulators
            if ps_name.lower().find('voltage regulator') == -1:
                ps_health = PS.find("./PROPERTY[@name='health']").text
                ps_health_num = PS.find("./PROPERTY[@name='health-numeric']").text
                ps_status = PS.find("./PROPERTY[@name='status']").text
                ps_status_num = PS.find("./PROPERTY[@name='status-numeric']").text
                ps_dc12v = PS.find("./PROPERTY[@name='dc12v']").text
                ps_dc5v = PS.find("./PROPERTY[@name='dc5v']").text
                ps_dc33v = PS.find("./PROPERTY[@name='dc33v']").text
                ps_dc12i = PS.find("./PROPERTY[@name='dc12i']").text
                ps_dc5i = PS.find("./PROPERTY[@name='dc5i']").text
                ps_full_data = {
                    "health": ps_health,
                    "health-num": ps_health_num,
                    "status": ps_status,
                    "status-num": ps_status_num,
                    "power-12v": ps_dc12v,
                    "power-5v": ps_dc5v,
                    "power-33v": ps_dc33v,
                    "power-12i": ps_dc12i,
                    "power-5i": ps_dc5i
                }
                # Processing advanced power supplies properties
                ps_ext = dict()
                ps_ext['temperature'] = PS.find("./PROPERTY[@name='dctemp']")
                for prop, value in ps_ext.items():
                    if value is not None:
                        ps_full_data[prop] = value.text
                all_components[ps_id] = ps_full_data
    elif component == 'fans':
        # Getting info about all fans
        for FAN in xml.findall("./OBJECT[@name='fan-details']"):
            # Processing main fan properties
            fan_id = FAN.find(".PROPERTY[@name='durable-id']").text
            fan_health = FAN.find(".PROPERTY[@name='health']").text
            fan_health_num = FAN.find(".PROPERTY[@name='health-numeric']").text
            fan_status = FAN.find(".PROPERTY[@name='status']").text
            fan_status_num = FAN.find(".PROPERTY[@name='status-numeric']").text
            fan_speed = FAN.find(".PROPERTY[@name='speed']").text
            fan_full_data = {
                "health": fan_health,
                "health-num": fan_health_num,
                "status": fan_status,
                "status-num": fan_status_num,
                "speed": fan_speed
            }
            all_components[fan_id] = fan_full_data
    elif component == 'ports':
        for FC in xml.findall("./OBJECT[@name='ports']"):
            # Processing main ports properties
            port_name = FC.find("./PROPERTY[@name='port']").text
            port_health = FC.find("./PROPERTY[@name='health']").text
            port_health_num = FC.find("./PROPERTY[@name='health-numeric']").text
            if port_health_num != '4':
                port_full_data = {
                    "health": port_health,
                    "health-num": port_health_num
                }

                # Processing advanced ports properties
                port_ext = dict()
                port_ext['port-status'] = FC.find("./PROPERTY[@name='status']")
                port_ext['port-status-num'] = FC.find("./PROPERTY[@name='status-numeric']")
                port_ext['sfp-status'] = FC.find("./OBJECT[@name='port-details']/PROPERTY[@name='sfp-status']")
                for prop, value in port_ext.items():
                    if value is not None:
                        port_full_data[prop] = value.text
                all_components[port_name] = port_full_data
    return json.dumps(all_components, separators=(',', ':'))


if __name__ == '__main__':
    # Current program version
    VERSION = '0.5.6'

    # Parse all given arguments
    parser = ArgumentParser(description='Zabbix script for HP MSA XML API.', add_help=True)
    parser.add_argument('-d', '--lld', action='store_true', help='Making discovery')
    parser.add_argument('-g', '--get-health', type=str, help='ID of MSA part which status we want to get',
                        metavar='[ID|[all|full]]'
                        )
    parser.add_argument('-u', '--user', default='monitor', type=str, help='User name to login in MSA')
    parser.add_argument('-p', '--password', default='!monitor', type=str, help='Password for your user')
    parser.add_argument('-f', '--login-file', type=str, help='Path to file contains login and password')
    parser.add_argument('-m', '--msa', type=str, help='DNS name or IP address of MSA', metavar='[IP|DNSNAME]')
    parser.add_argument('-c', '--component', type=str, help='MSA part name',
                        choices=('disks', 'vdisks', 'controllers', 'enclosures', 'fans',
                                 'power-supplies', 'ports', 'pools', 'disk-groups', 'volumes'
                                 )
                        )
    parser.add_argument('-v', '--version', action='version', version=VERSION, help='Print the script version and exit')
    parser.add_argument('-s', '--save-xml', type=str, nargs=1, help='Save response from storage as XML file')
    parser.add_argument('--show-cache', action='store_true', help='Display cache data')
    parser.add_argument('--https', type=str, choices=('direct', 'verify'), help='Use https instead http')
    args = parser.parse_args()

    # Make no possible to use '--lld' and '--get' options together
    if args.lld and args.get_health:
        raise SystemExit("Syntax error: Cannot use '-d|--lld' and '-g|--get' options together.")

    # Matches between CLI 'show' command args and OBJECT 'name' attribute in XML output.
    NAMES_MATCH = {
        'disks': 'drive',
        'vdisks': 'virtual-disk',
        'controllers': 'controllers',
        'enclosures': 'enclosures',
        'power-supplies': 'power-supplies',
        'fans': 'fan-details',
        'ports': 'ports',
        'pools': 'pools',
        'disk-groups': 'disk-group',
        'volumes': 'volume'
    }

    # Prepare tmp directory if it doesn't exists
    if os.name == 'posix':  # REMOVE: v0.6.
        tmp_dir = '/dev/shm/zbx-hpmsa/'
        if not os.path.exists(tmp_dir):
            prepare_tmp(tmp_dir)
    else:
        # REMOVE: v0.6. Current directory for Windows.
        tmp_dir = ''

    # Create cache db if it not exists
    CACHE_DB = tmp_dir + 'zbx-hpmsa.cache.db'
    if not os.path.exists(CACHE_DB):
        sql_cmd('CREATE TABLE IF NOT EXISTS skey_cache ('
                'dns_name TEXT NOT NULL, '
                'ip TEXT NOT NULL, '
                'proto TEXT NOT NULL, '
                'expired TEXT NOT NULL, '
                'skey TEXT NOT NULL DEFAULT 0, '
                'PRIMARY KEY (dns_name, ip, proto))'
                )

    # Display cache data and exit
    if args.show_cache:
        print("{:^30} {:^15} {:^7} {:^19} {:^32}".format('hostname', 'ip', 'proto', 'expired', 'sessionkey'))
        print("{:-^30} {:-^15} {:-^7} {:-^19} {:-^32}".format('-', '-', '-', '-', '-'))
        for cache in sql_cmd('SELECT * FROM skey_cache', fetch_all=True):
            name, ip, proto, expired, skey = cache
            print("{:30} {:15} {:^7} {:19} {:32}".format(
                name, ip, proto, datetime.fromtimestamp(float(expired)).strftime("%H:%M:%S %d.%m.%Y"), skey))
        exit(0)

    # Set some global variables
    MSA_USERNAME = args.user
    MSA_PASSWORD = args.password
    SAVE_XML = args.save_xml
    USE_HTTPS = args.https in ('direct', 'verify')
    VERIFY_SSL = args.https == 'verify'
    # Set msa_connect - IP or DNS name and determine to use https or not
    MSA_CONNECT = args.msa if VERIFY_SSL else gethostbyname(args.msa)

    # Make login hash string
    if args.login_file:
        CRED_HASH = make_pwd_hash(args.login_file, isfile=True)
    else:
        CRED_HASH = make_pwd_hash('_'.join([MSA_USERNAME, MSA_PASSWORD]))

    # Getting sessionkey
    skey = get_skey(MSA_CONNECT, CRED_HASH)

    # Make discovery
    if args.lld:
        print(make_lld(MSA_CONNECT, args.component, skey))
    # Getting health of one MSA component
    elif args.get_health and args.get_health not in ('all', 'full'):
        print(get_health(MSA_CONNECT, args.component, args.get_health, skey))
    # Getting full components data in JSON
    elif args.get_health in ('all', 'full'):
        print(get_full_json(MSA_CONNECT, args.component, skey))
    else:
        raise SystemExit("Syntax error: You must use '--lld' or '--get' option anyway.")
