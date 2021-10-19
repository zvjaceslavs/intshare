# Template Fortigate 100D

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
|Unit Hostname|<p>-</p>|`SNMP agent`|fgStatsHostName<p>Update: 300</p>|
|Serial Number|<p>-</p>|`SNMP agent`|fgStatsSerial<p>Update: 300</p>|
|CPU Usage|<p>-</p>|`SNMP agent`|fgStatsCpuUsage<p>Update: 300</p>|
|Network Interfaces|<p>-</p>|`SNMP agent`|ifname<p>Update: 300</p>|
|Memory Usage|<p>-</p>|`SNMP agent`|fgStatsMemUsage<p>Update: 300</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|System Contact|<p>-</p>|`SNMP agent`|sysContact<p>Update: 30s</p>|
|System Name|<p>-</p>|`SNMP agent`|sysName<p>Update: 30s</p>|
|HA Mode|<p>-</p>|`SNMP agent`|fgHaSystemMode<p>Update: 30s</p>|
|System Uptime|<p>-</p>|`SNMP agent`|sysUpTime<p>Update: 30s</p>|
|HA Auto Sync|<p>-</p>|`SNMP agent`|fgHaAutoSync<p>Update: 30s</p>|
|Unit $1 Hostname|<p>-</p>|`SNMP agent`|fgStatsHostName.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Unit $1 Serial Number|<p>-</p>|`SNMP agent`|fgStatsSerial.[{#SNMPINDEX}]<p>Update: 30s</p>|
|CPU $1 Usage|<p>-</p>|`SNMP agent`|fgStatsCpuUsage.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Upload $1|<p>-</p>|`SNMP agent`|ifHCOutOctets[{#SNMPVALUE}]<p>Update: 5</p>|
|Speed $1|<p>-</p>|`SNMP agent`|ifHighSpeed[{#SNMPVALUE}]<p>Update: 300</p>|
|Download $1|<p>-</p>|`SNMP agent`|ifInOctets[{#SNMPVALUE}]<p>Update: 5</p>|
|Memory Usage $1|<p>-</p>|`SNMP agent`|fgStatsMemUsage.[{#SNMPINDEX}]<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|CPU {#SNMPINDEX} Load is High|<p>-</p>|average|
|Memory {#SNMPINDEX} use is High|<p>-</p>|average|
