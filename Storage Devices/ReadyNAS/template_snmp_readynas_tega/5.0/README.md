# Template SNMP ReadyNAS Tega

## Description

For Netgear Ready NAS http://www.downloads.netgear.com/files/ReadyNAS/READYNAS-MIB.txt Template is used for monitoring of the disks state, disks temperature, a status of volumes and general state device. Calculated value can be unavailable the some time

## Overview

Template is based on MIB <http://www.downloads.netgear.com/files/ReadyNAS/READYNAS-MIB.txt>.


LLD of disks.


It monitors:


* Disks temperature in Celsius. There is a trigger
* Disks state. There is trigger
* Volume state. There is trigger
* Volume size, free space. There is trigger
* And other.


For tuning of a template macros are used


Perhaps works at versions 2.*. 



## Macros used

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
|sysName|<p>-</p>|`SNMP agent`|sysName<p>Update: 7200</p>|
|sysUpTime|<p>-</p>|`SNMP agent`|sysUpTime<p>Update: 300</p>|
|Disk $1 model (LLD)|<p>-</p>|`SNMP agent`|diskmodel[{#DISKNUMBER}]<p>Update: 3600</p>|
|Disk $1 status digital (LLD)|<p>The disk status in digital format. "1" the disk is status "ok"</p>|`Calculated`|diskstatusn[{#DISKNUMBER}]<p>Update: 3600</p>|
|Disk $1 status (LLD)|<p>-</p>|`SNMP agent`|diskstatus[{#DISKNUMBER}]<p>Update: 3600</p>|
|Disk $1 temperature (LLD)|<p>The data received from the device. Original data are obtained in Fahrenheit.</p>|`SNMP agent`|disktemperature[{#DISKNUMBER}]<p>Update: 3600</p>|
|Disk $1 temperature celsius (LLD)|<p>Conversion of Fahrenheit in celsius</p>|`Calculated`|disktemperature_c[{#DISKNUMBER}]<p>Update: 3600</p>|
|Volume $1 free space (percentage) (LLD)|<p>-</p>|`Calculated`|volumefreepercent[{#VOLUMENUMBER}]<p>Update: 3600</p>|
|Volume $1 free space (LLD)|<p>Free Space on volume</p>|`SNMP agent`|volumefreesize[{#VOLUMENUMBER}]<p>Update: 3600</p>|
|Volume $1 used space (LLD)|<p>-</p>|`Calculated`|volumefreeusedsize[{#VOLUMENUMBER}]<p>Update: 3600</p>|
|Volume $1 name (LLD)|<p>Volume name</p>|`SNMP agent`|volumename[{#VOLUMENUMBER}]<p>Update: 3600</p>|
|Volume $1 RAID Level (LLD)|<p>Volume RAID level</p>|`SNMP agent`|volumeraidlevel[{#VOLUMENUMBER}]<p>Update: 3600</p>|
|Volume $1 size (LLD)|<p>Volume size</p>|`SNMP agent`|volumesize[{#VOLUMENUMBER}]<p>Update: 3600</p>|
|Volume $1 status (LLD)|<p>Volume status</p>|`SNMP agent`|volumestatus[{#VOLUMENUMBER}]<p>Update: 3600</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Disk {#DISKNUMBER} status change|<p>If the previous status was "ok" and became non-"ok"</p>|<p>**Expression**: ({Template SNMP ReadyNAS Tega:diskstatusn[{#DISKNUMBER}].prev()}=1) and ({Template SNMP ReadyNAS Tega:diskstatusn[{#DISKNUMBER}].last()}=0)</p><p>**Recovery expression**: </p>|high|
|Disk {#DISKNUMBER} temperature celsius high! More that {$TEMPERATURE_DISK_C_HIGH_TSRNT}|<p>if more that {$TEMPERATURE_DISK_C_HIGH_TSRNT} celsius</p>|<p>**Expression**: {Template SNMP ReadyNAS Tega:disktemperature_c[{#DISKNUMBER}].last(0)}>75</p><p>**Recovery expression**: </p>|disaster|
|Disk {#DISKNUMBER} temperature celsius more that {$TEMPERATURE_DISK_C_TSRNT}|<p>if more that {$TEMPERATURE_DISK_C_TSRNT} celsius</p>|<p>**Expression**: {Template SNMP ReadyNAS Tega:disktemperature_c[{#DISKNUMBER}].last(0)}>50</p><p>**Recovery expression**: </p>|average|
|Volume {#VOLUMENUMBER} Free Space absolute {$FREE_SPACE_TB_TSRNT} TB|<p>-</p>|<p>**Expression**: {Template SNMP ReadyNAS Tega:volumefreesize[{#VOLUMENUMBER}].last(0)}<0.005</p><p>**Recovery expression**: </p>|high|
|Volume {#VOLUMENUMBER} Free Space percent {$FREE_SPACE_PERCENT_TSRNT}%|<p>-</p>|<p>**Expression**: {Template SNMP ReadyNAS Tega:volumefreepercent[{#VOLUMENUMBER}].last(0)}<10</p><p>**Recovery expression**: </p>|average|
|Volume {#VOLUMENUMBER} status not ok|<p>-</p>|<p>**Expression**: {Template SNMP ReadyNAS Tega:volumestatus[{#VOLUMENUMBER}].iregexp("ok")}<>1</p><p>**Recovery expression**: </p>|high|
|Disk {#DISKNUMBER} status change (LLD)|<p>If the previous status was "ok" and became non-"ok"</p>|<p>**Expression**: ({Template SNMP ReadyNAS Tega:diskstatusn[{#DISKNUMBER}].prev()}=1) and ({Template SNMP ReadyNAS Tega:diskstatusn[{#DISKNUMBER}].last()}=0)</p><p>**Recovery expression**: </p>|high|
|Disk {#DISKNUMBER} temperature celsius high! More that {$TEMPERATURE_DISK_C_HIGH_TSRNT} (LLD)|<p>if more that {$TEMPERATURE_DISK_C_HIGH_TSRNT} celsius</p>|<p>**Expression**: {Template SNMP ReadyNAS Tega:disktemperature_c[{#DISKNUMBER}].last(0)}>75</p><p>**Recovery expression**: </p>|disaster|
|Disk {#DISKNUMBER} temperature celsius more that {$TEMPERATURE_DISK_C_TSRNT} (LLD)|<p>if more that {$TEMPERATURE_DISK_C_TSRNT} celsius</p>|<p>**Expression**: {Template SNMP ReadyNAS Tega:disktemperature_c[{#DISKNUMBER}].last(0)}>50</p><p>**Recovery expression**: </p>|average|
|Volume {#VOLUMENUMBER} Free Space absolute {$FREE_SPACE_TB_TSRNT} TB (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP ReadyNAS Tega:volumefreesize[{#VOLUMENUMBER}].last(0)}<0.005</p><p>**Recovery expression**: </p>|high|
|Volume {#VOLUMENUMBER} Free Space percent {$FREE_SPACE_PERCENT_TSRNT}% (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP ReadyNAS Tega:volumefreepercent[{#VOLUMENUMBER}].last(0)}<10</p><p>**Recovery expression**: </p>|average|
|Volume {#VOLUMENUMBER} status not ok (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP ReadyNAS Tega:volumestatus[{#VOLUMENUMBER}].iregexp("ok")}<>1</p><p>**Recovery expression**: </p>|high|
