# Template Net HP Enterprise Switch SNMPv3

## Description

Template Net HP Enterprise Switch, support SNMPv3 Original template Template Net HP Enterprise Switch SNMPv2 Ville Leinonen https://www.hacknetwork.org Version 1.0

## Overview

UPDATED: There was a bug in version 1.0


 


Template Net HP Enterprise Switch SNMPv3.xml


SNMPv3 support added, new macros:


{$SECURITY\_NAME} = Username


{$AUTH\_PASSPHRASE} = Authentication password


{$PRIV\_PASSPHRASE} = Encryption password


 


Template is just like V2 templates, but changed to support SNMPv3, please use SHA and AES128.


Linked templates:


- Template Module EtherLike-MIB SNMPv3.xml


- Template Module Interfaces SNMPv3xml


- Template Module Generic SNMPv3.xml


 



## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$CPU.UTIL.CRIT}|<p>-</p>|`90`|Text macro|
|{$FAN_CRIT_STATUS:"bad"}|<p>-</p>|`2`|Text macro|
|{$FAN_WARN_STATUS:"warning"}|<p>-</p>|`3`|Text macro|
|{$MEMORY.UTIL.MAX}|<p>-</p>|`90`|Text macro|
|{$PSU_CRIT_STATUS:"bad"}|<p>-</p>|`2`|Text macro|
|{$PSU_WARN_STATUS:"warning"}|<p>-</p>|`3`|Text macro|
|{$TEMP_CRIT}|<p>-</p>|`60`|Text macro|
|{$TEMP_CRIT_LOW}|<p>-</p>|`5`|Text macro|
|{$TEMP_WARN}|<p>-</p>|`50`|Text macro|
## Template links

