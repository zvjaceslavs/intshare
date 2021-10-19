# Template SNMP ReadyNAS Tega

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$FREE_SPACE_PERCENT_TSRNT}|<p>-</p>|`10`|Text macro|
|{$FREE_SPACE_TB_TSRNT}|<p>-</p>|`0.005`|Text macro|
|{$NO_DATA_SNMP_TIMEOUT_TSRNT}|<p>-</p>|`4h`|Text macro|
|{$SNMP_COMMUNITY_TEGA}|<p>-</p>|`public`|Text macro|
|{$TEMPERATURE_DISK_C_HIGH_TSRNT}|<p>-</p>|`75`|Text macro|
|{$TEMPERATURE_DISK_C_TSRNT}|<p>-</p>|`50`|Text macro|
|{$TSNMPGT_NODATA}|<p>-</p>|`240m`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Disks discovery|<p>HDD discovery in the device</p>|`SNMP agent`|diskNumber<p>Update: 3600</p>|
|Volumes discovery|<p>-</p>|`SNMP agent`|volumeNumber<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|nasMgrSoftwareVersion|<p>Software version</p>|`SNMP agent`|nasMgrSoftwareVersion<p>Update: 3600</p>|
|sysDescr|<p>-</p>|`SNMP agent`|sysDescr<p>Update: 7200</p>|
|sysUpTime|<p>-</p>|`SNMP agent`|sysUpTime<p>Update: 300</p>|
|sysName|<p>-</p>|`SNMP agent`|sysName<p>Update: 7200</p>|
|Disk $1 model|<p>-</p>|`SNMP agent`|diskmodel[{#DISKNUMBER}]<p>Update: 3600</p>|
|Disk $1 status digital|<p>The disk status in digital format. "1" the disk is status "ok"</p>|`Calculated`|diskstatusn[{#DISKNUMBER}]<p>Update: 3600</p>|
|Disk $1 status|<p>-</p>|`SNMP agent`|diskstatus[{#DISKNUMBER}]<p>Update: 3600</p>|
|Disk $1 temperature|<p>The data received from the device. Original data are obtained in Fahrenheit.</p>|`SNMP agent`|disktemperature[{#DISKNUMBER}]<p>Update: 3600</p>|
|Disk $1 temperature celsius|<p>Conversion of Fahrenheit in celsius</p>|`Calculated`|disktemperature_c[{#DISKNUMBER}]<p>Update: 3600</p>|
|Volume $1 free space (percentage)|<p>-</p>|`Calculated`|volumefreepercent[{#VOLUMENUMBER}]<p>Update: 3600</p>|
|Volume $1 free space|<p>Free Space on volume</p>|`SNMP agent`|volumefreesize[{#VOLUMENUMBER}]<p>Update: 3600</p>|
|Volume $1 used space|<p>-</p>|`Calculated`|volumefreeusedsize[{#VOLUMENUMBER}]<p>Update: 3600</p>|
|Volume $1 name|<p>Volume name</p>|`SNMP agent`|volumename[{#VOLUMENUMBER}]<p>Update: 3600</p>|
|Volume $1 RAID Level|<p>Volume RAID level</p>|`SNMP agent`|volumeraidlevel[{#VOLUMENUMBER}]<p>Update: 3600</p>|
|Volume $1 size|<p>Volume size</p>|`SNMP agent`|volumesize[{#VOLUMENUMBER}]<p>Update: 3600</p>|
|Volume $1 status|<p>Volume status</p>|`SNMP agent`|volumestatus[{#VOLUMENUMBER}]<p>Update: 3600</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|data isn't recieved over SNMP ReadyNAS extended|<p>Если нет расширенных данных по SNMP</p>|high|
|Disk {#DISKNUMBER} status change|<p>If the previous status was "ok" and became non-"ok"</p>|high|
|Disk {#DISKNUMBER} temperature celsius high! More that {$TEMPERATURE_DISK_C_HIGH_TSRNT}|<p>if more that {$TEMPERATURE_DISK_C_HIGH_TSRNT} celsius</p>|disaster|
|Disk {#DISKNUMBER} temperature celsius more that {$TEMPERATURE_DISK_C_TSRNT}|<p>if more that {$TEMPERATURE_DISK_C_TSRNT} celsius</p>|average|
|Volume {#VOLUMENUMBER} Free Space absolute {$FREE_SPACE_TB_TSRNT} TB|<p>-</p>|high|
|Volume {#VOLUMENUMBER} Free Space percent {$FREE_SPACE_PERCENT_TSRNT}%|<p>-</p>|average|
|Volume {#VOLUMENUMBER} status not ok|<p>-</p>|high|
