# Dahua Video Camera

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

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Dahua - System VERSION|<p>-</p>|`SNMP agent`|systemVersion.0<p>Update: 8h</p>|
|Dahua - MAC Adress|<p>-</p>|`SNMP agent`|macAddr.0<p>Update: 8h</p>|
|Device uptime|<p>MIB: SNMPv2-MIB The time (in hundredths of a second) since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|systeme.uptime[sysUpTime]<p>Update: 5m</p>|
|Dahua - IP Adress|<p>-</p>|`SNMP agent`|ipAddr.0<p>Update: 8h</p>|
|Dahua - Device TYPE|<p>-</p>|`SNMP agent`|deviceType.0<p>Update: 8h</p>|
|Dahua - Serial NUMBER|<p>-</p>|`SNMP agent`|serialNumber.0<p>Update: 8h</p>|
|Dahua - CPU Usage|<p>-</p>|`SNMP agent`|cpuUsage.0<p>Update: 30s</p>|
|Dahua - Machine NAME|<p>-</p>|`SNMP agent`|machineName.0<p>Update: 8h</p>|
|Dahua - Device CLASS|<p>-</p>|`SNMP agent`|deviceClass.0<p>Update: 8h</p>|
## Triggers

There are no triggers in this template.

