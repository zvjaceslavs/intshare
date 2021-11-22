# SNMP Omron UPS

## Overview

A simple SNMP Template for OMRON UPS with a network card SC21.


Only 1 input line and 1 output source are supported.


Tested on: BN300R with SC21 v1.20


Items:


* Input Frequency
* Input Voltage
* Output Frequency
* Output Voltage
* Output Load
* Battery Status
* Battery Remaining %
* Battery Temperature
* Case Temperature


## Author

330k

## Macros used

There are no macros links in this template.

## Template links

|Name|
|----|
|Template SNMP Interfaces|
|Template SNMP Disks|
|Template SNMP Generic|
## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Network interfaces|<p>You may also consider using IF-MIB::ifType or IF-MIB::ifAlias for discovery depending on your filtering needs. {$SNMP_COMMUNITY} is a global macro.</p>|`SNMP agent`|ifDescr<p>Update: 3600</p>|
|Disk partitions|<p>The rule will discover all disk partitions matching the global regexp "Storage devices for SNMP discovery". {$SNMP_COMMUNITY} is a global macro.</p>|`SNMP agent`|hrStorageDescr<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Battery Voltage|<p>-</p>|`SNMP agent`|batteryVoltage<p>Update: 1m</p>|
|Output Frequency|<p>-</p>|`SNMP agent`|outputFrequency<p>Update: 1m</p>|
|Input Voltage Max|<p>-</p>|`SNMP agent`|inputVoltageMax<p>Update: 1m</p>|
|UPS Agent Software Version|<p>-</p>|`SNMP agent`|upsIdentAgentSoftwareVersion<p>Update: 1h</p>|
|Estimated Minutes Remaining on Battery|<p>-</p>|`SNMP agent`|estimatedMinutesRemaining<p>Update: 1m</p>|
|Seconds on Battery|<p>-</p>|`SNMP agent`|secondsOnButtery<p>Update: 1m</p>|
|Input Voltage Min|<p>-</p>|`SNMP agent`|inputVoltageMin<p>Update: 1m</p>|
|UPS Manufacturer|<p>-</p>|`SNMP agent`|upsIdentManufacturer<p>Update: 1h</p>|
|Output Load %|<p>-</p>|`SNMP agent`|outputLoad<p>Update: 1m</p>|
|Battery Remaining %|<p>-</p>|`SNMP agent`|batteryRemaining<p>Update: 1m</p>|
|UPS Model|<p>-</p>|`SNMP agent`|upsIdentModel<p>Update: 1h</p>|
|UPS Type|<p>-</p>|`SNMP agent`|upsIdentUPSType<p>Update: 1h</p>|
|Output Voltage|<p>-</p>|`SNMP agent`|outputVoltage<p>Update: 1m</p>|
|UPS Status|<p>-</p>|`SNMP agent`|upsIdentUPSStatus<p>Update: 1m</p>|
|Battery Temperature|<p>-</p>|`SNMP agent`|batteryTemperature<p>Update: 1m</p>|
|Battery Status|<p>-</p>|`SNMP agent`|batteryStatus<p>Update: 1m</p>|
|UPS Temperature|<p>-</p>|`SNMP agent`|upsIdentTemperature<p>Update: 1m</p>|
|UPS Name|<p>-</p>|`SNMP agent`|upsIdentName<p>Update: 1h</p>|
|Input Voltage|<p>-</p>|`SNMP agent`|inputVoltage<p>Update: 1m</p>|
|Input Frequency|<p>-</p>|`SNMP agent`|inputFrequency<p>Update: 1m</p>|
|Outgoing traffic on interface $1|<p>The number of octets transmitted in MAC frames on this interface, including the MAC header and FCS.</p>|`SNMP agent`|ifOutOctets[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Admin status of interface $1|<p>The desired state of the interface.</p>|`SNMP agent`|ifAdminStatus[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Alias of interface $1|<p>-</p>|`SNMP agent`|ifAlias[{#SNMPVALUE}]<p>Update: 3600</p><p>LLD</p>|
|Description of interface $1|<p>A textual string containing information about the interface. This string should include the name of the manufacturer, the product name and the version of the interface hardware/software.</p>|`SNMP agent`|ifDescr[{#SNMPVALUE}]<p>Update: 3600</p><p>LLD</p>|
|Inbound errors on interface $1|<p>For packet-oriented interfaces, the number of inbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of inbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol.</p>|`SNMP agent`|ifInErrors[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Incoming traffic on interface $1|<p>The number of octets in valid MAC frames received on this interface, including the MAC header and FCS.</p>|`SNMP agent`|ifInOctets[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Operational status of interface $1|<p>The current operational state of the interface.</p>|`SNMP agent`|ifOperStatus[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Outbound errors on interface $1|<p>For packet-oriented interfaces, the number of outbound packets that could not be transmitted because of errors. For character-oriented or fixed-length interfaces, the number of outbound transmission units that could not be transmitted because of errors.</p>|`SNMP agent`|ifOutErrors[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Allocation units for storage $1|<p>The size, in bytes, of the data objects allocated from this pool. If this entry is monitoring sectors, blocks, buffers, or packets, for example, this number will commonly be greater than one. Otherwise this number will typically be one.</p>|`SNMP agent`|hrStorageAllocationUnits[{#SNMPVALUE}]<p>Update: 3600</p><p>LLD</p>|
|Description of storage $1|<p>A description of the type and instance of the storage described by this entry.</p>|`SNMP agent`|hrStorageDescr[{#SNMPVALUE}]<p>Update: 3600</p><p>LLD</p>|
|Total disk space on $1|<p>This is a calculated item, we need it to get total disk space in bytes.</p>|`Calculated`|hrStorageSizeInBytes[{#SNMPVALUE}]<p>Update: 3600</p><p>LLD</p>|
|Total disk space on $1 in units|<p>The size of the storage represented by this entry, in units of hrStorageAllocationUnits. This object is writable to allow remote configuration of the size of the storage area in those cases where such an operation makes sense and is possible on the underlying system. For example, the amount of main memory allocated to a buffer pool might be modified or the amount of disk space allocated to virtual memory might be modified.</p>|`SNMP agent`|hrStorageSize[{#SNMPVALUE}]<p>Update: 3600</p><p>LLD</p>|
|Used disk space on $1|<p>This is a calculated item, we need it to get used disk space in bytes.</p>|`Calculated`|hrStorageUsedInBytes[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Used disk space on $1 in units|<p>The amount of the storage represented by this entry that is allocated, in units of hrStorageAllocationUnits.</p>|`SNMP agent`|hrStorageUsed[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Operational status was changed on {HOST.NAME} interface {#SNMPVALUE}|<p>-</p>|<p>**Expression**: (last(/SNMP Omron UPS/ifOperStatus[{#SNMPVALUE}],#1)<>last(/SNMP Omron UPS/ifOperStatus[{#SNMPVALUE}],#2))=1</p><p>**Recovery expression**: </p>|information|
|Free disk space is less than 20% on volume {#SNMPVALUE}|<p>-</p>|<p>**Expression**: last(/SNMP Omron UPS/hrStorageUsed[{#SNMPVALUE}]) / last(/SNMP Omron UPS/hrStorageSize[{#SNMPVALUE}]) > 0.8</p><p>**Recovery expression**: </p>|warning|
|Operational status was changed on {HOST.NAME} interface {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: (last(/SNMP Omron UPS/ifOperStatus[{#SNMPVALUE}],#1)<>last(/SNMP Omron UPS/ifOperStatus[{#SNMPVALUE}],#2))=1</p><p>**Recovery expression**: </p>|information|
|Free disk space is less than 20% on volume {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: last(/SNMP Omron UPS/hrStorageUsed[{#SNMPVALUE}]) / last(/SNMP Omron UPS/hrStorageSize[{#SNMPVALUE}]) > 0.8</p><p>**Recovery expression**: </p>|warning|
