# Template App Speedtest WAN

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Discovery ISP Server|<p>-</p>|`Zabbix agent`|speedtest.discovery<p>Update: 500s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Speedtest Best server - Download|<p>-</p>|`Zabbix agent`|speedtest.download<p>Update: 1200s</p>|
|Speedtest Best server - Ping|<p>-</p>|`Zabbix agent`|speedtest.ping<p>Update: 1200s</p>|
|Speedtest Best server - Upload|<p>-</p>|`Zabbix agent`|speedtest.upload<p>Update: 1200s</p>|
|Speedtest {#SERVERNAME} - Download|<p>-</p>|`Zabbix agent`|speedtest.download.server[{#SERVERID}]<p>Update: 1200s</p>|
|Speedtest {#SERVERNAME} - Ping|<p>-</p>|`Zabbix agent`|speedtest.ping.server[{#SERVERID}]<p>Update: 1200s</p>|
|Speedtest {#SERVERNAME} - Upload|<p>-</p>|`Zabbix agent`|speedtest.upload.server[{#SERVERID}]<p>Update: 1200s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOST.HOST} Download best server speed < 6Mb/s|<p>-</p>|warning|
|{HOST.HOST} Upload best server speed < 0.2Mb/s|<p>-</p>|warning|
|{HOST.HOST} Download {#SERVERNAME} speed < {#SERVER_TR_DL}Mb/s|<p>-</p>|warning|
|{HOST.HOST} Upload {#SERVERNAME} speed < {#SERVER_TR_UL}Mb/s|<p>-</p>|warning|
