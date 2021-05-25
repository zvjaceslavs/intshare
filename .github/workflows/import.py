#!/usr/bin/env python
import sys
import os
import json
import argparse
from zabbix.api import ZabbixAPI
from pyzabbix.api import ZabbixAPIException

parser = argparse.ArgumentParser()
parser.add_argument(dest='arg1', nargs=1)
args = parser.parse_args()

def import_template(zapi, filename):
    print('Importing template "{}"...'.format(filename))
    
    with open(filename, 'r') as file:
        contents = file.read()

    data = """
    {
        "format": "yaml",
        "rules": {
            "groups": {
                "createMissing": true
            },
            "hosts": {
                "createMissing": true,
                "updateExisting": true
            },
            "templates": {
                "createMissing": true,
                "updateExisting": true
            },
            "templateLinkage": {
                "createMissing": true
            },
            "templateDashboards": {
                "createMissing": true,
                "updateExisting": true,
                "deleteMissing": true
            },
            "discoveryRules": {
                "createMissing": true,
                "updateExisting": true,
                "deleteMissing": true
            },
            "items": {
                "createMissing": true,
                "updateExisting": true,
                "deleteMissing": true
            },
            "triggers": {
                "createMissing": true,
                "updateExisting": true,
                "deleteMissing": true
            },
            "graphs": {
                "createMissing": true,
                "updateExisting": true,
                "deleteMissing": true
            },
            "maps": {
                "createMissing": true,
                "updateExisting": true
            },
            "images": {
                "createMissing": true,
                "updateExisting": true
            },
            "valueMaps": {
                "createMissing": true,
                "updateExisting": true
            }
        },
        "source": ""
        }
    """
    params = json.loads(data)
    params['source'] = contents

    try:
        zapi.do_request('configuration.import', params)
    except ZabbixAPIException as error:
        sys.exit(error.data)

try:
    zapi = ZabbixAPI(url="http://localhost/master/api_jsonrpc.php",
                     user="Admin",
                     password="zabbix")
except ZabbixAPIException as error:
    sys.exit(error.data)
else:
    import_template(zapi, args.arg1[0])
    zapi.do_request('user.logout')
