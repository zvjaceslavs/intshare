#!/usr/bin/env python3

import os
import grp
import requests
from argparse import ArgumentParser
from configparser import RawConfigParser


def install_script(conf_dir, group):
    """
    Function copies script and config files to needed directories

    :param conf_dir: Path to config directory to create
    :type: str
    :param group: Group name to set chown root:group to config directory
    :type: str
    :return: True or False
    :rtype: bool
    """

    conf_file = conf_dir + '/zbx-rc.conf'
    try:
        # Create config directory and assign rights
        if not os.path.exists(conf_dir):
            # Create new config file
            cfg = RawConfigParser()
            cfg.add_section('RCHAT')
            cfg.set('RCHAT', 'protocol', 'http')
            cfg.set('RCHAT', 'server', '10.0.0.1')
            cfg.set('RCHAT', 'port', '3000')
            cfg.set('RCHAT', 'uid', '')
            cfg.set('RCHAT', 'token', '')

            # Create directory
            os.mkdir(conf_dir, mode=0o655)

            # Write file to disk
            with open(conf_file, 'w') as file:
                cfg.write(file)
                os.chmod(conf_file, 0o640)
            try:
                os.chown(conf_dir, 0, grp.getgrnam(group).gr_gid)
            except KeyError:
                print('WARNING: Cannot find group "{}" to set rights to "{}". Using "root".'.format(group, conf_dir))
                os.chown(conf_dir, 0, 0)
    except PermissionError:
        raise SystemExit('PERMISSION ERROR: You have no permissions to create "{}" directory.'.format(conf_dir))


def read_config(path):
    """
    Function read config file and returns RawConfigParser object.

    :param path: Path to config file
    :type: str
    :return: configparser.RawConfigParser object
    :rtype: configparser.RawConfigParser
    """

    cfg = RawConfigParser()

    if os.path.exists(path):
        try:
            with open(path, 'r') as file:
                file.read()
                cfg.read(path)
                return cfg
        except PermissionError:
            raise SystemExit('ERROR: Cannot read config file "{}".'.format(path))
    else:
        raise SystemExit('ERROR: Cannot find "{}" file.'.format(path))


def update_config(path, section, values):
    """
    Function to update config file.

    :param path: Path to config file
    :type: str
    :param section: Config section
    :type: str
    :param values: Dict with new values
    :type: dict
    :return: True or False
    :rtype: bool
    """

    cfg = RawConfigParser()

    if os.path.exists(path):
        cfg.read(path)
        for opt, val in values.items():
            cfg.set(section, opt, val)
        try:
            with open(path, 'w') as config_file:
                cfg.write(config_file)
                return True
        except PermissionError:
            return False


def get_auth(url, login, password):
    """
    Function get authentication token and user ID from Rocket.Chat.

    :param url: Rocket.Chat API login URL
    :type: str
    :param login: Rocket.Chat user login
    :type: str
    :param password: Rocket.Chat user password
    :type: str
    :return: tuple with userID and authToken
    :rtype: tuple
    """

    try:
        headers = {'Content-Type': 'application/json'}
        timeout = (1, 3)
        resp = requests.post(url, headers=headers, json={'username': login, 'password': password}, timeout=timeout)

        resp_json = resp.json()

        if resp_json['status'] == 'success':
            return resp_json['data']['userId'], resp_json['data']['authToken']
        else:
            return resp_json['status'], resp_json['error']
    except requests.exceptions.SSLError:
        raise SystemExit('ERROR: Cannot verify SSL Certificate.')
    except requests.exceptions.ConnectTimeout:
        raise SystemExit('ERROR: Cannot connect to Rocket.Chat API - connection timeout')
    except requests.exceptions.ConnectionError as e:
        raise SystemExit("ERROR: Cannot connect to Rocket.Chat API {}.".format(e))


