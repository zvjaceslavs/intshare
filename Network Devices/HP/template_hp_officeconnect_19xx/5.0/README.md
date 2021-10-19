# Template SNMP OfficeConnect 19XX

## Overview

SNMPV2


Works on Office Connect Switches  
1910  
1920  
1950


Low Level Discovery for:


* CPU
* Fan Status
* Interfaces (Ports) - includes Rx/Tx/Errors/Status
* Mac Address
* Memory Stats
* PSU
* Tempature Sensors
* Entity - includes Serial Number, Model Name, Firmware, Hardware revision, OS


 

## Author

Union College

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|PSU Discovery|<p>Discovering all entities of PhysicalClass - 6: powerSupply(6)</p>|`SNMP agent`|psu.discovery<p>Update: 3600</p>|
|Interfaces|<p>-</p>|`SNMP agent`|interfaces.discovery<p>Update: 3600</p>|
|Mac Address|<p>-</p>|`SNMP agent`|macaddress.discovery<p>Update: 3600</p>|
|Temperature Discovery|<p>Discovering modules temperature (same filter as in Module Discovery) plus and temperature sensors</p>|`SNMP agent`|temp.discovery<p>Update: 3600</p>|
|Memory Useage|<p>-</p>|`SNMP agent`|memoryusage.discovery<p>Update: 3600</p>|
|Entity Discovery|<p>-</p>|`SNMP agent`|entity.discovery<p>Update: 3600</p>|
|CPU|<p>-</p>|`SNMP agent`|cpu.discovery<p>Update: 3600</p>|
|Fan Discovery|<p>Discovering all entities of PhysicalClass - 7: fan(7)</p>|`SNMP agent`|fan.discovery<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Uptime|<p>-</p>|`SNMP agent`|Uptime<p>Update: 60</p>|
|{#ENT_NAME}: Power supply status (LLD)|<p>MIB: HH3C-ENTITY-EXT-MIB Indicate the error state of this entity object. psuError(51) means that the Power Supply Unit is in the state of fault. rpsError(61) means the Redundant Power Supply is in the state of fault.</p>|`SNMP agent`|sensor.psu.status[hh3cEntityExtErrorStatus.{#SNMPINDEX}]<p>Update: 60</p>|
|In Errors {#SNMPINDEX} (LLD)|<p>-</p>|`SNMP agent`|ifInErrors[{#SNMPINDEX}]<p>Update: 30</p>|
|Incoming traffic on interface {#SNMPINDEX} (LLD)|<p>-</p>|`SNMP agent`|ifInOctets[{#SNMPVALUE}]<p>Update: 10</p>|
|Status Port {#SNMPINDEX} (LLD)|<p>-</p>|`SNMP agent`|ifOperStatus[{#SNMPINDEX}]<p>Update: 60</p>|
|Out Errors {#SNMPINDEX} (LLD)|<p>-</p>|`SNMP agent`|ifOutErrors[{#SNMPINDEX}]<p>Update: 30</p>|
|Outgoing traffic on interface {#SNMPINDEX} (LLD)|<p>-</p>|`SNMP agent`|ifOutOctets[{#SNMPVALUE}]<p>Update: 10</p>|
|Base MAC Address (LLD)|<p>-</p>|`SNMP agent`|macaddress[{#SNMPINDEX}]<p>Update: 86400</p>|
|{#MODULE_NAME}: Temperature °C (LLD)|<p>MIB: HH3C-ENTITY-EXT-MIB The temperature for the {#MODULE_NAME}.</p>|`SNMP agent`|sensor.temp.value[hh3cEntityExtTemperature.{#SNMPINDEX}]<p>Update: 60</p>|
|{#MODULE_NAME}: Temperature °F (LLD)|<p>MIB: HH3C-ENTITY-EXT-MIB The temperature for the {#MODULE_NAME}.</p>|`Calculated`|sensor.tempf.value[hh3cEntityExtTemperature.{#SNMPINDEX}]<p>Update: 60</p>|
|Memory Total (LLD)|<p>-</p>|`SNMP agent`|memory.total[{#SNMPINDEX}]<p>Update: 86400</p>|
|Memory Useage (LLD)|<p>-</p>|`Calculated`|memoryusage.calc[{#SNMPINDEX}]<p>Update: 60</p>|
|Memory Usage % (LLD)|<p>-</p>|`SNMP agent`|memoryusage.perc[{#SNMPINDEX}]<p>Update: 60</p>|
|Firmware version (LLD)|<p>-</p>|`SNMP agent`|system.hw.firmware[entPhysicalFirmwareRev.{#SNMPINDEX}]<p>Update: 3600</p>|
|Hardware model name (LLD)|<p>-</p>|`SNMP agent`|system.hw.model[entPhysicalDescr.{#SNMPINDEX}]<p>Update: 3600</p>|
|Hardware serial number (LLD)|<p>-</p>|`SNMP agent`|system.hw.serialnumber[entPhysicalSerialNum.{#SNMPINDEX}]<p>Update: 3600</p>|
|Hardware version(revision) (LLD)|<p>-</p>|`SNMP agent`|system.hw.version[entPhysicalHardwareRev.{#SNMPINDEX}]<p>Update: 3600</p>|
|Operating system (LLD)|<p>-</p>|`SNMP agent`|system.sw.os[entPhysicalSoftwareRev.{#SNMPINDEX}]<p>Update: 3600</p>|
|CPU Percent Utilization (LLD)|<p>-</p>|`SNMP agent`|cpu[{#SNMPINDEX}]<p>Update: 30</p>|
|{#ENT_NAME}: Fan status (LLD)|<p>MIB: HH3C-ENTITY-EXT-MIB Indicate the error state of this entity object. fanError(41) means that the fan stops working.</p>|`SNMP agent`|sensor.fan.status[hh3cEntityExtErrorStatus.{#SNMPINDEX}]<p>Update: 60</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|CPU too high|<p>-</p>|<p>**Expression**: {Template SNMP OfficeConnect 19XX:cpu[{#SNMPINDEX}].last()}>85</p><p>**Recovery expression**: </p>|high|
|{#ENT_NAME}: Fan is in critical state|<p>41 = Fan Error 91 = Hardware Faulty</p>|<p>**Expression**: {Template SNMP OfficeConnect 19XX:sensor.fan.status[hh3cEntityExtErrorStatus.{#SNMPINDEX}].count(#1,41)}=1 or {Template SNMP OfficeConnect 19XX:sensor.fan.status[hh3cEntityExtErrorStatus.{#SNMPINDEX}].count(#1,91)}=1</p><p>**Recovery expression**: </p>|high|
|CRC Errors RX on {#SNMPINDEX}|<p>-</p>|<p>**Expression**: {Template SNMP OfficeConnect 19XX:ifInErrors[{#SNMPINDEX}].last()}>100</p><p>**Recovery expression**: </p>|warning|
|CRC Errors TX on {#SNMPINDEX}|<p>-</p>|<p>**Expression**: {Template SNMP OfficeConnect 19XX:ifOutErrors[{#SNMPINDEX}].last()}>100</p><p>**Recovery expression**: </p>|warning|
|Low free memory on {HOST.NAME}|<p>-</p>|<p>**Expression**: {Template SNMP OfficeConnect 19XX:memoryusage.perc[{#SNMPINDEX}].avg(15m)}>80</p><p>**Recovery expression**: </p>|average|
|{#ENT_NAME}: Power supply is in critical state|<p>-</p>|<p>**Expression**: {Template SNMP OfficeConnect 19XX:sensor.psu.status[hh3cEntityExtErrorStatus.{#SNMPINDEX}].count(#1,51,eq)}=1 or {Template SNMP OfficeConnect 19XX:sensor.psu.status[hh3cEntityExtErrorStatus.{#SNMPINDEX}].count(#1,61,eq)}=1</p><p>**Recovery expression**: </p>|disaster|
|{#SNMPVALUE}: Temp to high|<p>-</p>|<p>**Expression**: {Template SNMP OfficeConnect 19XX:sensor.temp.value[hh3cEntityExtTemperature.{#SNMPINDEX}].last()}>50</p><p>**Recovery expression**: </p>|high|
|{#ENT_NAME}: Power supply is in critical state (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP OfficeConnect 19XX:sensor.psu.status[hh3cEntityExtErrorStatus.{#SNMPINDEX}].count(#1,51,eq)}=1 or {Template SNMP OfficeConnect 19XX:sensor.psu.status[hh3cEntityExtErrorStatus.{#SNMPINDEX}].count(#1,61,eq)}=1</p><p>**Recovery expression**: </p>|disaster|
|CRC Errors RX on {#SNMPINDEX} (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP OfficeConnect 19XX:ifInErrors[{#SNMPINDEX}].last()}>100</p><p>**Recovery expression**: </p>|warning|
|CRC Errors TX on {#SNMPINDEX} (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP OfficeConnect 19XX:ifOutErrors[{#SNMPINDEX}].last()}>100</p><p>**Recovery expression**: </p>|warning|
|{#SNMPVALUE}: Temp to high (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP OfficeConnect 19XX:sensor.temp.value[hh3cEntityExtTemperature.{#SNMPINDEX}].last()}>50</p><p>**Recovery expression**: </p>|high|
|Low free memory on {HOST.NAME} (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP OfficeConnect 19XX:memoryusage.perc[{#SNMPINDEX}].avg(15m)}>80</p><p>**Recovery expression**: </p>|average|
|CPU too high (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP OfficeConnect 19XX:cpu[{#SNMPINDEX}].last()}>85</p><p>**Recovery expression**: </p>|high|
|{#ENT_NAME}: Fan is in critical state (LLD)|<p>41 = Fan Error 91 = Hardware Faulty</p>|<p>**Expression**: {Template SNMP OfficeConnect 19XX:sensor.fan.status[hh3cEntityExtErrorStatus.{#SNMPINDEX}].count(#1,41)}=1 or {Template SNMP OfficeConnect 19XX:sensor.fan.status[hh3cEntityExtErrorStatus.{#SNMPINDEX}].count(#1,91)}=1</p><p>**Recovery expression**: </p>|high|
