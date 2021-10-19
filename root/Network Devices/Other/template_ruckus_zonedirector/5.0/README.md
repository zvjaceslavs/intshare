# Template SNMP Ruckus Zonedirector

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
|ZoneDirector Eth|<p>-</p>|`SNMP agent`|ZDEthName[{#SNMPVALUE}]<p>Update: 3600</p>|
|Ruckus APs|<p>-</p>|`SNMP agent`|AP-[{#SNMPVALUE}]<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 60</p>|
|ZoneDirector MAC Adress|<p>-</p>|`SNMP agent`|ruckusZDSystemMacAddr.0<p>Update: 3600</p>|
|ZoneDirector System Model|<p>-</p>|`SNMP agent`|ruckusZDSystemModel.0<p>Update: 3600</p>|
|ZoneDirector System Name|<p>-</p>|`SNMP agent`|ruckusZDSystemName.0<p>Update: 3600</p>|
|ZoneDirector CPU Utilization|<p>-</p>|`SNMP agent`|ruckusZDSystemCPUUTIL.0<p>Update: 30</p>|
|ZoneDirector Serial Number|<p>-</p>|`SNMP agent`|ruckusZDSystemSerialNumber.0<p>Update: 3600</p>|
|ZoneDirector System Version|<p>-</p>|`SNMP agent`|ruckusZDSystemVersion.0<p>Update: 3600</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
|ZoneDirector Total Users|<p>-</p>|`SNMP agent`|ruckusZDSystemStatsAllNumSta<p>Update: 30</p>|
|ZoneDirector Total Auth Clients|<p>-</p>|`SNMP agent`|ruckusZDSystemStatsNumSta.0<p>Update: 30</p>|
|Status $1|<p>-</p>|`SNMP agent`|ruckusZDEthStatus[{#SNMPVALUE}]<p>Update: 30</p>|
|AP $1 : Auth Clients|<p>-</p>|`SNMP agent`|ruckusZDWLANAPNumSta[{#SNMPVALUE}]<p>Update: 60</p>|
|AP Status $1|<p>-</p>|`SNMP agent`|ruckusZDWLANAPStatus[{#SNMPVALUE}]<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Ping loss is too high on {HOST.NAME}|<p>-</p>|warning|
|Response time is too high on {HOST.NAME}|<p>-</p>|warning|
|{HOST.NAME} is unavailable by ICMP|<p>-</p>|average|
|Port {#SNMPVALUE} is Down|<p>-</p>|high|
|Acces Point {#SNMPVALUE} is Offline|<p>-</p>|average|
