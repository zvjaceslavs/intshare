#!/usr/bin/env python
import sys
from zabbix.api import ZabbixAPI

try:
    zapi = ZabbixAPI(url="http://localhost/master/api_jsonrpc.php",
                     user="Admin",
                     password="zabbix")
except:
    sys.exit('Zabbix API is not ready...')
else:
    zapi.do_request('user.logout')
