#!/usr/bin/env python
import sys
import time
from zabbix.api import ZabbixAPI

for x in range(20):
    try:
        zapi = ZabbixAPI(url="http://localhost:8050/api_jsonrpc.php",
                         user="Admin",
                         password="zabbix")
    except:
        print('Zabbix API is not ready...')
        time.sleep(5)
    else:
        zapi.do_request('user.logout')
        break;
else:
  sys.exit('Failed to wait for Zabbix API to be ready')
