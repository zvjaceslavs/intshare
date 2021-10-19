# REDIS

## Overview

Discovery rule for auto find and monitor all redis on server  
monitor:


port, status, ping, dbsize, ram ...


 


### Please Download Full and updated from GitHub ###



## Author

faridarjmand

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|REDIS|<p>-</p>|`Zabbix agent`|REDIS[json]<p>Update: 600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|REDIS[reload]|<p>-</p>|`Zabbix agent`|REDIS[reload]<p>Update: 1800</p>|
|Check Redis Port {#PORT} (LLD)|<p>-</p>|`Zabbix agent`|net.tcp.listen[{#PORT}]<p>Update: 60</p>|
|Check $5 {#REDIS} (LLD)|<p>-</p>|`Zabbix agent`|REDIS[status,{#REDIS},{#IP},{#PORT},role]<p>Update: 120</p>|
|Check Memory Usage {#REDIS} (LLD)|<p>-</p>|`Zabbix agent`|REDIS[status,{#REDIS},{#IP},{#PORT},used_memory:]<p>Update: 60</p>|
|Check $5 {#REDIS} (LLD)|<p>-</p>|`Zabbix agent`|REDIS[status,{#REDIS},{#IP},{#PORT},used_cpu_user:]<p>Update: 60</p>|
|Check $5 {#REDIS} (LLD)|<p>-</p>|`Zabbix agent`|REDIS[status,{#REDIS},{#IP},{#PORT},used_cpu_sys:]<p>Update: 60</p>|
|Check $5 {#REDIS} (LLD)|<p>-</p>|`Zabbix agent`|REDIS[status,{#REDIS},{#IP},{#PORT},uptime_in_seconds]<p>Update: 120</p>|
|Check $5 {#REDIS} (LLD)|<p>-</p>|`Zabbix agent`|REDIS[status,{#REDIS},{#IP},{#PORT},total_connections_received]<p>Update: 120</p>|
|Check $5 {#REDIS} (LLD)|<p>-</p>|`Zabbix agent`|REDIS[status,{#REDIS},{#IP},{#PORT},total_commands_processed]<p>Update: 120</p>|
|Check $5 {#REDIS} (LLD)|<p>-</p>|`Zabbix agent`|REDIS[status,{#REDIS},{#IP},{#PORT},last_save_time]<p>Update: 120</p>|
|Number of DB {#REDIS} (LLD)|<p>-</p>|`Zabbix agent`|REDIS[db,{#REDIS},{#IP},{#PORT}]<p>Update: 60</p>|
|Check $5 {#REDIS} (LLD)|<p>-</p>|`Zabbix agent`|REDIS[status,{#REDIS},{#IP},{#PORT},expired_keys]<p>Update: 120</p>|
|Check $5 {#REDIS} (LLD)|<p>-</p>|`Zabbix agent`|REDIS[status,{#REDIS},{#IP},{#PORT},evicted_keys]<p>Update: 120</p>|
|Check $5 {#REDIS} (LLD)|<p>-</p>|`Zabbix agent`|REDIS[status,{#REDIS},{#IP},{#PORT},connected_slave]<p>Update: 120</p>|
|Check $5 {#REDIS} (LLD)|<p>-</p>|`Zabbix agent`|REDIS[status,{#REDIS},{#IP},{#PORT},connected_clients]<p>Update: 120</p>|
|Check $5 {#REDIS} (LLD)|<p>-</p>|`Zabbix agent`|REDIS[status,{#REDIS},{#IP},{#PORT},blocked_clients]<p>Update: 120</p>|
|Number of DB record {#REDIS} (LLD)|<p>-</p>|`Zabbix agent`|REDIS[size,{#REDIS},{#IP},{#PORT}]<p>Update: 60</p>|
|Ping {#REDIS} ip:{#IP} port:{#PORT} (LLD)|<p>-</p>|`Zabbix agent`|REDIS[ping,{#REDIS},{#IP},{#PORT}]<p>Update: 60</p>|
|Check $5 {#REDIS} (LLD)|<p>-</p>|`Zabbix agent`|REDIS[status,{#REDIS},{#IP},{#PORT},used_memory_rss:]<p>Update: 120</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Check {#REDIS} used memory !!|<p>-</p>|<p>**Expression**: {REDIS:REDIS[status,{#REDIS},{#IP},{#PORT},used_memory:].last()}>10G</p><p>**Recovery expression**: </p>|warning|
|Number of DB has been changed ({#REDIS}) !!|<p>-</p>|<p>**Expression**: {REDIS:REDIS[db,{#REDIS},{#IP},{#PORT}].abschange()}<>0</p><p>**Recovery expression**: </p>|warning|
|Number of record has been changed ({#REDIS}) !!|<p>-</p>|<p>**Expression**: {REDIS:REDIS[size,{#REDIS},{#IP},{#PORT}].abschange()}<>0</p><p>**Recovery expression**: </p>|warning|
|Redis on Port {#PORT} was down !!|<p>-</p>|<p>**Expression**: {REDIS:net.tcp.listen[{#PORT}].last()}=0</p><p>**Recovery expression**: </p>|high|
|Redis {#REDIS} has been Restarted !!|<p>-</p>|<p>**Expression**: {REDIS:REDIS[status,{#REDIS},{#IP},{#PORT},uptime_in_seconds].last()}<200</p><p>**Recovery expression**: </p>|average|
|Redis {#REDIS} is down !!|<p>-</p>|<p>**Expression**: {REDIS:REDIS[ping,{#REDIS},{#IP},{#PORT}].str(UP)}=0</p><p>**Recovery expression**: </p>|high|
|Check {#REDIS} used memory !! (LLD)|<p>-</p>|<p>**Expression**: {REDIS:REDIS[status,{#REDIS},{#IP},{#PORT},used_memory:].last()}>10G</p><p>**Recovery expression**: </p>|warning|
|Number of DB has been changed ({#REDIS}) !! (LLD)|<p>-</p>|<p>**Expression**: {REDIS:REDIS[db,{#REDIS},{#IP},{#PORT}].abschange()}<>0</p><p>**Recovery expression**: </p>|warning|
|Number of record has been changed ({#REDIS}) !! (LLD)|<p>-</p>|<p>**Expression**: {REDIS:REDIS[size,{#REDIS},{#IP},{#PORT}].abschange()}<>0</p><p>**Recovery expression**: </p>|warning|
|Redis on Port {#PORT} was down !! (LLD)|<p>-</p>|<p>**Expression**: {REDIS:net.tcp.listen[{#PORT}].last()}=0</p><p>**Recovery expression**: </p>|high|
|Redis {#REDIS} has been Restarted !! (LLD)|<p>-</p>|<p>**Expression**: {REDIS:REDIS[status,{#REDIS},{#IP},{#PORT},uptime_in_seconds].last()}<200</p><p>**Recovery expression**: </p>|average|
|Redis {#REDIS} is down !! (LLD)|<p>-</p>|<p>**Expression**: {REDIS:REDIS[ping,{#REDIS},{#IP},{#PORT}].str(UP)}=0</p><p>**Recovery expression**: </p>|high|
