# Template SNMP ReadyNas

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
|Temperature|<p>-</p>|`SNMP agent`|temperatureValue.1<p>Update: 30</p>|
|Firmware|<p>-</p>|`SNMP agent`|nasMgrSoftwareVersion.0<p>Update: 30</p>|
|S/N|<p>-</p>|`SNMP agent`|nasMgrSerialNUM.0<p>Update: 30</p>|
|fanRPM|<p>-</p>|`SNMP agent`|fanRPM<p>Update: 30</p>|
|System uptime|<p>-</p>|`SNMP agent`|sysUptime<p>Update: 30</p>|
|fanStatus|<p>-</p>|`SNMP agent`|fanStatus<p>Update: 30</p>|
|[{#SNMPVALUE}]_VolumeFreeSpace|<p>-</p>|`SNMP agent`|volumeFreeSpace[{#SNMPVALUE}]<p>Update: 30</p>|
|[{#SNMPVALUE}]_VolumeName|<p>-</p>|`SNMP agent`|volumeName[{#SNMPVALUE}]<p>Update: 30</p>|
|[{#SNMPVALUE}]_volumeRAIDLevel|<p>-</p>|`SNMP agent`|volumeRAIDLevel[{#SNMPVALUE}]<p>Update: 30</p>|
|[{#SNMPVALUE}]_VolumeSize|<p>-</p>|`SNMP agent`|volumeSize[{#SNMPVALUE}]<p>Update: 30</p>|
|[{#SNMPVALUE}]_VolumeStatus|<p>-</p>|`SNMP agent`|volumeStatus[{#SNMPVALUE}]<p>Update: 30</p>|
|[{#SNMPVALUE}]_DiskCapacity|<p>-</p>|`SNMP agent`|DiskCapacity[{#SNMPVALUE}]<p>Update: 30</p>|
|[{#SNMPVALUE}]_DiskModel|<p>-</p>|`SNMP agent`|DiskModel[{#SNMPVALUE}]<p>Update: 30</p>|
|[{#SNMPVALUE}]_DiskSerial|<p>-</p>|`SNMP agent`|DiskSerial[{#SNMPVALUE}]<p>Update: 30</p>|
|[{#SNMPVALUE}]_DiskState|<p>-</p>|`SNMP agent`|DiskState[{#SNMPVALUE}]<p>Update: 30</p>|
|[{#SNMPVALUE}]_DiskTemperature|<p>-</p>|`SNMP agent`|DiskTemperature[{#SNMPVALUE}]<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Fan is not OK on {HOST.NAME}|<p>-</p>|disaster|
|Fan is too slow on {HOST.NAME}|<p>-</p>|disaster|
|Temperature CPU is High on {HOST.NAME}|<p>-</p>|disaster|
|{HOST.NAME} has just been restarted|<p>-</p>|high|
|Raid [{#SNMPVALUE}] on {HOST.NAME} - Problem|<p>-</p>|disaster|
|Volume {#SNMPVALUE} - FreeSpace is less than 10% on {HOST.NAME}|<p>-</p>|high|
|Disk [{#SNMPVALUE}] on {HOST.NAME} is Offline|<p>-</p>|disaster|
|Temperature Disk [{#SNMPVALUE}] is High on {HOST.NAME}|<p>-</p>|high|
