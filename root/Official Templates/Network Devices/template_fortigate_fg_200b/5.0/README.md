# FG_200B

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
|Interfaces|<p>-</p>|`SNMP agent`|ifname<p>Update: 30s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|CPU|<p>-</p>|`SNMP agent`|sysCpu<p>Update: 1m</p>|
|Firmware Version|<p>-</p>|`SNMP agent`|SysmFirmwareVersion<p>Update: 3600</p>|
|Memory Usage|<p>-</p>|`SNMP agent`|sysMemUsage<p>Update: 1m</p>|
|Connections|<p>-</p>|`SNMP agent`|fortinetCurrentConnections<p>Update: 60</p>|
|Uptime|<p>-</p>|`SNMP agent`|fortinetUpTime<p>Update: 30</p>|
|System Sessions|<p>-</p>|`SNMP agent`|sysSessions<p>Update: 30s</p>|
|Serial Number|<p>-</p>|`SNMP agent`|SysmSerialNumber<p>Update: 3600</p>|
|Status {#SNMPVALUE}|<p>-</p>|`SNMP agent`|.1.3.6.1.2.1.2.2.1.8.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Interface Description {#SNMPVALUE}|<p>-</p>|`SNMP agent`|ifDescr[{#SNMPVALUE}]<p>Update: 30s</p>|
|Download {#SNMPVALUE}|<p>-</p>|`SNMP agent`|ifInOctets[{#SNMPVALUE}]<p>Update: 30s</p>|
|Upload $1|<p>-</p>|`SNMP agent`|ifOutOctets[{#SNMPVALUE}]<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Interface {#SNMPVALUE} Down|<p>-</p>|disaster|
