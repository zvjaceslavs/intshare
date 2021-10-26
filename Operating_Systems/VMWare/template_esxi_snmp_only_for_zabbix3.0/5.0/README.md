# SNMP OS ESXi

## Overview

Modify from [https://share.zabbix.com/operating-systems/esxi-snmp](operating-systems/esxi-snmp),Thank Andrew Single.The original templete can not be used on zabbix3.x,so i modify it ..I have tested on esxi 5.0 5.1 5.5 6.



## Author

anxinhai

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Virtual Machines|<p>-</p>|`SNMP agent`|vmwVmDisplayName<p>Update: 3600</p>|
|Disk partitions|<p>The rule will discover all dis partitions matching the global regexp "Storage devices for SNMP discovery". {$SNMP_COMMUNITY} is a global macro. hrStorageFixedDisk</p>|`SNMP agent`|hrStorageAlloc<p>Update: 3600</p>|
|Memory|<p>-</p>|`SNMP agent`|hrStorageDescr<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Device name|<p>An administratively-assigned name for this managed node. By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysName<p>Update: 3600</p>|
|ESXi Version|<p>-</p>|`SNMP agent`|vmwProdVersion.0<p>Update: 3600</p>|
|Device uptime|<p>The time since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|sysUpTime<p>Update: 300</p>|
|VMWare Build|<p>-</p>|`SNMP agent`|vmwProdBuild.0<p>Update: 3600</p>|
|VM Guest OS {#SNMPVALUE}|<p>-</p>|`SNMP agent`|vmwVMGuestOS.[{#SNMPINDEX}]<p>Update: 3600</p><p>LLD</p>|
|VM Guest State {#SNMPVALUE}|<p>-</p>|`SNMP agent`|vmwVMGuestState.[{#SNMPINDEX}]<p>Update: 30</p><p>LLD</p>|
|VM Power State {#SNMPVALUE}|<p>-</p>|`SNMP agent`|vmwVMState.[{#SNMPINDEX}]<p>Update: 30</p><p>LLD</p>|
|Allocation units VMFS {#SNMPINDEX}|<p>-</p>|`SNMP agent`|hrStorageAllocationUnits[{#SNMPINDEX}]<p>Update: 3600</p><p>LLD</p>|
|Description of VMFS {#SNMPINDEX}|<p>A description of the type and instance of the storage described by this entry.</p>|`SNMP agent`|hrStorageDescr[{#SNMPINDEX}]<p>Update: 3600</p><p>LLD</p>|
|Total size of VMFS {#SNMPINDEX} in blocks|<p>The size of the storage represented by this entry, in units of hrStorageAllocationUnits. This object is writable to allow remote configuration of the size of the storage area in those cases where such an operation makes sense and is possible on the underlying system. For example, the amount of main memory allocated to a buffer pool might be modified or the amount of disk space allocated to virtual memory might be modified.</p>|`SNMP agent`|hrStorageSizeBlocks[{#SNMPINDEX}]<p>Update: 3600</p><p>LLD</p>|
|Total size of VMFS {#SNMPINDEX}|<p>The size of the storage represented by this entry, in units of hrStorageAllocationUnits. This object is writable to allow remote configuration of the size of the storage area in those cases where such an operation makes sense and is possible on the underlying system. For example, the amount of main memory allocated to a buffer pool might be modified or the amount of disk space allocated to virtual memory might be modified.</p>|`Calculated`|hrStorageSize[{#SNMPINDEX}]<p>Update: 3600</p><p>LLD</p>|
|Used disk on VMFS {#SNMPINDEX} in blocks|<p>The amount of the storage represented by this entry that is allocated, in units of hrStorageAllocationUnits.</p>|`SNMP agent`|hrStorageUsedBlocks[{#SNMPINDEX}]<p>Update: 60</p><p>LLD</p>|
|Used disk on VMFS {#SNMPINDEX}|<p>The amount of the storage represented by this entry that is allocated, in units of hrStorageAllocationUnits.</p>|`Calculated`|hrStorageUsed[{#SNMPINDEX}]<p>Update: 60</p><p>LLD</p>|
|Used Space % on VMFS {#SNMPINDEX}|<p>-</p>|`Calculated`|vmfs.FreeSpacePer[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|Free Space on VMFS {#SNMPINDEX}|<p>-</p>|`Calculated`|vmfs.FreeSpace[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|Used Memory %|<p>-</p>|`Calculated`|hrMemoryFreePerc[{#SNMPINDEX}]<p>Update: 60</p><p>LLD</p>|
|Free Memory|<p>-</p>|`Calculated`|hrMemoryFree[{#SNMPINDEX}]<p>Update: 60</p><p>LLD</p>|
|Total Memory|<p>-</p>|`SNMP agent`|hrMemoryTotal[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|Memory Used|<p>-</p>|`SNMP agent`|hrMemoryUsed[{#SNMPINDEX}]<p>Update: 60</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Free disk space is less than 10% on volume {#SNMPINDEX}|<p>-</p>|<p>**Expression**: {SNMP OS ESXi:hrStorageUsedBlocks[{#SNMPINDEX}].last(0)} / {SNMP OS ESXi:hrStorageSizeBlocks[{#SNMPINDEX}].last(0)} > 0.9</p><p>**Recovery expression**: </p>|average|
|Free disk space is less than 20% on volume {#SNMPINDEX}|<p>-</p>|<p>**Expression**: {SNMP OS ESXi:hrStorageUsedBlocks[{#SNMPINDEX}].last(0)} / {SNMP OS ESXi:hrStorageSizeBlocks[{#SNMPINDEX}].last(0)} > 0.8</p><p>**Recovery expression**: </p>|warning|
|Available Memory is less than 10% on $1|<p>-</p>|<p>**Expression**: {SNMP OS ESXi:hrMemoryUsed[{#SNMPINDEX}].last(0)} / {SNMP OS ESXi:hrMemoryTotal[{#SNMPINDEX}].last(0)} > 0.9</p><p>**Recovery expression**: </p>|high|
|Guest Tools not running on {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {SNMP OS ESXi:vmwVMGuestState.[{#SNMPINDEX}].regexp("not running")}=1</p><p>**Recovery expression**: </p>|information|
|Guest Tools not running on {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {SNMP OS ESXi:vmwVMGuestState.[{#SNMPINDEX}].regexp("not running")}=1</p><p>**Recovery expression**: </p>|information|
|Free disk space is less than 10% on volume {#SNMPINDEX} (LLD)|<p>-</p>|<p>**Expression**: {SNMP OS ESXi:hrStorageUsedBlocks[{#SNMPINDEX}].last(0)} / {SNMP OS ESXi:hrStorageSizeBlocks[{#SNMPINDEX}].last(0)} > 0.9</p><p>**Recovery expression**: </p>|average|
|Free disk space is less than 20% on volume {#SNMPINDEX} (LLD)|<p>-</p>|<p>**Expression**: {SNMP OS ESXi:hrStorageUsedBlocks[{#SNMPINDEX}].last(0)} / {SNMP OS ESXi:hrStorageSizeBlocks[{#SNMPINDEX}].last(0)} > 0.8</p><p>**Recovery expression**: </p>|warning|
|Available Memory is less than 10% on $1 (LLD)|<p>-</p>|<p>**Expression**: {SNMP OS ESXi:hrMemoryUsed[{#SNMPINDEX}].last(0)} / {SNMP OS ESXi:hrMemoryTotal[{#SNMPINDEX}].last(0)} > 0.9</p><p>**Recovery expression**: </p>|high|
