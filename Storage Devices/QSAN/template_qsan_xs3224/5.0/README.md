# Template SNMP trap fallback

## Overview

Template for QSAN XS3224 storage.


Collects temperature data and status as text, discovers disks, pools and volumes.


Based on [https://share.zabbix.com/storage-devices/monitor-qsan-storage-devices-via-snmp](storage-devices/monitor-qsan-storage-devices-via-snmp) template with changes to support XS3224 (but no external scripts and OIDs are hardcoded, so no MIB is required).



## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|SNMP trap fallback|<p>-</p>|`SNMP trap`|snmptrap.fallback<p>Update: 0</p>|
## Triggers

There are no triggers in this template.

# Template SNMP QSAN XS3224 Storage

## Description

Template SNMP QSAN Storage

## Overview

Template for QSAN XS3224 storage.


Collects temperature data and status as text, discovers disks, pools and volumes.


Based on [https://share.zabbix.com/storage-devices/monitor-qsan-storage-devices-via-snmp](storage-devices/monitor-qsan-storage-devices-via-snmp) template with changes to support XS3224 (but no external scripts and OIDs are hardcoded, so no MIB is required).



## Macros used

There are no macros links in this template.

## Template links

|Name|
|----|
|Template SNMP Generic|
|Template SNMP trap fallback|
|Template SNMP traps|
## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Volumes|<p>-</p>|`SNMP agent`|nasVolume<p>Update: 300</p>|
|Disks|<p>-</p>|`SNMP agent`|nasDisk<p>Update: 300</p>|
|Pools|<p>-</p>|`SNMP agent`|nasPool<p>Update: 300</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|SNMP trap fallback|<p>-</p>|`SNMP trap`|snmptrap.fallback<p>Update: 0</p>|
|Backplane FAN1 Status|<p>-</p>|`SNMP agent`|sys-bpl-fan1-status<p>Update: 120</p>|
|Backplane FAN2 Status|<p>-</p>|`SNMP agent`|sys-bpl-fan2-status<p>Update: 120</p>|
|Backplane FAN3 Status|<p>-</p>|`SNMP agent`|sys-bpl-fan3-status<p>Update: 120</p>|
|Backplane FAN4 Status|<p>-</p>|`SNMP agent`|sys-bpl-fan4-status<p>Update: 120</p>|
|Backplane Left Temperature Status|<p>-</p>|`SNMP agent`|sys-bpl-left-temp-status<p>Update: 120</p>|
|Backplane Left Temperature Value|<p>-</p>|`SNMP agent`|sys-bpl-left-temp-val<p>Update: 120</p>|
|Backplane Middle Temperature Status|<p>-</p>|`SNMP agent`|sys-bpl-mid-temp-status<p>Update: 120</p>|
|Backplane Middle Temperature Value|<p>-</p>|`SNMP agent`|sys-bpl-mid-temp-val<p>Update: 120</p>|
|Backplane PSU1 Status|<p>-</p>|`SNMP agent`|sys-bpl-psu1-status<p>Update: 120</p>|
|Backplane PSU2 Status|<p>-</p>|`SNMP agent`|sys-bpl-psu2-status<p>Update: 120</p>|
|Backplane Right Temperature Status|<p>-</p>|`SNMP agent`|sys-bpl-right-temp-status<p>Update: 120</p>|
|Backplane Right Temperature Value|<p>-</p>|`SNMP agent`|sys-bpl-right-temp-val<p>Update: 120</p>|
|Device contact details|<p>The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|sysContact<p>Update: 3600</p>|
|CTRL1 CPU Temperature Status|<p>-</p>|`SNMP agent`|sys-ctrl1-cpu-temp-status<p>Update: 120</p>|
|CTRL1 CPU Temperature Value|<p>-</p>|`SNMP agent`|sys-ctrl1-cpu-temp-val<p>Update: 120</p>|
|CTRL1 SAS Expander Temperature Status|<p>-</p>|`SNMP agent`|sys-ctrl1-sas-temp-status<p>Update: 120</p>|
|CTRL1 SAS Expander Temperature Value|<p>-</p>|`SNMP agent`|sys-ctrl1-sas-temp-val<p>Update: 120</p>|
|CTRL1 SLOT1 Temperature Status|<p>-</p>|`SNMP agent`|sys-ctrl1-slot1-temp-status<p>Update: 120</p>|
|CTRL1 SLOT1 Temperature Value|<p>-</p>|`SNMP agent`|sys-ctrl1-slot1-temp-val<p>Update: 120</p>|
|CTRL2 CPU Temperature Status|<p>-</p>|`SNMP agent`|sys-ctrl2-cpu-temp-status<p>Update: 120</p>|
|CTRL2 CPU Temperature Value|<p>-</p>|`SNMP agent`|sys-ctrl2-cpu-temp-val<p>Update: 120</p>|
|CTRL2 SAS Expander Temperature Status|<p>-</p>|`SNMP agent`|sys-ctrl2-sas-temp-status<p>Update: 120</p>|
|CTRL2 SAS Expander Temperature Value|<p>-</p>|`SNMP agent`|sys-ctrl2-sas-temp-val<p>Update: 120</p>|
|CTRL2 SLOT1 Temperature Status|<p>-</p>|`SNMP agent`|sys-ctrl2-slot1-temp-status<p>Update: 120</p>|
|CTRL2 SLOT1 Temperature Value|<p>-</p>|`SNMP agent`|sys-ctrl2-slot1-temp-val<p>Update: 120</p>|
|Device description|<p>A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|sysDescr<p>Update: 3600</p>|
|Device location|<p>The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysLocation<p>Update: 3600</p>|
|Device name|<p>An administratively-assigned name for this managed node. By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysName<p>Update: 3600</p>|
|Device uptime|<p>The time since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|sysUpTime<p>Update: 60</p>|
|Zabbix SNMP Connected|<p>-</p>|`Zabbix internal`|zabbix[host,snmp,available]<p>Update: 60</p>|
|Name of Volume {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|sanVolumeName[{#SNMPVALUE}]<p>Update: 3600</p>|
|State of Volume {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|sanVolumeState[{#SNMPVALUE}]<p>Update: 120</p>|
|Status of Volume {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|sanVolumeStatus[{#SNMPVALUE}]<p>Update: 120</p>|
|Name of Disk $1 (LLD)|<p>-</p>|`SNMP agent`|sanDiskName[{#SNMPINDEX}]<p>Update: 3600</p>|
|State of Disk $1 (LLD)|<p>-</p>|`SNMP agent`|sanDiskState[{#SNMPINDEX}]<p>Update: 120</p>|
|Status of Disk $1 (LLD)|<p>-</p>|`SNMP agent`|sanDiskStatus[{#SNMPINDEX}]<p>Update: 120</p>|
|Name of Pool {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|sanPoolName[{#SNMPVALUE}]<p>Update: 3600</p>|
|State of Pool {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|sanPoolState[{#SNMPVALUE}]<p>Update: 120</p>|
|Status of Pool {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|sanPoolStatus[{#SNMPVALUE}]<p>Update: 120</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|SAN Disk {#SNMPVALUE} on {HOST.NAME} is NOT Good|<p>-</p>|<p>**Expression**: {Template SNMP QSAN XS3224 Storage:sanDiskState[{#SNMPINDEX}].iregexp(^Good$)}=0</p><p>**Recovery expression**: </p>|high|
|SAN Disk {#SNMPVALUE} on {HOST.NAME} is NOT Online|<p>-</p>|<p>**Expression**: {Template SNMP QSAN XS3224 Storage:sanDiskStatus[{#SNMPINDEX}].iregexp(^Online$)}=0</p><p>**Recovery expression**: </p>|high|
|SAN Pool {#SNMPVALUE} on {HOST.NAME} is NOT Good|<p>-</p>|<p>**Expression**: {Template SNMP QSAN XS3224 Storage:sanPoolState[{#SNMPVALUE}].iregexp(^Good$)}=0</p><p>**Recovery expression**: </p>|high|
|SAN Pool {#SNMPVALUE} on {HOST.NAME} is NOT Online|<p>-</p>|<p>**Expression**: {Template SNMP QSAN XS3224 Storage:sanPoolStatus[{#SNMPVALUE}].iregexp(^Online$)}=0</p><p>**Recovery expression**: </p>|high|
|SAN Volume {#SNMPVALUE} on {HOST.NAME} is NOT Online|<p>-</p>|<p>**Expression**: {Template SNMP QSAN XS3224 Storage:sanVolumeStatus[{#SNMPVALUE}].iregexp(^Online$)}=0</p><p>**Recovery expression**: </p>|high|
|SAN Volume {#SNMPVALUE} on {HOST.NAME} is NOT Optimal|<p>-</p>|<p>**Expression**: {Template SNMP QSAN XS3224 Storage:sanVolumeState[{#SNMPVALUE}].iregexp(^Optimal$)}=0</p><p>**Recovery expression**: </p>|high|
|SAN Volume {#SNMPVALUE} on {HOST.NAME} is NOT Online (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP QSAN XS3224 Storage:sanVolumeStatus[{#SNMPVALUE}].iregexp(^Online$)}=0</p><p>**Recovery expression**: </p>|high|
|SAN Volume {#SNMPVALUE} on {HOST.NAME} is NOT Optimal (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP QSAN XS3224 Storage:sanVolumeState[{#SNMPVALUE}].iregexp(^Optimal$)}=0</p><p>**Recovery expression**: </p>|high|
|SAN Disk {#SNMPVALUE} on {HOST.NAME} is NOT Good (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP QSAN XS3224 Storage:sanDiskState[{#SNMPINDEX}].iregexp(^Good$)}=0</p><p>**Recovery expression**: </p>|high|
|SAN Disk {#SNMPVALUE} on {HOST.NAME} is NOT Online (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP QSAN XS3224 Storage:sanDiskStatus[{#SNMPINDEX}].iregexp(^Online$)}=0</p><p>**Recovery expression**: </p>|high|
|SAN Pool {#SNMPVALUE} on {HOST.NAME} is NOT Good (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP QSAN XS3224 Storage:sanPoolState[{#SNMPVALUE}].iregexp(^Good$)}=0</p><p>**Recovery expression**: </p>|high|
|SAN Pool {#SNMPVALUE} on {HOST.NAME} is NOT Online (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP QSAN XS3224 Storage:sanPoolStatus[{#SNMPVALUE}].iregexp(^Online$)}=0</p><p>**Recovery expression**: </p>|high|
# Template SNMP traps

## Overview

Template for QSAN XS3224 storage.


Collects temperature data and status as text, discovers disks, pools and volumes.


Based on [https://share.zabbix.com/storage-devices/monitor-qsan-storage-devices-via-snmp](storage-devices/monitor-qsan-storage-devices-via-snmp) template with changes to support XS3224 (but no external scripts and OIDs are hardcoded, so no MIB is required).



## Macros used

There are no macros links in this template.

## Template links

|Name|
|----|
|Template SNMP trap fallback|
## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|SNMP trap fallback|<p>-</p>|`SNMP trap`|snmptrap.fallback<p>Update: 0</p>|
## Triggers

There are no triggers in this template.
