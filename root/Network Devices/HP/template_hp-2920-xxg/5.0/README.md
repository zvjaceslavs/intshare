# HP Procurve 2920

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
|Interfaces|<p>-</p>|`SNMP agent`|ifDescr<p>Update: 120</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|SysContact|<p>-</p>|`SNMP agent`|SysContact<p>Update: 30</p>|
|System Memory Free left|<p>-</p>|`SNMP agent`|sysMemFreeLeft<p>Update: 20</p>|
|ColdStart detected|<p>-</p>|`SNMP trap`|snmptrap[^.*coldStart.*]<p>Update: 0</p>|
|Fan Status|<p>-</p>|`SNMP agent`|FAN-Status<p>Update: 80</p>|
|SysLocation|<p>-</p>|`SNMP agent`|SysLocation<p>Update: 30</p>|
|HP: Serial Number|<p>-</p>|`SNMP agent`|hpHttpMgSerialNumber<p>Update: 300</p>|
|Interface status change|<p>-</p>|`SNMP trap`|snmptrap[@netIF_OperStatChange]<p>Update: 0</p>|
|HP: Base MAC|<p>-</p>|`SNMP agent`|hpBaseMac<p>Update: 300</p>|
|HP: Switch Os Version|<p>-</p>|`SNMP agent`|hpSwitchOsVersion<p>Update: 300</p>|
|SNMP Trap Events|<p>-</p>|`SNMP trap`|snmptrap.fallback<p>Update: 0</p>|
|ping|<p>-</p>|`Simple check`|icmpping<p>Update: 30</p>|
|SysName|<p>-</p>|`SNMP agent`|SysName<p>Update: 30</p>|
|HP: CPU utilization|<p>-</p>|`SNMP agent`|hpSwitchCpuStat<p>Update: 60</p>|
|SysUptime|<p>-</p>|`SNMP agent`|SysUptime<p>Update: 30</p>|
|HP: Switch Type|<p>-</p>|`SNMP agent`|hpSwitchType<p>Update: 300</p>|
|Admin status of interface $1|<p>-</p>|`SNMP agent`|ifAdminStatus[{#SNMPVALUE}]<p>Update: 30</p>|
|Alias of interface $1|<p>-</p>|`SNMP agent`|ifAlias[{#SNMPVALUE}]<p>Update: 3600</p>|
|Description of interface $1|<p>-</p>|`SNMP agent`|ifDescr[{#SNMPVALUE}]<p>Update: 3600</p>|
|Incoming traffic on interface $1|<p>-</p>|`SNMP agent`|ifInOctets[{#SNMPVALUE}]<p>Update: 30</p>|
|Operational status of interface $1|<p>-</p>|`SNMP agent`|ifOperStatus[{#SNMPVALUE}]<p>Update: 30</p>|
|Outgoing traffic on interface $1|<p>-</p>|`SNMP agent`|ifOutOctets[{#SNMPVALUE}]<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|95% CPU on {HOSTNAME}|<p>-</p>|high|
|Coldstart detected|<p>-</p>|information|
|FAN status changed on {HOSTNAME}|<p>-</p>|disaster|
|Low memory|<p>-</p>|warning|
|{HOSTNAME} Has been restarted|<p>-</p>|information|
|{HOSTNAME} Unreachable|<p>-</p>|disaster|
