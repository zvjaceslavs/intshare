# SNMP ReadyNas

## Overview

NEED in Macros HOST


{$SNMP\_COMMUNITY}


{$SNMP\_PORT}


 


Modified for ReadyNas 2120 zabbix 2.2


Restart trigger added


Small mistakes corrected



## Author

Bonardi & Jeffrey H. Simonson

## Macros used

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
|fanRPM|<p>-</p>|`SNMP agent`|fanRPM<p>Update: 30</p>|
|System uptime|<p>-</p>|`SNMP agent`|sysUptime<p>Update: 30</p>|
|Firmware|<p>-</p>|`SNMP agent`|nasMgrSoftwareVersion.0<p>Update: 30</p>|
|Temperature|<p>-</p>|`SNMP agent`|temperatureValue.1<p>Update: 30</p>|
|fanStatus|<p>-</p>|`SNMP agent`|fanStatus<p>Update: 30</p>|
|S/N|<p>-</p>|`SNMP agent`|nasMgrSerialNUM.0<p>Update: 30</p>|
|[{#SNMPVALUE}]_VolumeFreeSpace|<p>-</p>|`SNMP agent`|volumeFreeSpace[{#SNMPVALUE}]<p>Update: 30</p><p>LLD</p>|
|[{#SNMPVALUE}]_VolumeName|<p>-</p>|`SNMP agent`|volumeName[{#SNMPVALUE}]<p>Update: 30</p><p>LLD</p>|
|[{#SNMPVALUE}]_volumeRAIDLevel|<p>-</p>|`SNMP agent`|volumeRAIDLevel[{#SNMPVALUE}]<p>Update: 30</p><p>LLD</p>|
|[{#SNMPVALUE}]_VolumeSize|<p>-</p>|`SNMP agent`|volumeSize[{#SNMPVALUE}]<p>Update: 30</p><p>LLD</p>|
|[{#SNMPVALUE}]_VolumeStatus|<p>-</p>|`SNMP agent`|volumeStatus[{#SNMPVALUE}]<p>Update: 30</p><p>LLD</p>|
|[{#SNMPVALUE}]_DiskCapacity|<p>-</p>|`SNMP agent`|DiskCapacity[{#SNMPVALUE}]<p>Update: 30</p><p>LLD</p>|
|[{#SNMPVALUE}]_DiskModel|<p>-</p>|`SNMP agent`|DiskModel[{#SNMPVALUE}]<p>Update: 30</p><p>LLD</p>|
|[{#SNMPVALUE}]_DiskSerial|<p>-</p>|`SNMP agent`|DiskSerial[{#SNMPVALUE}]<p>Update: 30</p><p>LLD</p>|
|[{#SNMPVALUE}]_DiskState|<p>-</p>|`SNMP agent`|DiskState[{#SNMPVALUE}]<p>Update: 30</p><p>LLD</p>|
|[{#SNMPVALUE}]_DiskTemperature|<p>-</p>|`SNMP agent`|DiskTemperature[{#SNMPVALUE}]<p>Update: 30</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Disk [{#SNMPVALUE}] on {HOST.NAME} is Offline|<p>-</p>|<p>**Expression**: {SNMP ReadyNas:DiskState[{#SNMPVALUE}].regexp("(Offline)")}=1</p><p>**Recovery expression**: </p>|disaster|
|Temperature Disk [{#SNMPVALUE}] is High on {HOST.NAME}|<p>-</p>|<p>**Expression**: {SNMP ReadyNas:DiskTemperature[{#SNMPVALUE}].last(0)}>45</p><p>**Recovery expression**: </p>|high|
|Raid [{#SNMPVALUE}] on {HOST.NAME} - Problem|<p>-</p>|<p>**Expression**: {SNMP ReadyNas:volumeStatus[{#SNMPVALUE}].regexp("(UNPROTECTED|DEGRADED|DEAD|INACTIVE|UNKNOW)")}=1</p><p>**Recovery expression**: </p>|disaster|
|Volume {#SNMPVALUE} - FreeSpace is less than 10% on {HOST.NAME}|<p>-</p>|<p>**Expression**: ({SNMP ReadyNas:volumeFreeSpace[{#SNMPVALUE}].last()} / {SNMP ReadyNas:volumeSize[{#SNMPVALUE}].last()} * 100) < 10</p><p>**Recovery expression**: </p>|high|
|Raid [{#SNMPVALUE}] on {HOST.NAME} - Problem (LLD)|<p>-</p>|<p>**Expression**: {SNMP ReadyNas:volumeStatus[{#SNMPVALUE}].regexp("(UNPROTECTED|DEGRADED|DEAD|INACTIVE|UNKNOW)")}=1</p><p>**Recovery expression**: </p>|disaster|
|Volume {#SNMPVALUE} - FreeSpace is less than 10% on {HOST.NAME} (LLD)|<p>-</p>|<p>**Expression**: ({SNMP ReadyNas:volumeFreeSpace[{#SNMPVALUE}].last()} / {SNMP ReadyNas:volumeSize[{#SNMPVALUE}].last()} * 100) < 10</p><p>**Recovery expression**: </p>|high|
|Disk [{#SNMPVALUE}] on {HOST.NAME} is Offline (LLD)|<p>-</p>|<p>**Expression**: {SNMP ReadyNas:DiskState[{#SNMPVALUE}].regexp("(Offline)")}=1</p><p>**Recovery expression**: </p>|disaster|
|Temperature Disk [{#SNMPVALUE}] is High on {HOST.NAME} (LLD)|<p>-</p>|<p>**Expression**: {SNMP ReadyNas:DiskTemperature[{#SNMPVALUE}].last(0)}>45</p><p>**Recovery expression**: </p>|high|
