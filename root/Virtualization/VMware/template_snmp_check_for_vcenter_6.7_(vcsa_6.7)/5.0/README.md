# vCenter_SNMP-VMWARE_VCSA_6.7

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$CPU_UTIL_MAX}|<p>-</p>|`90`|Text macro|
|{$SNMP_PORT}|<p>-</p>|`161`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Network|<p>-</p>|`SNMP agent`|snmp.network.discovery<p>Update: 180</p>|
|CPU|<p>-</p>|`SNMP agent`|snmp.CPU.discovery<p>Update: 3600</p>|
|File System|<p>-</p>|`SNMP agent`|snmp.filesystem.discovery<p>Update: 180</p>|
|VCSA Services|<p>-</p>|`External check`|vcsa_discovery<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Ping vCenter|<p>-</p>|`Simple check`|icmpping[,2]<p>Update: 120</p>|
|Snmp Availability|<p>-</p>|`Zabbix internal`|zabbix[host,snmp,available]<p>Update: 180</p>|
|Vcenter Name|<p>-</p>|`SNMP agent`|SNMP-NamePlateforme<p>Update: 3600</p>|
|Memory Allocation Error|<p>-</p>|`SNMP agent`|SNMP-Memory-Allocation-Error<p>Update: 180</p>|
|File System Allocation Failure|<p>Storage allocation file system</p>|`SNMP agent`|SNMP-File-System-allocation-error<p>Update: 180</p>|
|Number of Processes|<p>-</p>|`SNMP agent`|SNMP-Number-Processes<p>Update: 180</p>|
|Interface [{#SNMPVALUE}] Admin Status|<p>-</p>|`SNMP agent`|SNMP-Interface-Admin-Status.[{#SNMPVALUE}]<p>Update: 120</p>|
|Interface [{#SNMPVALUE}] Description|<p>-</p>|`SNMP agent`|SNMP-Interface-Description.[{#SNMPVALUE}]<p>Update: 1800</p>|
|Interface [{#SNMPVALUE}] IN Error|<p>-</p>|`SNMP agent`|SNMP-Interface-IN-Error.[{#SNMPVALUE}]<p>Update: 180</p>|
|Interface [{#SNMPVALUE}] Bytes received|<p>-</p>|`SNMP agent`|SNMP-Interface-IN-Octets.[{#SNMPVALUE}]<p>Update: 180</p>|
|Interface [{#SNMPVALUE}] MAC|<p>-</p>|`SNMP agent`|SNMP-Interface-MAC.[{#SNMPVALUE}]<p>Update: 1800</p>|
|Interface [{#SNMPVALUE}] Operation Status|<p>-</p>|`SNMP agent`|SNMP-Interface-Operation-Status.[{#SNMPVALUE}]<p>Update: 120</p>|
|Interface [{#SNMPVALUE}] Bytes send|<p>-</p>|`SNMP agent`|SNMP-Interface-OUT-Octets.[{#SNMPVALUE}]<p>Update: 180</p>|
|Interface [{#SNMPVALUE}] Type|<p>-</p>|`SNMP agent`|SNMP-Interface-Type.[{#SNMPVALUE}]<p>Update: 1800</p>|
|CPU {#SNMPINDEX} Utilization|<p>-</p>|`SNMP agent`|SNMP-Charge-CPU-.[{#SNMPINDEX}]<p>Update: 180</p>|
|CPU {#SNMPINDEX} Name|<p>-</p>|`SNMP agent`|SNMP-Name-CPU-.[{#SNMPINDEX}]<p>Update: 3600</p>|
|File System {#SNMPVALUE} - Used Percentage|<p>-</p>|`Calculated`|File-System-Space-Used-Percentage.[{#SNMPVALUE}]<p>Update: 180</p>|
|File System {#SNMPVALUE} - Space Allocated|<p>-</p>|`SNMP agent`|SNMP-File-System-Space-Allocated.[{#SNMPVALUE}]<p>Update: 600</p>|
|File System {#SNMPVALUE} - Space Used|<p>-</p>|`SNMP agent`|SNMP-File-System-Space-Used.[{#SNMPVALUE}]<p>Update: 180</p>|
|Process [{#VMWARESVC}] CPU Usage|<p>-</p>|`Calculated`|Process-Usage-[{#VMWARESVC}]<p>Update: 30s</p>|
|Process [{#VMWARESVC}] Memory Usage|<p>-</p>|`SNMP agent`|SNMP-Process-Memory-[{#VMWARESVC}]<p>Update: 1m</p>|
|Process [{#VMWARESVC}] CPU centi-seconds|<p>-</p>|`SNMP agent`|SNMP-Process-Perf-CPU-[{#VMWARESVC}]<p>Update: 30s</p>|
|Process [{#VMWARESVC}] Status|<p>-</p>|`SNMP agent`|SNMP-Process-Status-[{#VMWARESVC}]<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|File System Allocation Error on {HOST.HOST1}|<p>-</p>|warning|
|Memory Allocation Error on {HOST.HOST1}|<p>-</p>|warning|
|SNMP {HOST.HOST1} Unavailable|<p>-</p>|high|
|{HOST.HOST1} is unavailable by ICMP|<p>-</p>|high|
|Interface [{#SNMPVALUE}] on {HOST.HOST1} - DOWN|<p>-</p>|average|
|Interface [{#SNMPVALUE}]  on {HOST.HOST1} - DOWN|<p>-</p>|average|
|Interface [{#SNMPVALUE}]  on {HOST.HOST1} - IN Error|<p>-</p>|warning|
|High CPU {#SNMPINDEX} Utilization on {HOST.HOST1}|<p>-</p>|average|
|Free Space File System  {#SNMPVALUE}  -< 1%- on {HOST.HOST1}|<p>-</p>|high|
|Free Space File System  {#SNMPVALUE}  -< 5%- on {HOST.HOST1}|<p>-</p>|average|
|Free Space File System  {#SNMPVALUE}  -< 10%- on {HOST.HOST1}|<p>-</p>|warning|
|Service [{#VMWARESVC}] high CPU usage on {HOST.HOST1}|<p>-</p>|average|
|Service [{#VMWARESVC}] not running on {HOST.HOST1}|<p>-</p>|high|
