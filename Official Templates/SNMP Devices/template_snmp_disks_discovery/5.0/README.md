# Template SNMP Disks

## Overview

Official template from Zabbix distribution to discover disk devices by SNMP



## Author

Zabbix SIA

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Disk partitions|<p>The rule will discover all disk partitions matching the global regexp "Storage devices for SNMP discovery". {$SNMP_COMMUNITY} is a global macro.</p>|`SNMP agent`|hrStorageDescr<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Allocation units for storage $1|<p>The size, in bytes, of the data objects allocated from this pool. If this entry is monitoring sectors, blocks, buffers, or packets, for example, this number will commonly be greater than one. Otherwise this number will typically be one.</p>|`SNMP agent`|hrStorageAllocationUnits[{#SNMPVALUE}]<p>Update: 3600</p><p>LLD</p>|
|Description of storage $1|<p>A description of the type and instance of the storage described by this entry.</p>|`SNMP agent`|hrStorageDescr[{#SNMPVALUE}]<p>Update: 3600</p><p>LLD</p>|
|Total disk space on $1|<p>This is a calculated item, we need it to get total disk space in bytes.</p>|`Calculated`|hrStorageSizeInBytes[{#SNMPVALUE}]<p>Update: 3600</p><p>LLD</p>|
|Total disk space on $1 in units|<p>The size of the storage represented by this entry, in units of hrStorageAllocationUnits. This object is writable to allow remote configuration of the size of the storage area in those cases where such an operation makes sense and is possible on the underlying system. For example, the amount of main memory allocated to a buffer pool might be modified or the amount of disk space allocated to virtual memory might be modified.</p>|`SNMP agent`|hrStorageSize[{#SNMPVALUE}]<p>Update: 3600</p><p>LLD</p>|
|Used disk space on $1|<p>This is a calculated item, we need it to get used disk space in bytes.</p>|`Calculated`|hrStorageUsedInBytes[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Used disk space on $1 in units|<p>The amount of the storage represented by this entry that is allocated, in units of hrStorageAllocationUnits.</p>|`SNMP agent`|hrStorageUsed[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Free disk space is less than 20% on volume {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {Template SNMP Disks:hrStorageUsed[{#SNMPVALUE}].last(0)} / {Template SNMP Disks:hrStorageSize[{#SNMPVALUE}].last(0)} > 0.8</p><p>**Recovery expression**: </p>|warning|
|Free disk space is less than 20% on volume {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP Disks:hrStorageUsed[{#SNMPVALUE}].last(0)} / {Template SNMP Disks:hrStorageSize[{#SNMPVALUE}].last(0)} > 0.8</p><p>**Recovery expression**: </p>|warning|
