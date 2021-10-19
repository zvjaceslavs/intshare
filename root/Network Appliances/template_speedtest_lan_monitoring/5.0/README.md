# Template App Speedtest LAN

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
|Discovery LAN Server|<p>-</p>|`Zabbix agent`|speedtest-lan.discovery<p>Update: 500s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Speedtest {#IPERFNAME} - Download|<p>-</p>|`Zabbix agent`|speedtest-lan.download.server[{#IPERFID}]<p>Update: 600s</p>|
|Speedtest {#IPERFNAME} - Ping|<p>-</p>|`Zabbix agent`|speedtest-lan.ping.server[{#IPERFID}]<p>Update: 600s</p>|
|Speedtest {#IPERFNAME} - Upload|<p>-</p>|`Zabbix agent`|speedtest-lan.upload.server[{#IPERFID}]<p>Update: 600s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOST.HOST} Download {#IPERFNAME} speed < {#IPERF_TR_DL}Mb/s|<p>-</p>|warning|
|{HOST.HOST} Upload {#IPERFNAME} speed < {#IPERF_TR_UL}Mb/s|<p>-</p>|warning|
