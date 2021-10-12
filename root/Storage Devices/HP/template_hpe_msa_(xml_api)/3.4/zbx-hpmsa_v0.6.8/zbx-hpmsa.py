#!/usr/bin/env python3

import os
import grp
import json
import urllib3
from hashlib import md5
from socket import gethostbyname
from argparse import ArgumentParser
from xml.etree import ElementTree as eTree
from datetime import datetime, timedelta

import sqlite3
import requests


def install_script(tmp_dir, group):
    """
    Function creates temp dir, init cache db and assign needed right.

    :param tmp_dir: Path to temporary directory
    :type: str
    :param group: Group name to set chown root:group to tmp dir and cache db file
    :type: str
    :return: None
    :rtype: None
    """

    # Create config directory and assign rights
    try:
        if not os.path.exists(tmp_dir):
            # Create directory
            os.mkdir(tmp_dir)
            os.chmod(tmp_dir, 0o775)
    except PermissionError:
        raise SystemExit('PERMISSION ERROR: You have no permissions to create "{}" directory.'.format(tmp_dir))

    # Init cache db
    if not os.path.exists(CACHE_DB):
        sql_cmd('CREATE TABLE IF NOT EXISTS skey_cache ('
                'dns_name TEXT NOT NULL, '
                'ip TEXT NOT NULL, '
                'proto TEXT NOT NULL, '
                'expired TEXT NOT NULL, '
                'skey TEXT NOT NULL DEFAULT 0, '
                'PRIMARY KEY (dns_name, ip, proto))'
                )
        os.chmod(CACHE_DB, 0o664)

    # Set owner to tmp dir
    try:
        os.chown(tmp_dir, 0, grp.getgrnam(group).gr_gid)
        os.chown(CACHE_DB, 0, grp.getgrnam(group).gr_gid)
    except KeyError:
        print('WARNING: Cannot find group "{}" to set access rights. Using "root" group.'.format(group))
        os.chown(tmp_dir, 0, 0)
        os.chown(CACHE_DB, 0, grp.getgrnam(group).gr_gid)


def make_cred_hash(cred, isfile=False):
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
            raise SystemExit("ERROR: File with login data doesn't exists: {}".format(cred))
    else:
        hashed = md5(cred.encode()).hexdigest()
    return hashed


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

    try:
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
    except sqlite3.OperationalError as e:
        print("ERROR: {}".format(e))


def display_cache():
    """
    Diplay cache data and exit.

    :return: None
    :rtype: None
    """

    print("{:^30} {:^15} {:^7} {:^19} {:^32}".format('hostname', 'ip', 'proto', 'expired', 'sessionkey'))
    print("{:-^30} {:-^15} {:-^7} {:-^19} {:-^32}".format('-', '-', '-', '-', '-'))

    for cache in sql_cmd('SELECT * FROM skey_cache', fetch_all=True):
        name, ip, proto, expired, sessionkey = cache
        print("{:30} {:15} {:^7} {:19} {:32}".format(
            name, ip, proto, datetime.fromtimestamp(float(expired)).strftime("%H:%M:%S %d.%m.%Y"), sessionkey))