|Name|
|----|
|Template Module ICMP Ping|
|Template Module Generic SNMPv3|
|Template Module Interfaces SNMPv3|
|Template Module EtherLike-MIB SNMPv3|
## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|PSU Discovery|<p>Discovering all entities of hpicfSensorObjectId that ends with: 11.2.3.7.8.3.1 - power supplies and are present</p>|`SNMP agent`|psu.discoveryV3<p>Update: 1h</p>|
|EtherLike-MIB Discovery|<p>Discovering interfaces from IF-MIB and EtherLike-MIB. Interfaces with up(1) Operational Status are discovered.</p>|`SNMP agent`|net.if.duplex.discoveryV3<p>Update: 1h</p>|
|Network interfaces discovery|<p>Discovering interfaces from IF-MIB.</p>|`SNMP agent`|net.if.discoveryV3<p>Update: 1h</p>|
|Temp Status Discovery|<p>Discovering all entities of hpicfSensorObjectId that ends with: 11.2.3.7.8.3.3 - over temp status and are present</p>|`SNMP agent`|temp.status.discoveryV3<p>Update: 1h</p>|
|Entity Discovery|<p>-</p>|`SNMP agent`|entity.discoveryV3<p>Update: 1h</p>|
|Temperature Discovery|<p>ENTITY-SENSORS-MIB::EntitySensorDataType discovery with celsius filter</p>|`SNMP agent`|temp.precision0.discoveryV3<p>Update: 1h</p>|
|Memory Discovery|<p>Discovery of NETSWITCH-MIB::hpLocalMemTable, A table that contains information on all the local memory for each slot.</p>|`SNMP agent`|memory.discoveryV3<p>Update: 1h</p>|
|FAN Discovery|<p>Discovering all entities of hpicfSensorObjectId that ends with: 11.2.3.7.8.3.2 - fans and are present</p>|`SNMP agent`|fan.discoveryV3<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|CPU utilization|<p>MIB: STATISTICS-MIB The CPU utilization in percent(%). Reference: http://h20564.www2.hpe.com/hpsc/doc/public/display?docId=emr_na-c02597344&sp4ts.oid=51079</p>|`SNMP agent`|system.cpu.util[hpSwitchV3CpuStat.0]<p>Update: 1m</p>|
|CPU utilization|<p>MIB: STATISTICS-MIB The CPU utilization in percent(%). Reference: http://h20564.www2.hpe.com/hpsc/doc/public/display?docId=emr_na-c02597344&sp4ts.oid=51079</p>|`SNMP agent`|system.cpu.utilV3[hpSwitchCpuStat.0]<p>Update: 1m</p>|
|Firmware version|<p>MIB: NETSWITCH-MIB Contains the operating code version number (also known as software or firmware). For example, a software version such as A.08.01 is described as follows: A the function set available in your router 08 the common release number 01 updates to the current common release</p>|`SNMP agent`|system.hw.firmwareV3<p>Update: 1h</p>|
|Hardware serial number|<p>MIB: SEMI-MIB</p>|`SNMP agent`|system.hw.serialnumberV3<p>Update: 1h</p>|
|{#ENT_DESCR}: Power supply status|<p>MIB: HP-ICF-CHASSIS Actual status indicated by the sensor: {#ENT_DESCR}</p>|`SNMP agent`|sensor.psu.statusV3[hpicfSensorStatus.{#SNMPINDEX}]<p>Update: 3m</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Duplex status|<p>MIB: EtherLike-MIB The current mode of operation of the MAC entity. 'unknown' indicates that the current duplex mode could not be determined. Management control of the duplex mode is accomplished through the MAU MIB. When an interface does not support autonegotiation, or when autonegotiation is not enabled, the duplex mode is controlled using ifMauDefaultType. When autonegotiation is supported and enabled, duplex mode is controlled using ifMauAutoNegAdvertisedBits. In either case, the currently operating duplex mode is reflected both in this object and in ifMauType. Note that this object provides redundant information with ifMauType. Normally, redundant objects are discouraged. However, in this instance, it allows a management application to determine the duplex status of an interface without having to know every possible value of ifMauType. This was felt to be sufficiently valuable to justify the redundancy. Reference: [IEEE 802.3 Std.], 30.3.1.1.32,aDuplexStatus.</p>|`SNMP agent`|net.if.duplex[dot3StatsDuplexStatus.{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Inbound packets discarded|<p>MIB: IF-MIB The number of inbound packets which were chosen to be discarded even though no errors had been detected to prevent their being deliverable to a higher-layer protocol. One possible reason for discarding such a packet could be to free up buffer space. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in.discardsV3[ifInDiscards.{#SNMPINDEX}]<p>Update: 3m</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Inbound packets with errors|<p>MIB: IF-MIB For packet-oriented interfaces, the number of inbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of inbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in.errorsV3[ifInErrors.{#SNMPINDEX}]<p>Update: 3m</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Bits received|<p>MIB: IF-MIB The total number of octets received on the interface, including framing characters. This object is a 64-bit version of ifInOctets. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.inV3[ifHCInOctets.{#SNMPINDEX}]<p>Update: 3m</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Outbound packets discarded|<p>MIB: IF-MIB The number of outbound packets which were chosen to be discarded even though no errors had been detected to prevent their being deliverable to a higher-layer protocol. One possible reason for discarding such a packet could be to free up buffer space. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out.discardsV3[ifOutDiscards.{#SNMPINDEX}]<p>Update: 3m</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Outbound packets with errors|<p>MIB: IF-MIB For packet-oriented interfaces, the number of outbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of outbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out.errorsV3[ifOutErrors.{#SNMPINDEX}]<p>Update: 3m</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Bits sent|<p>MIB: IF-MIB The total number of octets transmitted out of the interface, including framing characters. This object is a 64-bit version of ifOutOctets.Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.outV3[ifHCOutOctets.{#SNMPINDEX}]<p>Update: 3m</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Speed|<p>MIB: IF-MIB An estimate of the interface's current bandwidth in units of 1,000,000 bits per second. If this object reports a value of `n' then the speed of the interface is somewhere in the range of `n-500,000' to`n+499,999'. For interfaces which do not vary in bandwidth or for those where no accurate estimation can be made, this object should contain the nominal bandwidth. For a sub-layer which has no concept of bandwidth, this object should be zero.</p>|`SNMP agent`|net.if.speedV3[ifHighSpeed.{#SNMPINDEX}]<p>Update: 5m</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Operational status|<p>MIB: IF-MIB The current operational state of the interface. - The testing(3) state indicates that no operational packet scan be passed - If ifAdminStatus is down(2) then ifOperStatus should be down(2) - If ifAdminStatus is changed to up(1) then ifOperStatus should change to up(1) if the interface is ready to transmit and receive network traffic - It should change todormant(5) if the interface is waiting for external actions (such as a serial line waiting for an incoming connection) - It should remain in the down(2) state if and only if there is a fault that prevents it from going to the up(1) state - It should remain in the notPresent(6) state if the interface has missing(typically, hardware) components.</p>|`SNMP agent`|net.if.statusV3[ifOperStatus.{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Interface type|<p>MIB: IF-MIB The type of interface. Additional values for ifType are assigned by the Internet Assigned NumbersAuthority (IANA), through updating the syntax of the IANAifType textual convention.</p>|`SNMP agent`|net.if.type[ifTypeV3.{#SNMPINDEX}]<p>Update: 1h</p><p>LLD</p>|
|{#ENT_DESCR}: Temperature status|<p>MIB: HP-ICF-CHASSIS Actual status indicated by the sensor: {#ENT_DESCR}</p>|`SNMP agent`|sensor.temp.statusV3[hpicfSensorStatus.{#SNMPINDEX}]<p>Update: 3m</p><p>LLD</p>|
|{#ENT_NAME}: Hardware model name|<p>MIB: ENTITY-MIB</p>|`SNMP agent`|system.hw.modelV3[entPhysicalDescr.{#SNMPINDEX}]<p>Update: 1h</p><p>LLD</p>|
|{#ENT_NAME}: Hardware version(revision)|<p>MIB: ENTITY-MIB</p>|`SNMP agent`|system.hw.versionV3[entPhysicalHardwareRev.{#SNMPINDEX}]<p>Update: 1h</p><p>LLD</p>|
|{#SENSOR_INFO}: Temperature|<p>MIB: ENTITY-SENSORS-MIB The most recent measurement obtained by the agent for this sensor. To correctly interpret the value of this object, the associated entPhySensorType, entPhySensorScale, and entPhySensorPrecision objects must also be examined.</p>|`SNMP agent`|sensor.temp.valueV3[entPhySensorValue.{#SNMPINDEX}]<p>Update: 3m</p><p>LLD</p>|
|#{#SNMPVALUE}: Available memory|<p>MIB: NETSWITCH-MIB The number of available (unallocated) bytes.</p>|`SNMP agent`|vm.memory.availableV3[hpLocalMemFreeBytes.{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|#{#SNMPVALUE}: Total memory|<p>MIB: NETSWITCH-MIB The number of currently installed bytes.</p>|`SNMP agent`|vm.memory.totalV3[hpLocalMemTotalBytes.{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|#{#SNMPVALUE}: Used memory|<p>MIB: NETSWITCH-MIB The number of currently allocated bytes.</p>|`SNMP agent`|vm.memory.usedV3[hpLocalMemAllocBytes.{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|#{#SNMPVALUE}: Memory utilization|<p>Memory utilization in %</p>|`Calculated`|vm.memory.utilV3[snmp.{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|{#ENT_DESCR}: Fan status|<p>MIB: HP-ICF-CHASSIS Actual status indicated by the sensor: {#ENT_DESCR}</p>|`SNMP agent`|sensor.fan.statusV3[hpicfSensorStatus.{#SNMPINDEX}]<p>Update: 3m</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Interface {#IFNAME}({#IFALIAS}): Ethernet has changed to lower speed than it was before|<p>This Ethernet connection has transitioned down from its known maximum speed. This might be a sign of autonegotiation issues. Ack to close.</p>|<p>**Expression**: {Template Net HP Enterprise Switch SNMPv3:net.if.speedV3[ifHighSpeed.{#SNMPINDEX}].change()}<0 and {Template Net HP Enterprise Switch SNMPv3:net.if.speedV3[ifHighSpeed.{#SNMPINDEX}].last()}>0 and ( {Template Net HP Enterprise Switch SNMPv3:net.if.type[ifTypeV3.{#SNMPINDEX}].last()}=6 or {Template Net HP Enterprise Switch SNMPv3:net.if.type[ifTypeV3.{#SNMPINDEX}].last()}=7 or {Template Net HP Enterprise Switch SNMPv3:net.if.type[ifTypeV3.{#SNMPINDEX}].last()}=11 or {Template Net HP Enterprise Switch SNMPv3:net.if.type[ifTypeV3.{#SNMPINDEX}].last()}=62 or {Template Net HP Enterprise Switch SNMPv3:net.if.type[ifTypeV3.{#SNMPINDEX}].last()}=69 or {Template Net HP Enterprise Switch SNMPv3:net.if.type[ifTypeV3.{#SNMPINDEX}].last()}=117 ) and ({Template Net HP Enterprise Switch SNMPv3:net.if.statusV3[ifOperStatus.{#SNMPINDEX}].last()}<>2)</p><p>**Recovery expression**: ({Template Net HP Enterprise Switch SNMPv3:net.if.speedV3[ifHighSpeed.{#SNMPINDEX}].change()}>0 and {Template Net HP Enterprise Switch SNMPv3:net.if.speedV3[ifHighSpeed.{#SNMPINDEX}].prev()}>0) or ({Template Net HP Enterprise Switch SNMPv3:net.if.statusV3[ifOperStatus.{#SNMPINDEX}].last()}=2)</p>|information|
|Interface {#IFNAME}({#IFALIAS}): High bandwidth usage ( > {$IF.UTIL.MAX:"{#IFNAME}"}% )|<p>The network interface utilization is close to its estimated maximum bandwidth.</p>|<p>**Expression**: ({Template Net HP Enterprise Switch SNMPv3:net.if.inV3[ifHCInOctets.{#SNMPINDEX}].avg(15m)}>(90/100)*{Template Net HP Enterprise Switch SNMPv3:net.if.speedV3[ifHighSpeed.{#SNMPINDEX}].last()} or {Template Net HP Enterprise Switch SNMPv3:net.if.outV3[ifHCOutOctets.{#SNMPINDEX}].avg(15m)}>(90/100)*{Template Net HP Enterprise Switch SNMPv3:net.if.speedV3[ifHighSpeed.{#SNMPINDEX}].last()}) and {Template Net HP Enterprise Switch SNMPv3:net.if.speedV3[ifHighSpeed.{#SNMPINDEX}].last()}>0</p><p>**Recovery expression**: {Template Net HP Enterprise Switch SNMPv3:net.if.inV3[ifHCInOctets.{#SNMPINDEX}].avg(15m)}<((90-3)/100)*{Template Net HP Enterprise Switch SNMPv3:net.if.speedV3[ifHighSpeed.{#SNMPINDEX}].last()} and {Template Net HP Enterprise Switch SNMPv3:net.if.outV3[ifHCOutOctets.{#SNMPINDEX}].avg(15m)}<((90-3)/100)*{Template Net HP Enterprise Switch SNMPv3:net.if.speedV3[ifHighSpeed.{#SNMPINDEX}].last()}</p>|warning|
|Interface {#IFNAME}({#IFALIAS}): High error rate ( > {$IF.ERRORS.WARN:"{#IFNAME}"} for 5m)|<p>Recovers when below 80% of {$IF.ERRORS.WARN:"{#IFNAME}"} threshold</p>|<p>**Expression**: {Template Net HP Enterprise Switch SNMPv3:net.if.in.errorsV3[ifInErrors.{#SNMPINDEX}].min(5m)}>2 or {Template Net HP Enterprise Switch SNMPv3:net.if.out.errorsV3[ifOutErrors.{#SNMPINDEX}].min(5m)}>2</p><p>**Recovery expression**: {Template Net HP Enterprise Switch SNMPv3:net.if.in.errorsV3[ifInErrors.{#SNMPINDEX}].max(5m)}<2*0.8 and {Template Net HP Enterprise Switch SNMPv3:net.if.out.errorsV3[ifOutErrors.{#SNMPINDEX}].max(5m)}<2*0.8</p>|warning|
|Interface {#IFNAME}({#IFALIAS}): Link down|<p>This trigger expression works as follows: 1. Can be triggered if operations status is down. 2. {$IFCONTROL:"{#IFNAME}"}=1 - user can redefine Context macro to value - 0. That marks this interface as not important. No new trigger will be fired if this interface is down. 3. {TEMPLATE_NAME:METRIC.diff()}=1) - trigger fires only if operational status was up(1) sometime before. (So, do not fire 'ethernal off' interfaces.) WARNING: if closed manually - won't fire again on next poll, because of .diff.</p>|<p>**Expression**: 1=1 and ({Template Net HP Enterprise Switch SNMPv3:net.if.statusV3[ifOperStatus.{#SNMPINDEX}].last()}=2 and {Template Net HP Enterprise Switch SNMPv3:net.if.statusV3[ifOperStatus.{#SNMPINDEX}].diff()}=1)</p><p>**Recovery expression**: {Template Net HP Enterprise Switch SNMPv3:net.if.statusV3[ifOperStatus.{#SNMPINDEX}].last()}<>2</p>|average|
|Interface {#IFNAME}({#IFALIAS}): In half-duplex mode|<p>Please check autonegotiation settings and cabling</p>|<p>**Expression**: {Template Net HP Enterprise Switch SNMPv3:net.if.duplex[dot3StatsDuplexStatus.{#SNMPINDEX}].last()}=2</p><p>**Recovery expression**: </p>|warning|
|{#ENT_DESCR}: Fan is in critical state|<p>Please check the fan unit</p>|<p>**Expression**: {Template Net HP Enterprise Switch SNMPv3:sensor.fan.statusV3[hpicfSensorStatus.{#SNMPINDEX}].count(#1,2,eq)}=1</p><p>**Recovery expression**: </p>|average|
|{#ENT_DESCR}: Fan is in warning state|<p>Please check the fan unit</p>|<p>**Expression**: {Template Net HP Enterprise Switch SNMPv3:sensor.fan.statusV3[hpicfSensorStatus.{#SNMPINDEX}].count(#1,3,eq)}=1</p><p>**Recovery expression**: </p>|warning|
|#{#SNMPVALUE}: High memory utilization ( >{$MEMORY.UTIL.MAX}% for 5m)|<p>The system is running out of free memory.</p>|<p>**Expression**: {Template Net HP Enterprise Switch SNMPv3:vm.memory.utilV3[snmp.{#SNMPINDEX}].min(5m)}>90</p><p>**Recovery expression**: </p>|average|
|{#ENT_DESCR}: Power supply is in critical state|<p>Please check the power supply unit for errors</p>|<p>**Expression**: {Template Net HP Enterprise Switch SNMPv3:sensor.psu.statusV3[hpicfSensorStatus.{#SNMPINDEX}].count(#1,2,eq)}=1</p><p>**Recovery expression**: </p>|average|
|{#ENT_DESCR}: Power supply is in warning state|<p>Please check the power supply unit for errors</p>|<p>**Expression**: {Template Net HP Enterprise Switch SNMPv3:sensor.psu.statusV3[hpicfSensorStatus.{#SNMPINDEX}].count(#1,3,eq)}=1</p><p>**Recovery expression**: </p>|warning|
|{#SENSOR_INFO}: Temperature is above critical threshold: >{$TEMP_CRIT:""}|<p>This trigger uses temperature sensor values as well as temperature sensor status if available</p>|<p>**Expression**: {Template Net HP Enterprise Switch SNMPv3:sensor.temp.valueV3[entPhySensorValue.{#SNMPINDEX}].avg(5m)}>60</p><p>**Recovery expression**: {Template Net HP Enterprise Switch SNMPv3:sensor.temp.valueV3[entPhySensorValue.{#SNMPINDEX}].max(5m)}<60-3</p>|high|
|{#SENSOR_INFO}: Temperature is above warning threshold: >{$TEMP_WARN:""}|<p>This trigger uses temperature sensor values as well as temperature sensor status if available</p>|<p>**Expression**: {Template Net HP Enterprise Switch SNMPv3:sensor.temp.valueV3[entPhySensorValue.{#SNMPINDEX}].avg(5m)}>50</p><p>**Recovery expression**: {Template Net HP Enterprise Switch SNMPv3:sensor.temp.valueV3[entPhySensorValue.{#SNMPINDEX}].max(5m)}<50-3</p>|warning|
|{#SENSOR_INFO}: Temperature is too low: <{$TEMP_CRIT_LOW:""}|<p>-</p>|<p>**Expression**: {Template Net HP Enterprise Switch SNMPv3:sensor.temp.valueV3[entPhySensorValue.{#SNMPINDEX}].avg(5m)}<5</p><p>**Recovery expression**: {Template Net HP Enterprise Switch SNMPv3:sensor.temp.valueV3[entPhySensorValue.{#SNMPINDEX}].min(5m)}>5+3</p>|average|
|{#ENT_DESCR}: Power supply is in critical state (LLD)|<p>Please check the power supply unit for errors</p>|<p>**Expression**: {Template Net HP Enterprise Switch SNMPv3:sensor.psu.statusV3[hpicfSensorStatus.{#SNMPINDEX}].count(#1,2,eq)}=1</p><p>**Recovery expression**: </p>|average|
|{#ENT_DESCR}: Power supply is in warning state (LLD)|<p>Please check the power supply unit for errors</p>|<p>**Expression**: {Template Net HP Enterprise Switch SNMPv3:sensor.psu.statusV3[hpicfSensorStatus.{#SNMPINDEX}].count(#1,3,eq)}=1</p><p>**Recovery expression**: </p>|warning|
|Interface {#IFNAME}({#IFALIAS}): In half-duplex mode (LLD)|<p>Please check autonegotiation settings and cabling</p>|<p>**Expression**: {Template Net HP Enterprise Switch SNMPv3:net.if.duplex[dot3StatsDuplexStatus.{#SNMPINDEX}].last()}=2</p><p>**Recovery expression**: </p>|warning|
|Interface {#IFNAME}({#IFALIAS}): Ethernet has changed to lower speed than it was before (LLD)|<p>This Ethernet connection has transitioned down from its known maximum speed. This might be a sign of autonegotiation issues. Ack to close.</p>|<p>**Expression**: {Template Net HP Enterprise Switch SNMPv3:net.if.speedV3[ifHighSpeed.{#SNMPINDEX}].change()}<0 and {Template Net HP Enterprise Switch SNMPv3:net.if.speedV3[ifHighSpeed.{#SNMPINDEX}].last()}>0 and ( {Template Net HP Enterprise Switch SNMPv3:net.if.type[ifTypeV3.{#SNMPINDEX}].last()}=6 or {Template Net HP Enterprise Switch SNMPv3:net.if.type[ifTypeV3.{#SNMPINDEX}].last()}=7 or {Template Net HP Enterprise Switch SNMPv3:net.if.type[ifTypeV3.{#SNMPINDEX}].last()}=11 or {Template Net HP Enterprise Switch SNMPv3:net.if.type[ifTypeV3.{#SNMPINDEX}].last()}=62 or {Template Net HP Enterprise Switch SNMPv3:net.if.type[ifTypeV3.{#SNMPINDEX}].last()}=69 or {Template Net HP Enterprise Switch SNMPv3:net.if.type[ifTypeV3.{#SNMPINDEX}].last()}=117 ) and ({Template Net HP Enterprise Switch SNMPv3:net.if.statusV3[ifOperStatus.{#SNMPINDEX}].last()}<>2)</p><p>**Recovery expression**: ({Template Net HP Enterprise Switch SNMPv3:net.if.speedV3[ifHighSpeed.{#SNMPINDEX}].change()}>0 and {Template Net HP Enterprise Switch SNMPv3:net.if.speedV3[ifHighSpeed.{#SNMPINDEX}].prev()}>0) or ({Template Net HP Enterprise Switch SNMPv3:net.if.statusV3[ifOperStatus.{#SNMPINDEX}].last()}=2)</p>|information|
|Interface {#IFNAME}({#IFALIAS}): High bandwidth usage ( > {$IF.UTIL.MAX:"{#IFNAME}"}% ) (LLD)|<p>The network interface utilization is close to its estimated maximum bandwidth.</p>|<p>**Expression**: ({Template Net HP Enterprise Switch SNMPv3:net.if.inV3[ifHCInOctets.{#SNMPINDEX}].avg(15m)}>(90/100)*{Template Net HP Enterprise Switch SNMPv3:net.if.speedV3[ifHighSpeed.{#SNMPINDEX}].last()} or {Template Net HP Enterprise Switch SNMPv3:net.if.outV3[ifHCOutOctets.{#SNMPINDEX}].avg(15m)}>(90/100)*{Template Net HP Enterprise Switch SNMPv3:net.if.speedV3[ifHighSpeed.{#SNMPINDEX}].last()}) and {Template Net HP Enterprise Switch SNMPv3:net.if.speedV3[ifHighSpeed.{#SNMPINDEX}].last()}>0</p><p>**Recovery expression**: {Template Net HP Enterprise Switch SNMPv3:net.if.inV3[ifHCInOctets.{#SNMPINDEX}].avg(15m)}<((90-3)/100)*{Template Net HP Enterprise Switch SNMPv3:net.if.speedV3[ifHighSpeed.{#SNMPINDEX}].last()} and {Template Net HP Enterprise Switch SNMPv3:net.if.outV3[ifHCOutOctets.{#SNMPINDEX}].avg(15m)}<((90-3)/100)*{Template Net HP Enterprise Switch SNMPv3:net.if.speedV3[ifHighSpeed.{#SNMPINDEX}].last()}</p>|warning|
|Interface {#IFNAME}({#IFALIAS}): High error rate ( > {$IF.ERRORS.WARN:"{#IFNAME}"} for 5m) (LLD)|<p>Recovers when below 80% of {$IF.ERRORS.WARN:"{#IFNAME}"} threshold</p>|<p>**Expression**: {Template Net HP Enterprise Switch SNMPv3:net.if.in.errorsV3[ifInErrors.{#SNMPINDEX}].min(5m)}>2 or {Template Net HP Enterprise Switch SNMPv3:net.if.out.errorsV3[ifOutErrors.{#SNMPINDEX}].min(5m)}>2</p><p>**Recovery expression**: {Template Net HP Enterprise Switch SNMPv3:net.if.in.errorsV3[ifInErrors.{#SNMPINDEX}].max(5m)}<2*0.8 and {Template Net HP Enterprise Switch SNMPv3:net.if.out.errorsV3[ifOutErrors.{#SNMPINDEX}].max(5m)}<2*0.8</p>|warning|
|Interface {#IFNAME}({#IFALIAS}): Link down (LLD)|<p>This trigger expression works as follows: 1. Can be triggered if operations status is down. 2. {$IFCONTROL:"{#IFNAME}"}=1 - user can redefine Context macro to value - 0. That marks this interface as not important. No new trigger will be fired if this interface is down. 3. {TEMPLATE_NAME:METRIC.diff()}=1) - trigger fires only if operational status was up(1) sometime before. (So, do not fire 'ethernal off' interfaces.) WARNING: if closed manually - won't fire again on next poll, because of .diff.</p>|<p>**Expression**: 1=1 and ({Template Net HP Enterprise Switch SNMPv3:net.if.statusV3[ifOperStatus.{#SNMPINDEX}].last()}=2 and {Template Net HP Enterprise Switch SNMPv3:net.if.statusV3[ifOperStatus.{#SNMPINDEX}].diff()}=1)</p><p>**Recovery expression**: {Template Net HP Enterprise Switch SNMPv3:net.if.statusV3[ifOperStatus.{#SNMPINDEX}].last()}<>2</p>|average|
|{#SENSOR_INFO}: Temperature is above critical threshold: >{$TEMP_CRIT:""} (LLD)|<p>This trigger uses temperature sensor values as well as temperature sensor status if available</p>|<p>**Expression**: {Template Net HP Enterprise Switch SNMPv3:sensor.temp.valueV3[entPhySensorValue.{#SNMPINDEX}].avg(5m)}>60</p><p>**Recovery expression**: {Template Net HP Enterprise Switch SNMPv3:sensor.temp.valueV3[entPhySensorValue.{#SNMPINDEX}].max(5m)}<60-3</p>|high|
|{#SENSOR_INFO}: Temperature is above warning threshold: >{$TEMP_WARN:""} (LLD)|<p>This trigger uses temperature sensor values as well as temperature sensor status if available</p>|<p>**Expression**: {Template Net HP Enterprise Switch SNMPv3:sensor.temp.valueV3[entPhySensorValue.{#SNMPINDEX}].avg(5m)}>50</p><p>**Recovery expression**: {Template Net HP Enterprise Switch SNMPv3:sensor.temp.valueV3[entPhySensorValue.{#SNMPINDEX}].max(5m)}<50-3</p>|warning|
|{#SENSOR_INFO}: Temperature is too low: <{$TEMP_CRIT_LOW:""} (LLD)|<p>-</p>|<p>**Expression**: {Template Net HP Enterprise Switch SNMPv3:sensor.temp.valueV3[entPhySensorValue.{#SNMPINDEX}].avg(5m)}<5</p><p>**Recovery expression**: {Template Net HP Enterprise Switch SNMPv3:sensor.temp.valueV3[entPhySensorValue.{#SNMPINDEX}].min(5m)}>5+3</p>|average|
|#{#SNMPVALUE}: High memory utilization ( >{$MEMORY.UTIL.MAX}% for 5m) (LLD)|<p>The system is running out of free memory.</p>|<p>**Expression**: {Template Net HP Enterprise Switch SNMPv3:vm.memory.utilV3[snmp.{#SNMPINDEX}].min(5m)}>90</p><p>**Recovery expression**: </p>|average|
|{#ENT_DESCR}: Fan is in critical state (LLD)|<p>Please check the fan unit</p>|<p>**Expression**: {Template Net HP Enterprise Switch SNMPv3:sensor.fan.statusV3[hpicfSensorStatus.{#SNMPINDEX}].count(#1,2,eq)}=1</p><p>**Recovery expression**: </p>|average|
|{#ENT_DESCR}: Fan is in warning state (LLD)|<p>Please check the fan unit</p>|<p>**Expression**: {Template Net HP Enterprise Switch SNMPv3:sensor.fan.statusV3[hpicfSensorStatus.{#SNMPINDEX}].count(#1,3,eq)}=1</p><p>**Recovery expression**: </p>|warning|
