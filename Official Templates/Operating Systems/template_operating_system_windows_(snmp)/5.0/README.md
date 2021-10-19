# Template SNMP OS Windows

## Overview

Official OS Windows Template by SNMP from Zabbix distribution



## Author

Zabbix SIA

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
|Network interfaces|<p>You may also consider using IF-MIB::ifType or IF-MIB::ifAlias for discovery depending on your filtering needs. {$SNMP_COMMUNITY} is a global macro.</p>|`SNMP agent`|ifDescr<p>Update: 3600</p>|
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
|Operational status of interface $1 (LLD)|<p>The current operational state of the interface.</p>|`SNMP agent`|ifOperStatus[{#SNMPVALUE}]<p>Update: 60</p>|
|Incoming traffic on interface $1 (LLD)|<p>The number of octets in valid MAC frames received on this interface, including the MAC header and FCS.</p>|`SNMP agent`|ifHCInOctets[{#SNMPVALUE}]<p>Update: 60</p>|
|Outgoing traffic on interface $1 (LLD)|<p>The number of octets transmitted in MAC frames on this interface, including the MAC header and FCS.</p>|`SNMP agent`|ifHCOutOctets[{#SNMPVALUE}]<p>Update: 60</p>|
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
|Free disk space is less than 20% on volume {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {Template SNMP OS Windows:hrStorageUsed[{#SNMPVALUE}].last(0)} / {Template SNMP OS Windows:hrStorageSize[{#SNMPVALUE}].last(0)} > 0.8</p><p>**Recovery expression**: </p>|warning|
|O status operacional foi alterado no {HOST.NAME} na interface {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {Template SNMP OS Windows:ifOperStatus[{#SNMPVALUE}].diff(0)}=1</p><p>**Recovery expression**: </p>|information|
|O status operacional foi alterado no {HOST.NAME} na interface {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP OS Windows:ifOperStatus[{#SNMPVALUE}].diff(0)}=1</p><p>**Recovery expression**: </p>|information|
|Free disk space is less than 20% on volume {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP OS Windows:hrStorageUsed[{#SNMPVALUE}].last(0)} / {Template SNMP OS Windows:hrStorageSize[{#SNMPVALUE}].last(0)} > 0.8</p><p>**Recovery expression**: </p>|warning|