def send_message(url, uid, token, to, msg, subj):
    """
    Function send message to Rocket.Chat.

    :param url: Rocket.Chat API url for sending message
    :type: str
    :param uid: Rocket.Chat user ID who sending message
    :type: str
    :param token: Authentication token for sending user
    :type: str
    :param to: Message recipient - user or channel
    :type: str
    :param msg: Message text
    :type: str
    :param subj: Message subject
    :type: str
    :return: True or False
    :rtype: bool
    """

    if DEBUG:
        print("Sending message:\n"
              "\tSending API URL: {}\n"
              "\tRecipient name: {}\n"
              "\tSending subject: {}\n"
              "\tSending message: {}\n".format(url, to, subj, msg))

    if to[0] not in ('@', '#'):
        raise SystemExit('ERROR: Recipient name must stars with "@" or "#" symbol.')

    try:
        timeout = (1, 3)
        headers = {'X-Auth-Token': token, 'X-User-Id': uid, 'Content-Type': 'application/json'}
        text_data = "*{}*\n{}".format(subj, msg)
        # Make request
        resp = requests.post(url, json={'channel': to, 'text': text_data}, headers=headers, timeout=timeout)
        # Debug
        if DEBUG:
            print('Result: {}'.format(resp.text))
    except requests.exceptions.SSLError:
        raise SystemExit('ERROR: Cannot verify SSL Certificate.')
    except requests.exceptions.ConnectTimeout:
        raise SystemExit('ERROR: Cannot connect to Rocket.Chat API - connection timeout')
    except requests.exceptions.ConnectionError as e:
        raise SystemExit("ERROR: Cannot connect to Rocket.Chat API {}.".format(e))


if __name__ == '__main__':
    # Current program version
    VERSION = '0.1alpha3'

    # Build parsers
    main_parser = ArgumentParser(description='Send messages from Zabbix to Rocket.Chat', add_help=True)
    # Main parser
    main_parser.add_argument('-v', '--version', action='version', version=VERSION, help='Print version number and exit')
    main_parser.add_argument('-c', '--config', type=str, default='/etc/zbx-rc/zbx-rc.conf', help='Path to config file')
    main_parser.add_argument('--debug', action='store_true', help='Enable debug mode')

    # Subparsers
    subparsers = main_parser.add_subparsers(help='List of options', dest='command')
    # Authentication to Rocket.Chat
    auth_parser = subparsers.add_parser('auth', help='Authenticate to Rocket.Chat')
    auth_parser.add_argument('-u', '--username', type=str, help='Rocket.Chat username')
    auth_parser.add_argument('-p', '--password', type=str, help='Rocket.Chat password')
    auth_parser.add_argument('--update', action='store_true', help='Update current config file')
    # Send message
    send_parser = subparsers.add_parser('send', help='Send message to Rocket.Chat')
    send_parser.add_argument('to', type=str, help='Message recipient')
    send_parser.add_argument('subject', type=str, help='Message subject')
    send_parser.add_argument('message', type=str, help='Message body text')
    # Install script
    install_parser = subparsers.add_parser('install', help='Prepare script to work')
    install_parser.add_argument('-c', '--conf-dir', type=str, default='/etc/zbx-rc', help='Directory for script config')
    install_parser.add_argument('-g', '--group', type=str, default='zabbix', help='System group owning config')
    # Parse args
    args = main_parser.parse_args()

    # Debug mode marker
    DEBUG = args.debug

    # Empty argumants
    if args.command is None:
        main_parser.print_help()

    # Install
    if args.command == 'install':
        c_dir = args.conf_dir.rstrip('/')
        c_file = c_dir + '/zbx-rc.conf'
        install_script(c_dir, args.group)
        print('INFO: Script installed successfully. Please, correct {} file for your environment.'.format(c_file))
        SystemExit(0)

    if args.command in ('auth', 'send'):
        # Reading config file
        config = read_config(args.config)

        # Rocket.Chat API connection info
        RC_PROTO = config.get('RCHAT', 'protocol', fallback='http')
        RC_SERVER = config.get('RCHAT', 'server', fallback='localhost')
        RC_PORT = config.get('RCHAT', 'port', fallback='3000')
        # Auth info from config
        RC_UID = config.get('RCHAT', 'uid')
        RC_TOKEN = config.get('RCHAT', 'token')

        API_URL = "{proto}://{server}:{port}/api/v1/".format(proto=RC_PROTO, server=RC_SERVER, port=RC_PORT)

        if DEBUG:
            print("Config file:\n\tUID: {}\n\tToken: {}\n\tAPI URL: {}\n".format(RC_UID, RC_TOKEN, API_URL))

        # Auth
        if args.command == 'auth':
            auth_data = get_auth(API_URL + 'login', args.username, args.password)
            if args.update:
                values_to_update = {'uid': auth_data[0], 'token': auth_data[1]}
                update_config(args.config, 'RCHAT', values_to_update)
            else:
                print("id:\t'{}'\ntoken:\t'{}'".format(auth_data[0], auth_data[1]))

        # Send message to chat
        if args.command == 'send':
            send_message(API_URL + 'chat.postMessage', RC_UID, RC_TOKEN, to=args.to, msg=args.message,
                         subj=args.subject)
