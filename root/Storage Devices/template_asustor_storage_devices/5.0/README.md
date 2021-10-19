# Template MIB Asustor

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMMUNITY}|<p>-</p>|``|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Volume Discovery|<p>-</p>|`SNMP agent`|volume.discovery<p>Update: 5m</p>|
|Disk Discovery|<p>-</p>|`SNMP agent`|disk.discovery<p>Update: 5m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|sysADMVersion|<p>-</p>|`SNMP agent`|sysADMVersion<p>Update: 5m</p>|
|hwCPUTemperature|<p>-</p>|`SNMP agent`|hwCPUTemperature<p>Update: 5m</p>|
|sysUptime|<p>-</p>|`SNMP agent`|sysUptime<p>Update: 5m</p>|
|sysSerialNumber|<p>-</p>|`SNMP agent`|sysSerialNumber<p>Update: 5m</p>|
|hwSysTemperature|<p>-</p>|`SNMP agent`|hwSysTemperature<p>Update: 5m</p>|
|hwmodelName|<p>-</p>|`SNMP agent`|hwmodelName<p>Update: 5m</p>|
|sysBiosVersion|<p>-</p>|`SNMP agent`|sysBiosVersion<p>Update: 5m</p>|
|sysUpgradeAvailable|<p>-</p>|`SNMP agent`|sysUpgradeAvailable<p>Update: 5m</p>|
|Volume {#VOLUMEINDEX} Free Size|<p>-</p>|`SNMP agent`|VolumeFreeSize[{#VOLUMEINDEX}]<p>Update: 5m</p>|
|Volume {#VOLUMEINDEX} Name|<p>-</p>|`SNMP agent`|VolumeName[{#VOLUMEINDEX}]<p>Update: 5m</p>|
|Volume {#VOLUMEINDEX} RAID|<p>-</p>|`SNMP agent`|VolumeRaid[{#VOLUMEINDEX}]<p>Update: 5m</p>|
|Volume {#VOLUMEINDEX} Status|<p>-</p>|`SNMP agent`|VolumeStatus[{#VOLUMEINDEX}]<p>Update: 5m</p>|
|Volume {#VOLUMEINDEX} Total Size|<p>-</p>|`SNMP agent`|VolumeTotalSize[{#VOLUMEINDEX}]<p>Update: 5m</p>|
|Disk {#DISKINDEX} Model|<p>-</p>|`SNMP agent`|DiskModel[{#DISKINDEX}]<p>Update: 5m</p>|
|Disk {#DISKINDEX} Status|<p>-</p>|`SNMP agent`|DiskStatus[{#DISKINDEX}]<p>Update: 5m</p>|
|Disk {#DISKINDEX} Temperature|<p>-</p>|`SNMP agent`|DiskTemperature[{#DISKINDEX}]<p>Update: 5m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Disk {#DISKINDEX} High Temperature|<p>-</p>|high|
|Disk {#DISKINDEX} Status is Bad|<p>-</p>|disaster|
|Disk {#DISKINDEX} Status is Dangerous|<p>-</p>|high|
|Disk {#DISKINDEX} Status is Risky|<p>-</p>|average|
