# Auto register an active Zabbix proxy

## Description

prxid=$(/usr/bin/curl -sk {$Z_API_PHP} -X POST -H "Content-Type: application/json" -d ' { "jsonrpc": "2.0", "method": "proxy.create", "params": { "host": "{EVENT.TAGS}", "status": "5" }, "auth": "{$Z_API_SESSIONID}", "id": 1 } ' | grep -o -E "[0-9]+{3,}") && /usr/bin/curl -sk {$Z_API_PHP} -X POST -H "Content-Type: application/json" -d " { "jsonrpc ": "2.0 ", "method ": "host.create ", "params ": { "host ": "{EVENT.TAGS} ", "interfaces ": [ { "type ": 1, "main ": 1, "useip ": 1, "ip ": "127.0.0.1 ", "dns ": " ", "port ": "10050 " } ], "groups ": [ { "groupid ": "4 " } ], "templates ": [ { "templateid ": "10048 " } ], "proxy_hostid ": "$prxid " }, "auth ": "{$Z_API_SESSIONID} ", "id ": 1 } " && /usr/sbin/zabbix_server -R config_cache_reload && /usr/bin/sleep 20 && /usr/bin/curl -sk {$Z_API_PHP} -X POST -H "Content-Type: application/json" -d ' { "jsonrpc": "2.0", "method": "event.acknowledge", "params": { "eventids": "{EVENT.ID}", "action": 1, "message": "Problem resolved." }, "auth": "{$Z_API_SESSIONID}", "id": 1 } '

## Overview

The solution is based on log file monitoring and the functionality of the Zabbix API.


<https://youtu.be/XET-138UvpY>


 


In order to use this template, it's required to run and maintain an active session-id at a global level:


[https://share.zabbix.com/zabbix-tools-and-utilities/maintain-zabbix-api-session-id-in-a-global-level](zabbix-tools-and-utilities/maintain-zabbix-api-session-id-in-a-global-level)


<https://youtu.be/MjQJ0g0AaYI>


 



## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|zabbix_server.log proxy not found|<p>-</p>|`Zabbix agent (active)`|log[/var/log/zabbix/zabbix_server.log,"cannot parse proxy data from active proxy at.*proxy.*not found",,,skip,,]<p>Update: 1s</p>|
## Triggers

There are no triggers in this template.

