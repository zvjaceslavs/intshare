# Template SNMP ReadyNas 3200

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
|Discovery_Volume|<p>-</p>|`SNMP agent`|Volume<p>Update: 600</p>|
|Discovery_Disk|<p>-</p>|`SNMP agent`|Disk<p>Update: 600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Sys temp|<p>CPU temp</p>|`SNMP agent`|systemp<p>Update: 30</p>|
|Sys1FAN_RPM|<p>-</p>|`SNMP agent`|sys1_fan_RPM<p>Update: 30</p>|
|CPU temp|<p>CPU temp</p>|`SNMP agent`|cputemp<p>Update: 30</p>|
|CPUFAN_RPM|<p>-</p>|`SNMP agent`|cpu_fan_RPM<p>Update: 30</p>|
|Sys3FAN_RPM|<p>-</p>|`SNMP agent`|sys3_fan_RPM<p>Update: 30</p>|
|Firmware version|<p>-</p>|`SNMP agent`|nasMgrSoftwareVersion<p>Update: 30</p>|
|System uptime|<p>-</p>|`SNMP agent`|sysUptime<p>Update: 30</p>|
|Sys2FAN_RPM|<p>-</p>|`SNMP agent`|sys2_fan_RPM<p>Update: 30</p>|
|[{#SNMPVALUE}]_VolumeFreeSpace|<p>-</p>|`SNMP agent`|volumeFreeSpace[{#SNMPVALUE}]<p>Update: 30</p>|
|[{#SNMPVALUE}]_VolumeName|<p>-</p>|`SNMP agent`|volumeName[{#SNMPVALUE}]<p>Update: 30</p>|
|[{#SNMPVALUE}]_volumeRAIDLevel|<p>-</p>|`SNMP agent`|volumeRAIDLevel[{#SNMPVALUE}]<p>Update: 30</p>|
|[{#SNMPVALUE}]_VolumeSize|<p>-</p>|`SNMP agent`|volumeSize[{#SNMPVALUE}]<p>Update: 30</p>|
|[{#SNMPVALUE}]_VolumeStatus|<p>-</p>|`SNMP agent`|volumeStatus[{#SNMPVALUE}]<p>Update: 30</p>|
|[{#SNMPVALUE}]_DiskInfo|<p>-</p>|`SNMP agent`|DiskInfo[{#SNMPVALUE}]<p>Update: 30</p>|
|[{#SNMPVALUE}]_DiskState|<p>-</p>|`SNMP agent`|DiskState[{#SNMPVALUE}]<p>Update: 30</p>|
|[{#SNMPVALUE}]_DiskTemperature|<p>-</p>|`SNMP agent`|DiskTemperature[{#SNMPVALUE}]<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|CPU temperature is High on {HOST.NAME}|<p>-</p>|disaster|
|Fan is too slow on {HOST.NAME}|<p>-</p>|disaster|
|Sys temperature is High on {HOST.NAME}|<p>-</p>|disaster|
|{HOST.NAME} has just been restarted|<p>-</p>|high|
|Volume[{#SNMPVALUE}] on {HOST.NAME} is not ok|<p>-</p>|disaster|
|Volume {#SNMPVALUE} - FreeSpace is less than 10% on {HOST.NAME}|<p>-</p>|high|
|Disk [{#SNMPVALUE}] on {HOST.NAME} is not ok|<p>-</p>|disaster|
|Temperature Disk [{#SNMPVALUE}] is High on {HOST.NAME}|<p>Disk temp is more than 50C</p>|high|