def get_skey(msa, hashed_login, use_cache=True):
    """
    Get session key from HP MSA API and and print it.

    :param msa: MSA IP address and DNS name.
    :type msa: tuple
    :param hashed_login: Hashed with md5 login data.
    :type hashed_login: str
    :param use_cache: The function will try to save session key to disk.
    :type use_cache: bool
    :return: Session key or error code.
    :rtype: str
    """

    # Trying to use cached session key
    if use_cache:
        cur_timestamp = datetime.timestamp(datetime.utcnow())
        if not USE_SSL:  # http
            cache_data = sql_cmd('SELECT expired,skey FROM skey_cache WHERE ip="{}" AND proto="http"'.format(msa[0]))
        else:  # https
            cache_data = sql_cmd('SELECT expired,skey '
                                 'FROM skey_cache '
                                 'WHERE dns_name="{}" AND IP ="{}" AND proto="https"'.format(msa[1], msa[0])
                                 )
        if cache_data is not None:
            cache_expired, cached_skey = cache_data
            if cur_timestamp < float(cache_expired):
                return cached_skey
            else:
                return get_skey(msa, hashed_login, use_cache=False)
        else:
            return get_skey(msa, hashed_login, use_cache=False)
    else:
        # Forming URL and trying to make GET query
        msa_conn = msa[1] if VERIFY_SSL else msa[0]
        url = '{}/api/login/{}'.format(msa_conn, hashed_login)
        ret_code, sessionkey, xml = query_xmlapi(url=url, sessionkey=None)

        # 1 - success, write sessionkey to DB and return it
        if ret_code == '1':
            expired = datetime.timestamp(datetime.utcnow() + timedelta(minutes=30))
            if not USE_SSL:
                cache_data = sql_cmd('SELECT ip FROM skey_cache WHERE ip = "{}" AND proto="http"'.format(msa[0]))
                if cache_data is None:
                    sql_cmd('INSERT INTO skey_cache VALUES ('
                            '"{dns}", "{ip}", "http", "{time}", "{skey}")'.format(dns=msa[1], ip=msa[0],
                                                                                  time=expired, skey=sessionkey)
                            )
                else:
                    sql_cmd('UPDATE skey_cache SET skey="{skey}", expired="{expired}" '
                            'WHERE ip="{ip}" AND proto="http"'.format(skey=sessionkey, expired=expired, ip=msa[0])
                            )
            else:
                cache_data = sql_cmd('SELECT dns_name, ip FROM skey_cache '
                                     'WHERE dns_name="{}" AND ip="{}" AND proto="https"'.format(msa[1], msa[0]))
                if cache_data is None:
                    sql_cmd('INSERT INTO skey_cache VALUES ('
                            '"{name}", "{ip}", "https", "{expired}", "{skey}")'.format(name=msa[1], ip=msa[0],
                                                                                       expired=expired,
                                                                                       skey=sessionkey
                                                                                       )
                            )
                else:
                    sql_cmd('UPDATE skey_cache SET skey = "{skey}", expired = "{expired}" '
                            'WHERE dns_name="{name}" AND ip="{ip}" AND proto="https"'.format(skey=sessionkey,
                                                                                             expired=expired,
                                                                                             name=msa[1],
                                                                                             ip=msa[0]
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
        timeout = (3, 10)
        full_url = 'https://' + url if USE_SSL else 'http://' + url
        headers = {'sessionKey': sessionkey} if API_VERSION == 2 else {
            'Cookie': "wbiusername={}; wbisessionkey={}".format(MSA_USERNAME, sessionkey)}
        if USE_SSL:
            if VERIFY_SSL:
                response = requests.get(full_url, headers=headers, verify=ca_file, timeout=timeout)
            else:
                urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)
                response = requests.get(full_url, headers=headers, verify=False, timeout=timeout)
        else:
            response = requests.get(full_url, headers=headers, timeout=timeout)
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


def get_health(msa, component, item, sessionkey):
    """
    Get health status of single MSA part.

    :param msa: MSA DNS name and IP address.
    :type msa: tuple
    :param sessionkey: Session key.
    :type sessionkey: str
    :param component: Storage component name.
    :type component: str
    :param item: Component ID.
    :type item: str
    :return: Health status.
    :rtype: str
    """

    # Components ID matching dict.
    id_md = {
        'controllers': 'controller-id', 'enclosures': 'enclosure-id', 'power-supplies': 'durable-id',
        'fans': 'durable-id', 'pools': 'name', 'disk-groups': 'name', 'ports': 'port', 'volumes': 'volume-name'
    }

    # Forming url
    msa_conn = msa[1] if VERIFY_SSL else msa[0]
    if component in ('vdisks', 'disks'):
        url = '{strg}/api/show/{comp}/{item}'.format(strg=msa_conn, comp=component, item=item)
    else:
        url = '{strg}/api/show/{comp}'.format(strg=msa_conn, comp=component)

    # Make a query to API
    ret_code, descr, xml = query_xmlapi(url, sessionkey)
    if ret_code != '0':
        raise SystemExit('ERROR: {} : {}'.format(ret_code, descr))

    # Return health status (int)
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


def make_lld(msa, component, sessionkey):
    """
    Form LLD JSON for Zabbix server.

    :param msa: MSA DNS name and IP address.
    :type msa: tuple
    :param sessionkey: Session key.
    :type sessionkey: str
    :param component: Name of storage component.
    :type component: str
    :return: JSON with discovery data.
    :rtype: str
    """

    # Forming URL
    msa_conn = msa[1] if VERIFY_SSL else msa[0]
    url = '{strg}/api/show/{comp}'.format(strg=msa_conn, comp=component)

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
            vdisk_sn = vdisk.find("./PROPERTY[@name='serial-number']").txt
            try:
                vdisk_type = vdisk.find("./PROPERTY[@name='storage-type']").text
            except AttributeError:
                vdisk_type = "UNKNOWN"
            lld_dict = {
                "{#VDISK.ID}": "{}".format(vdisk_id),
                "{#VDISK.SN}": "{}".format(vdisk_sn),
                "{#VDISK.TYPE}": "{}".format(vdisk_type)
            }
            all_components.append(lld_dict)
    elif component == 'pools':
        for pool in xml.findall("./OBJECT[@name='{}']".format(NAMES_MATCH[component])):
            pool_id = pool.find("./PROPERTY[@name='name']").text
            pool_type = pool.find("./PROPERTY[@name='storage-type']").text
            lld_dict = {
                "{#POOL.ID}": "{}".format(pool_id),
                "{#POOL.TYPE}": "{}".format(pool_type)
            }
            all_components.append(lld_dict)
    elif component == 'disk-groups':
        for dg in xml.findall("./OBJECT[@name='{}']".format(NAMES_MATCH[component])):
            dg_id = dg.find("./PROPERTY[@name='name']").text
            dg_type = dg.find("./PROPERTY[@name='storage-type']").text
            dg_sn = dg.find(".PROPERTY[@name='pool-serial-number']").text
            dg_tier = dg.find("./PROPERTY[@name='storage-tier']").text
            lld_dict = {
                "{#DG.ID}": "{}".format(dg_id),
                "{#DG.SN}": "{}".format(dg_sn),
                "{#DG.TYPE}": "{}".format(dg_type),
                "{#DG.TIER}": "{}".format(dg_tier)
            }
            all_components.append(lld_dict)
    elif component == 'volumes':
        for vol in xml.findall("./OBJECT[@name='{}']".format(NAMES_MATCH[component])):
            vol_id = vol.find("./PROPERTY[@name='volume-name']").text
            vol_type = vol.find("./PROPERTY[@name='volume-type']").text
            vol_sn = vol.find("./PROPERTY[@name='serial-number']").text
            lld_dict = {
                "{#VOLUME.ID}": "{}".format(vol_id),
                "{#VOLUME.SN}": "{}".format(vol_sn),
                "{#VOLUME.TYPE}": "{}".format(vol_type)
            }
            all_components.append(lld_dict)
    elif component == 'controllers':
        for ctrl in xml.findall("./OBJECT[@name='{}']".format(NAMES_MATCH[component])):
            ctrl_id = ctrl.find("./PROPERTY[@name='controller-id']").text
            ctrl_sn = ctrl.find("./PROPERTY[@name='serial-number']").text
            ctrl_ip = ctrl.find("./PROPERTY[@name='ip-address']").text
            ctrl_wwn = ctrl.find("./PROPERTY[@name='node-wwn']").text
            lld_dict = {
                "{#CONTROLLER.ID}": "{}".format(ctrl_id),
                "{#CONTROLLER.SN}": "{}".format(ctrl_sn),
                "{#CONTROLLER.IP}": "{}".format(ctrl_ip),
                "{#CONTROLLER.WWN}": "{}".format(ctrl_wwn),
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


def get_full_json(msa, component, sessionkey):
    """
    Form text in JSON with storage component data.

    :param msa: MSA DNS name and IP address.
    :type msa: tuple
    :param sessionkey: Session key.
    :type sessionkey: str
    :param component: Name of storage component.
    :type component: str
    :return: JSON with all found data.
    :rtype: str
    """

    # Forming URL
    msa_conn = msa[1] if VERIFY_SSL else msa[0]
    url = '{strg}/api/show/{comp}'.format(strg=msa_conn, comp=component)

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
            disk_health_num = PROP.find("./PROPERTY[@name='health-numeric']").text
            disk_full_data = {
                "health-num": disk_health_num
            }

            # Processing advanced properties
            disk_ext = dict()
            disk_ext['temperature'] = PROP.find("./PROPERTY[@name='temperature-numeric']")
            disk_ext['temperature-status-numeric'] = PROP.find("./PROPERTY[@name='temperature-status-numeric']")
            disk_ext['job-running-numeric'] = PROP.find("./PROPERTY[@name='job-running-numeric']")
            disk_ext['power-on-hours'] = PROP.find("./PROPERTY[@name='power-on-hours']")
            for prop, value in disk_ext.items():
                if value is not None:
                    disk_full_data[prop] = value.text
            all_components[disk_location] = disk_full_data
    elif component == 'vdisks':
        for PROP in xml.findall("./OBJECT[@name='virtual-disk']"):
            vdisk_name = PROP.find("./PROPERTY[@name='name']").text
            vdisk_health_num = PROP.find("./PROPERTY[@name='health-numeric']").text
            vdisk_status_num = PROP.find("./PROPERTY[@name='status-numeric']").text
            vdisk_owner_num = PROP.find("./PROPERTY[@name='owner-numeric']").text
            vdisk_owner_pref_num = PROP.find("./PROPERTY[@name='preferred-owner-numeric']").text
            vdisk_full_data = {
                "health-num": vdisk_health_num,
                "status-num": vdisk_status_num,
                "owner-num": vdisk_owner_num,
                "owner-pref-num": vdisk_owner_pref_num
            }
            all_components[vdisk_name] = vdisk_full_data
    elif component == 'pools':
        for PROP in xml.findall("./OBJECT[@name='pools']"):
            pool_name = PROP.find("./PROPERTY[@name='name']").text
            pool_health_num = PROP.find("./PROPERTY[@name='health-numeric']").text
            pool_owner_num = PROP.find("./PROPERTY[@name='owner-numeric']").text
            pool_owner_pref_num = PROP.find("./PROPERTY[@name='preferred-owner-numeric']").text
            pool_full_data = {
                "health-num": pool_health_num,
                "owner-num": pool_owner_num,
                "owner-pref-num": pool_owner_pref_num
            }
            all_components[pool_name] = pool_full_data
    elif component == 'disk-groups':
        for PROP in xml.findall("./OBJECT[@name='disk-group']"):
            dg_sn = PROP.find(".PROPERTY[@name='pool-serial-number']").text
            dg_health_num = PROP.find("./PROPERTY[@name='health-numeric']").text
            dg_status_num = PROP.find("./PROPERTY[@name='status-numeric']").text
            dg_owner_num = PROP.find("./PROPERTY[@name='owner-numeric']").text
            dg_owner_pref_num = PROP.find("./PROPERTY[@name='preferred-owner-numeric']").text
            dg_curr_job_num = PROP.find("./PROPERTY[@name='current-job-numeric']").text
            dg_full_data = {
                "health-num": dg_health_num,
                "status-num": dg_status_num,
                "owner-num": dg_owner_num,
                "owner-pref-num": dg_owner_pref_num,
                "curr-job-num": dg_curr_job_num
            }
            all_components[dg_sn] = dg_full_data
    elif component == 'volumes':
        for PROP in xml.findall("./OBJECT[@name='volume']"):
            vol_sn = PROP.find("./PROPERTY[@name='serial-number']").text
            vol_health_num = PROP.find("./PROPERTY[@name='health-numeric']").text
            vol_owner_num = PROP.find("./PROPERTY[@name='owner-numeric']").text
            vol_owner_pref_num = PROP.find("./PROPERTY[@name='preferred-owner-numeric']").text
            vol_full_data = {
                "health-num": vol_health_num,
                "owner-num": vol_owner_num,
                "owner-pref-num": vol_owner_pref_num
            }
            all_components[vol_sn] = vol_full_data
    elif component == 'controllers':
        for PROP in xml.findall("./OBJECT[@name='controllers']"):
            # Processing main controller properties
            ctrl_id = PROP.find("./PROPERTY[@name='controller-id']").text
            ctrl_sc_fw = PROP.find("./PROPERTY[@name='sc-fw']").text
            ctrl_health_num = PROP.find("./PROPERTY[@name='health-numeric']").text
            ctrl_status_num = PROP.find("./PROPERTY[@name='status-numeric']").text
            ctrl_rd_status_num = PROP.find("./PROPERTY[@name='redundancy-status-numeric']").text

            # Get controller statistics
            url = '{strg}/api/show/{comp}/{ctrl}'.format(strg=msa_conn, comp='controller-statistics', ctrl=ctrl_id)

            # Making request to API
            stats_ret_code, stats_descr, stats_xml = query_xmlapi(url, sessionkey)
            if stats_ret_code != '0':
                raise SystemExit('ERROR: {} : {}'.format(stats_ret_code, stats_descr))

            # THINK: I don't know, is it good solution, but it's one more query to XML API
            ctrl_cpu_load = stats_xml.find("./OBJECT[@name='controller-statistics']/PROPERTY[@name='cpu-load']").text
            ctrl_iops = stats_xml.find("./OBJECT[@name='controller-statistics']/PROPERTY[@name='iops']").text

            # Making full controller dict
            ctrl_full_data = {
                "health-num": ctrl_health_num,
                "status-num": ctrl_status_num,
                "redundancy-num": ctrl_rd_status_num,
                "cpu-load": ctrl_cpu_load,
                "iops": ctrl_iops,
                "sc-fw": ctrl_sc_fw
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
            encl_health_num = PROP.find("./PROPERTY[@name='health-numeric']").text
            encl_status_num = PROP.find("./PROPERTY[@name='status-numeric']").text
            # Making full enclosure dict
            encl_full_data = {
                "health-num": encl_health_num,
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
                ps_health_num = PS.find("./PROPERTY[@name='health-numeric']").text
                ps_status_num = PS.find("./PROPERTY[@name='status-numeric']").text
                ps_dc12v = PS.find("./PROPERTY[@name='dc12v']").text
                ps_dc5v = PS.find("./PROPERTY[@name='dc5v']").text
                ps_dc33v = PS.find("./PROPERTY[@name='dc33v']").text
                ps_dc12i = PS.find("./PROPERTY[@name='dc12i']").text
                ps_dc5i = PS.find("./PROPERTY[@name='dc5i']").text
                ps_full_data = {
                    "health-num": ps_health_num,
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
            fan_health_num = FAN.find(".PROPERTY[@name='health-numeric']").text
            fan_status_num = FAN.find(".PROPERTY[@name='status-numeric']").text
            fan_speed = FAN.find(".PROPERTY[@name='speed']").text
            fan_full_data = {
                "health-num": fan_health_num,
                "status-num": fan_status_num,
                "speed": fan_speed
            }
            all_components[fan_id] = fan_full_data
    elif component == 'ports':
        for FC in xml.findall("./OBJECT[@name='ports']"):
            # Processing main ports properties
            port_name = FC.find("./PROPERTY[@name='port']").text
            port_health_num = FC.find("./PROPERTY[@name='health-numeric']").text
            if port_health_num != '4':
                port_full_data = {
                    "health-num": port_health_num
                }

                # Processing advanced ports properties
                port_ext = dict()
                port_ext['port-status-num'] = FC.find("./PROPERTY[@name='status-numeric']")
                port_ext['sfp-status'] = FC.find("./OBJECT[@name='port-details']/PROPERTY[@name='sfp-status']")
                for prop, value in port_ext.items():
                    if value is not None:
                        port_full_data[prop] = value.text
                all_components[port_name] = port_full_data
    return json.dumps(all_components, separators=(',', ':'))


if __name__ == '__main__':
    # Current program version
    VERSION = '0.6.8'
    MSA_PARTS = ('disks', 'vdisks', 'controllers', 'enclosures', 'fans',
                 'power-supplies', 'ports', 'pools', 'disk-groups', 'volumes')

    # Main parser
    main_parser = ArgumentParser(description='Zabbix script for HP MSA XML API.', add_help=True)
    main_parser.add_argument('-a', '--api', type=int, default=2, choices=(1, 2), help='MSA API version (default: 2)')
    main_parser.add_argument('-u', '--username', default='monitor', type=str, help='User name to login in MSA')
    main_parser.add_argument('-p', '--password', default='!monitor', type=str, help='Password for your user')
    main_parser.add_argument('-f', '--login-file', nargs=1, type=str, help='Path to file contains login and password')
    main_parser.add_argument('-v', '--version', action='version', version=VERSION, help='Print script version and exit')
    main_parser.add_argument('-s', '--save-xml', type=str, nargs=1, help='Save response from storage as XML file')
    main_parser.add_argument('-t', '--tmp-dir', type=str, nargs=1, default='/var/tmp/zbx-hpmsa/',
                             help='Path to temp directory')
    main_parser.add_argument('--ssl', type=str, choices=('direct', 'verify'), help='Use https instead http')

    # Subparsers
    subparsers = main_parser.add_subparsers(help='Possible options list', dest='command')

    # Install script command
    install_parser = subparsers.add_parser('install', help='Do preparation tasks')

    # Show script cache
    cache_parser = subparsers.add_parser('cache', help='Operations with cache')
    cache_parser.add_argument('--show', action='store_true', help='Display cache data')
    cache_parser.add_argument('--drop', action='store_true', help='Drop cache data')

    # LLD script command
    lld_parser = subparsers.add_parser('lld', help='Do low-level discovery task')
    lld_parser.add_argument('msa', type=str, help='MSA address (DNS name or IP)')
    lld_parser.add_argument('part', type=str, help='MSA part name', choices=MSA_PARTS)

    # FULL script command
    full_parser = subparsers.add_parser('full', help='Retrieve full data from MSA')
    full_parser.add_argument('msa', type=str, help='MSA address (DNS name or IP)')
    full_parser.add_argument('part', type=str, help='MSA part name', choices=MSA_PARTS)

    # ?DELETE v0.7: HEALTH script command (Deprecated? Needn't anymore?)
    health_parser = subparsers.add_parser('health', help='Retrieve health status for one component from MSA')
    health_parser.add_argument('msa', type=str, help='MSA address (DNS name or IP)')
    health_parser.add_argument('part', type=str, help='MSA part name', choices=MSA_PARTS)
    health_parser.add_argument('pid', type=str, help='MSA part pid (e.g. "1.1" for disks)')

    args = main_parser.parse_args()

    # ?DELETE in v0.7 and correct make_lld()
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

    API_VERSION = args.api
    TMP_DIR = args.tmp_dir
    CACHE_DB = TMP_DIR.rstrip('/') + '/zbx-hpmsa.cache.db'

    if args.command in ('lld', 'full', 'health'):
        # Set some global variables
        SAVE_XML = args.save_xml
        USE_SSL = args.ssl in ('direct', 'verify')
        VERIFY_SSL = args.ssl == 'verify'
        MSA_USERNAME = args.username
        MSA_PASSWORD = args.password

        # (IP, DNS)
        IS_IP = all(elem.isdigit() for elem in args.msa.split('.'))
        MSA_CONNECT = args.msa if IS_IP else gethostbyname(args.msa), args.msa

        # Make login hash string
        if args.login_file is not None:
            CRED_HASH = make_cred_hash(args.login_file, isfile=True)
        else:
            CRED_HASH = make_cred_hash('_'.join([MSA_USERNAME, MSA_PASSWORD]))

        # Getting sessionkey
        skey = get_skey(MSA_CONNECT, CRED_HASH)

        # Make discovery
        if args.command == 'lld':
            print(make_lld(MSA_CONNECT, args.part, skey))
        # ?DELETE in v0.7: Getting health of one MSA component
        elif args.command == 'health':
            print(get_health(MSA_CONNECT, args.part, args.pid, skey))
        # Getting full components data in JSON
        elif args.command == 'full':
            print(get_full_json(MSA_CONNECT, args.part, skey))
    # Preparations tasks
    elif args.command == 'install':
        install_script(TMP_DIR, 'zabbix')
    # Operations with cache
    elif args.command == 'cache':
        if args.show:
            display_cache()
        elif args.drop:
            sql_cmd('DELETE FROM skey_cache;')
        # Default is --show
        else:
            display_cache()
        exit(0)
