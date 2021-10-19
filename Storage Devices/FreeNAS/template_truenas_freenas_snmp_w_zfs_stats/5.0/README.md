# Template SNMP FreeNAS

## Overview

This template will allow you to easily monitor and graph a TrueNAS/FreeNAS server including ZFS ARC stats. This requires TrueNAS/FreeNAS 9.3 or above.


You will also need to create a Zabbix macro named {$SNMP\_COMMUNITY} which contains your SNMP community name. The FREENAS-MIB.txt will also need to be uploaded to your Zabbix Server. The MIB can be downloaded from your FreeNAS server and is located in /usr/local/share/snmp/mibs/.



## Author

FreeNAS Community

## Macros used

There are no macros links in this template.

## Template links

|Name|
|----|
|Template SNMP Processors|
|Template SNMP Interfaces|
|Template SNMP Disks|
|Template SNMP Generic|
## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Memory statistics|<p>The rule will discover all memory matching the global regexp "Storage devices for SNMP discovery". {$SNMP_COMMUNITY} is a global macro.</p>|`SNMP agent`|hrMemDescr<p>Update: 3600</p>|
|Network interfaces|<p>You may also consider using IF-MIB::ifType or IF-MIB::ifAlias for discovery depending on your filtering needs. {$SNMP_COMMUNITY} is a global macro.</p>|`SNMP agent`|ifDescr<p>Update: 3600</p>|
|ZFS Pools|<p>ZFS pools</p>|`SNMP agent`|zfsPoolName<p>Update: 3600</p>|
|Disk partitions|<p>The rule will discover all disk partitions matching the global regexp "Storage devices for SNMP discovery". {$SNMP_COMMUNITY} is a global macro.</p>|`SNMP agent`|hrStorageDescr<p>Update: 3600</p>|
|Processors|<p>{$SNMP_COMMUNITY} is a global macro.</p>|`SNMP agent`|hrProcessorLoad<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Number of network interfaces|<p>The number of network interfaces (regardless of their current state) present on this system.</p>|`SNMP agent`|ifNumber<p>Update: 1h</p>|
|Device contact details|<p>The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|sysContact<p>Update: 3600</p>|
|Device description|<p>A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|sysDescr<p>Update: 3600</p>|
|Device location|<p>The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysLocation<p>Update: 3600</p>|
|Device name|<p>An administratively-assigned name for this managed node. By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysName<p>Update: 3600</p>|
|Device uptime|<p>The time since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|sysUpTime<p>Update: 60</p>|
|Arc C|<p>Arc C ?</p>|`SNMP agent`|zfs.ArcC<p>Update: 60</p>|
|Arc data|<p>Arc data</p>|`SNMP agent`|zfs.ArcData<p>Update: 60</p>|
|Arc Cache hit ratio|<p>Arc hit ratio</p>|`SNMP agent`|zfs.ArcHitratio<p>Update: 60</p>|
|Arc hits|<p>Arc hits</p>|`SNMP agent`|zfs.Archits<p>Update: 60</p>|
|Arc meta|<p>Arc meta ?</p>|`SNMP agent`|zfs.Arcmeta<p>Update: 60</p>|
|Arc misses|<p>Arc misses</p>|`SNMP agent`|zfs.ArcMisses<p>Update: 60</p>|
|Arc Cache miss percent|<p>Arc cach miss percentage</p>|`SNMP agent`|zfs.ArcMissPercent<p>Update: 60</p>|
|Arc Cache miss ratio|<p>Arc cach miss ratio</p>|`SNMP agent`|zfs.ArcMissratio<p>Update: 60</p>|
|Arc P|<p>Arc P ?</p>|`SNMP agent`|zfs.ArcP<p>Update: 60</p>|
|Arc size|<p>Arc size iin bytes</p>|`SNMP agent`|zfs.Arcsize<p>Update: 60</p>|
|L2Arc hits|<p>L2Arc hits</p>|`SNMP agent`|zfs.L2Archits<p>Update: 60</p>|
|L2Arc misses|<p>L2Arc misses</p>|`SNMP agent`|zfs.L2ArcMisses<p>Update: 60</p>|
|L2Arc size|<p>L2Arc size iin bytes</p>|`SNMP agent`|zfs.L2Arcsize<p>Update: 60</p>|
|ZIL operations per second|<p>ZIL operations per second</p>|`SNMP agent`|zfs.ZilstatOps1sec<p>Update: 60</p>|
|{#SNMPVALUE} allocated units (LLD)|<p>-</p>|`SNMP agent`|memAllocated[{#SNMPVALUE}]<p>Update: 60</p>|
|{#SNMPVALUE} size (LLD)|<p>-</p>|`Calculated`|memSize[{#SNMPVALUE}]<p>Update: 60</p>|
|{#SNMPVALUE} units (LLD)|<p>-</p>|`SNMP agent`|memUnits[{#SNMPVALUE}]<p>Update: 3600</p>|
|Operational status of interface $1 (LLD)|<p>The current operational state of the interface.</p>|`SNMP agent`|ifOperStatus[{#SNMPVALUE}]<p>Update: 60</p>|
|Incoming traffic on interface $1 (LLD)|<p>The number of octets in valid MAC frames received on this interface, including the MAC header and FCS.</p>|`SNMP agent`|ifHCInOctets[{#SNMPVALUE}]<p>Update: 60</p>|
|Outgoing traffic on interface $1 (LLD)|<p>The number of octets transmitted in MAC frames on this interface, including the MAC header and FCS.</p>|`SNMP agent`|ifHCOutOctets[{#SNMPVALUE}]<p>Update: 60</p>|
|Available bytes on pool {#SNMPVALUE} (LLD)|<p>The number of available bytes (rounded to 1 MB blocks) on the volume.</p>|`SNMP agent`|vfs.fs.size[{#SNMPVALUE},free]<p>Update: 60</p>|
|Health of pool {#SNMPVALUE} (LLD)|<p>The current health of the containing pool, as reported by zpool status. online(1), degraded(2), faulted(3), unknown(4)</p>|`SNMP agent`|zfsPoolHealth[{#SNMPVALUE}]<p>Update: 60</p>|
|IO Read Ops on pool {#SNMPVALUE} (LLD)|<p>The number of read I/O operations sent to the pool or device.</p>|`SNMP agent`|vfs.fs.iops[{#SNMPVALUE},read]<p>Update: 60</p>|
|IO Write Ops on pool {#SNMPVALUE} (LLD)|<p>The number of write I/O operations sent to the pool or device.</p>|`SNMP agent`|vfs.fs.iops[{#SNMPVALUE},write]<p>Update: 60</p>|
|Name of pool #$1 (LLD)|<p>The name of the filesystem type Volume</p>|`SNMP agent`|zfsPoolName[{#SNMPINDEX}]<p>Update: 3600</p>|
|Read bandwidth on pool {#SNMPVALUE} (LLD)|<p>the bandwidth of all read operations (including metadata), expressed as units per second</p>|`SNMP agent`|vfs.fs.bandwidth[{#SNMPVALUE},read]<p>Update: 60</p>|
|Size of pool {#SNMPVALUE} (LLD)|<p>The number of bytes (rounded to 1 MB blocks) part of the volume.</p>|`SNMP agent`|vfs.fs.size[{#SNMPVALUE},total]<p>Update: 60</p>|
|Usage of pool {#SNMPVALUE} (LLD)|<p>Used percentage of the pools capacity</p>|`Calculated`|vfs.fs.size[{#SNMPVALUE},pfree]<p>Update: 60</p>|
|Used bytes on pool {#SNMPVALUE} (LLD)|<p>The number of bytes (rounded to 1 MB blocks) that are used.</p>|`SNMP agent`|vfs.fs.size[{#SNMPVALUE},used]<p>Update: 60</p>|
|Write bandwidth on pool {#SNMPVALUE} (LLD)|<p>the bandwidth of all write operations expressed as units per second</p>|`SNMP agent`|vfs.fs.bandwidth[{#SNMPVALUE},write]<p>Update: 60</p>|
|Allocation units for storage $1 (LLD)|<p>The size, in bytes, of the data objects allocated from this pool. If this entry is monitoring sectors, blocks, buffers, or packets, for example, this number will commonly be greater than one. Otherwise this number will typically be one.</p>|`SNMP agent`|hrStorageAllocationUnits[{#SNMPVALUE}]<p>Update: 3600</p>|
|Description of storage $1 (LLD)|<p>A description of the type and instance of the storage described by this entry.</p>|`SNMP agent`|hrStorageDescr[{#SNMPVALUE}]<p>Update: 3600</p>|
|Total disk space on $1 (LLD)|<p>This is a calculated item, we need it to get total disk space in bytes.</p>|`Calculated`|hrStorageSizeInBytes[{#SNMPVALUE}]<p>Update: 3600</p>|
|Total disk space on $1 in units (LLD)|<p>The size of the storage represented by this entry, in units of hrStorageAllocationUnits. This object is writable to allow remote configuration of the size of the storage area in those cases where such an operation makes sense and is possible on the underlying system. For example, the amount of main memory allocated to a buffer pool might be modified or the amount of disk space allocated to virtual memory might be modified.</p>|`SNMP agent`|hrStorageSize[{#SNMPVALUE}]<p>Update: 3600</p>|
|Used disk space on $1 (LLD)|<p>This is a calculated item, we need it to get used disk space in bytes.</p>|`Calculated`|hrStorageUsedInBytes[{#SNMPVALUE}]<p>Update: 60</p>|
|Used disk space on $1 in units (LLD)|<p>The amount of the storage represented by this entry that is allocated, in units of hrStorageAllocationUnits.</p>|`SNMP agent`|hrStorageUsed[{#SNMPVALUE}]<p>Update: 60</p>|
|Utilization of processor #$1 (LLD)|<p>The average, over the last minute, of the percentage of time that this processor was not idle. Implementations may approximate this one minute smoothing period if necessary.</p>|`SNMP agent`|hrProcessorLoad[{#SNMPINDEX}]<p>Update: 60</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Free disk space is less than 20% on volume {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {Template SNMP FreeNAS:hrStorageUsed[{#SNMPVALUE}].last(0)} / {Template SNMP FreeNAS:hrStorageSize[{#SNMPVALUE}].last(0)} > 0.8</p><p>**Recovery expression**: </p>|warning|
|Pool {#SNMPVALUE} is DEGRADED!|<p>Your pool {#SNMPVALUE} is in degraded state. online(1), degraded(2), faulted(3), unknown(4)</p>|<p>**Expression**: {Template SNMP FreeNAS:zfsPoolHealth[{#SNMPVALUE}].last()}=2</p><p>**Recovery expression**: </p>|high|
|Pool {#SNMPVALUE} is FAULTED!|<p>Your pool {#SNMPVALUE} is in faulted state. You are in trouble</p>|<p>**Expression**: {Template SNMP FreeNAS:zfsPoolHealth[{#SNMPVALUE}].last()}=3</p><p>**Recovery expression**: </p>|disaster|
|Pool {#SNMPVALUE} is in UNKNOWN state|<p>Your pool {#SNMPVALUE} is in unknown state. You are in trouble, I really hope you have a backup</p>|<p>**Expression**: {Template SNMP FreeNAS:zfsPoolHealth[{#SNMPVALUE}].last()}=4</p><p>**Recovery expression**: </p>|disaster|
|Pool {#SNMPVALUE} usage is over 80%|<p>Your pool {#SNMPVALUE} is more than 80% full! It is a known fact that performance will degrade significantly. Please free up some space.</p>|<p>**Expression**: {Template SNMP FreeNAS:vfs.fs.size[{#SNMPVALUE},pfree].last(0)}>80</p><p>**Recovery expression**: </p>|average|
|O status operacional foi alterado no {HOST.NAME} na interface {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {Template SNMP FreeNAS:ifOperStatus[{#SNMPVALUE}].diff(0)}=1</p><p>**Recovery expression**: </p>|information|
|O status operacional foi alterado no {HOST.NAME} na interface {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP FreeNAS:ifOperStatus[{#SNMPVALUE}].diff(0)}=1</p><p>**Recovery expression**: </p>|information|
|Pool {#SNMPVALUE} is DEGRADED! (LLD)|<p>Your pool {#SNMPVALUE} is in degraded state. online(1), degraded(2), faulted(3), unknown(4)</p>|<p>**Expression**: {Template SNMP FreeNAS:zfsPoolHealth[{#SNMPVALUE}].last()}=2</p><p>**Recovery expression**: </p>|high|
|Pool {#SNMPVALUE} is FAULTED! (LLD)|<p>Your pool {#SNMPVALUE} is in faulted state. You are in trouble</p>|<p>**Expression**: {Template SNMP FreeNAS:zfsPoolHealth[{#SNMPVALUE}].last()}=3</p><p>**Recovery expression**: </p>|disaster|
|Pool {#SNMPVALUE} is in UNKNOWN state (LLD)|<p>Your pool {#SNMPVALUE} is in unknown state. You are in trouble, I really hope you have a backup</p>|<p>**Expression**: {Template SNMP FreeNAS:zfsPoolHealth[{#SNMPVALUE}].last()}=4</p><p>**Recovery expression**: </p>|disaster|
|Pool {#SNMPVALUE} usage is over 80% (LLD)|<p>Your pool {#SNMPVALUE} is more than 80% full! It is a known fact that performance will degrade significantly. Please free up some space.</p>|<p>**Expression**: {Template SNMP FreeNAS:vfs.fs.size[{#SNMPVALUE},pfree].last(0)}>80</p><p>**Recovery expression**: </p>|average|
|Free disk space is less than 20% on volume {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP FreeNAS:hrStorageUsed[{#SNMPVALUE}].last(0)} / {Template SNMP FreeNAS:hrStorageSize[{#SNMPVALUE}].last(0)} > 0.8</p><p>**Recovery expression**: </p>|warning|