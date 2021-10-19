# Template Net HP Enterprise Switch SNMPv3

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

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

There are no template links in this template.

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
|Device description|<p>MIB: SNMPv2-MIB A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|system.descr<p>Update: 3600</p>|
|Device contact details|<p>MIB: SNMPv2-MIB The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|system.contact<p>Update: 3600</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|CPU utilization|<p>MIB: STATISTICS-MIB The CPU utilization in percent(%). Reference: http://h20564.www2.hpe.com/hpsc/doc/public/display?docId=emr_na-c02597344&sp4ts.oid=51079</p>|`SNMP agent`|system.cpu.utilV3[hpSwitchCpuStat.0]<p>Update: 1m</p>|
|Firmware version|<p>MIB: NETSWITCH-MIB Contains the operating code version number (also known as software or firmware). For example, a software version such as A.08.01 is described as follows: A the function set available in your router 08 the common release number 01 updates to the current common release</p>|`SNMP agent`|system.hw.firmwareV3<p>Update: 1h</p>|
|SNMP availability|<p>-</p>|`Zabbix internal`|zabbix[host,snmp,available]<p>Update: 60</p>|
|Device location|<p>MIB: SNMPv2-MIB The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|system.location<p>Update: 3600</p>|
|SNMP traps (fallback)|<p>Item is used to collect all SNMP traps unmatched by other snmptrap items</p>|`SNMP trap`|snmptrap.fallback<p>Update: 300</p>|
|System object ID|<p>MIB: SNMPv2-MIB The vendor's authoritative identification of the network management subsystem contained in the entity. This value is allocated within the SMI enterprises subtree (1.3.6.1.4.1) and provides an easy and unambiguous means for determining`what kind of box' is being managed. For example, if vendor`Flintstones, Inc.' was assigned the subtree1.3.6.1.4.1.4242, it could assign the identifier 1.3.6.1.4.1.4242.1.1 to its `Fred Router'.</p>|`SNMP agent`|system.objectid<p>Update: 3600</p>|
|CPU utilization|<p>MIB: STATISTICS-MIB The CPU utilization in percent(%). Reference: http://h20564.www2.hpe.com/hpsc/doc/public/display?docId=emr_na-c02597344&sp4ts.oid=51079</p>|`SNMP agent`|system.cpu.util[hpSwitchV3CpuStat.0]<p>Update: 1m</p>|
|Device uptime|<p>MIB: SNMPv2-MIB The time (in hundredths of a second) since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|system.uptime<p>Update: 120s</p>|
|Hardware serial number|<p>MIB: SEMI-MIB</p>|`SNMP agent`|system.hw.serialnumberV3<p>Update: 1h</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 60</p>|
|Device name|<p>MIB: SNMPv2-MIB An administratively-assigned name for this managed node.By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|system.name<p>Update: 3600</p>|
|{#ENT_DESCR}: Power supply status|<p>MIB: HP-ICF-CHASSIS Actual status indicated by the sensor: {#ENT_DESCR}</p>|`SNMP agent`|sensor.psu.statusV3[hpicfSensorStatus.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFNAME}({#IFALIAS}): Duplex status|<p>MIB: EtherLike-MIB The current mode of operation of the MAC entity. 'unknown' indicates that the current duplex mode could not be determined. Management control of the duplex mode is accomplished through the MAU MIB. When an interface does not support autonegotiation, or when autonegotiation is not enabled, the duplex mode is controlled using ifMauDefaultType. When autonegotiation is supported and enabled, duplex mode is controlled using ifMauAutoNegAdvertisedBits. In either case, the currently operating duplex mode is reflected both in this object and in ifMauType. Note that this object provides redundant information with ifMauType. Normally, redundant objects are discouraged. However, in this instance, it allows a management application to determine the duplex status of an interface without having to know every possible value of ifMauType. This was felt to be sufficiently valuable to justify the redundancy. Reference: [IEEE 802.3 Std.], 30.3.1.1.32,aDuplexStatus.</p>|`SNMP agent`|net.if.duplex[dot3StatsDuplexStatus.{#SNMPINDEX}]<p>Update: 1m</p>|
|Interface {#IFNAME}({#IFALIAS}): Inbound packets discarded|<p>MIB: IF-MIB The number of inbound packets which were chosen to be discarded even though no errors had been detected to prevent their being deliverable to a higher-layer protocol. One possible reason for discarding such a packet could be to free up buffer space. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in.discardsV3[ifInDiscards.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFNAME}({#IFALIAS}): Inbound packets with errors|<p>MIB: IF-MIB For packet-oriented interfaces, the number of inbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of inbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in.errorsV3[ifInErrors.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFNAME}({#IFALIAS}): Bits received|<p>MIB: IF-MIB The total number of octets received on the interface, including framing characters. This object is a 64-bit version of ifInOctets. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.inV3[ifHCInOctets.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFNAME}({#IFALIAS}): Outbound packets discarded|<p>MIB: IF-MIB The number of outbound packets which were chosen to be discarded even though no errors had been detected to prevent their being deliverable to a higher-layer protocol. One possible reason for discarding such a packet could be to free up buffer space. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out.discardsV3[ifOutDiscards.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFNAME}({#IFALIAS}): Outbound packets with errors|<p>MIB: IF-MIB For packet-oriented interfaces, the number of outbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of outbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out.errorsV3[ifOutErrors.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFNAME}({#IFALIAS}): Bits sent|<p>MIB: IF-MIB The total number of octets transmitted out of the interface, including framing characters. This object is a 64-bit version of ifOutOctets.Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.outV3[ifHCOutOctets.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFNAME}({#IFALIAS}): Speed|<p>MIB: IF-MIB An estimate of the interface's current bandwidth in units of 1,000,000 bits per second. If this object reports a value of `n' then the speed of the interface is somewhere in the range of `n-500,000' to`n+499,999'. For interfaces which do not vary in bandwidth or for those where no accurate estimation can be made, this object should contain the nominal bandwidth. For a sub-layer which has no concept of bandwidth, this object should be zero.</p>|`SNMP agent`|net.if.speedV3[ifHighSpeed.{#SNMPINDEX}]<p>Update: 5m</p>|
|Interface {#IFNAME}({#IFALIAS}): Operational status|<p>MIB: IF-MIB The current operational state of the interface. - The testing(3) state indicates that no operational packet scan be passed - If ifAdminStatus is down(2) then ifOperStatus should be down(2) - If ifAdminStatus is changed to up(1) then ifOperStatus should change to up(1) if the interface is ready to transmit and receive network traffic - It should change todormant(5) if the interface is waiting for external actions (such as a serial line waiting for an incoming connection) - It should remain in the down(2) state if and only if there is a fault that prevents it from going to the up(1) state - It should remain in the notPresent(6) state if the interface has missing(typically, hardware) components.</p>|`SNMP agent`|net.if.statusV3[ifOperStatus.{#SNMPINDEX}]<p>Update: 1m</p>|
|Interface {#IFNAME}({#IFALIAS}): Interface type|<p>MIB: IF-MIB The type of interface. Additional values for ifType are assigned by the Internet Assigned NumbersAuthority (IANA), through updating the syntax of the IANAifType textual convention.</p>|`SNMP agent`|net.if.type[ifTypeV3.{#SNMPINDEX}]<p>Update: 1h</p>|
|{#ENT_DESCR}: Temperature status|<p>MIB: HP-ICF-CHASSIS Actual status indicated by the sensor: {#ENT_DESCR}</p>|`SNMP agent`|sensor.temp.statusV3[hpicfSensorStatus.{#SNMPINDEX}]<p>Update: 3m</p>|
|{#ENT_NAME}: Hardware model name|<p>MIB: ENTITY-MIB</p>|`SNMP agent`|system.hw.modelV3[entPhysicalDescr.{#SNMPINDEX}]<p>Update: 1h</p>|
|{#ENT_NAME}: Hardware version(revision)|<p>MIB: ENTITY-MIB</p>|`SNMP agent`|system.hw.versionV3[entPhysicalHardwareRev.{#SNMPINDEX}]<p>Update: 1h</p>|
|{#SENSOR_INFO}: Temperature|<p>MIB: ENTITY-SENSORS-MIB The most recent measurement obtained by the agent for this sensor. To correctly interpret the value of this object, the associated entPhySensorType, entPhySensorScale, and entPhySensorPrecision objects must also be examined.</p>|`SNMP agent`|sensor.temp.valueV3[entPhySensorValue.{#SNMPINDEX}]<p>Update: 3m</p>|
|#{#SNMPVALUE}: Available memory|<p>MIB: NETSWITCH-MIB The number of available (unallocated) bytes.</p>|`SNMP agent`|vm.memory.availableV3[hpLocalMemFreeBytes.{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPVALUE}: Total memory|<p>MIB: NETSWITCH-MIB The number of currently installed bytes.</p>|`SNMP agent`|vm.memory.totalV3[hpLocalMemTotalBytes.{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPVALUE}: Used memory|<p>MIB: NETSWITCH-MIB The number of currently allocated bytes.</p>|`SNMP agent`|vm.memory.usedV3[hpLocalMemAllocBytes.{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPVALUE}: Memory utilization|<p>Memory utilization in %</p>|`Calculated`|vm.memory.utilV3[snmp.{#SNMPINDEX}]<p>Update: 1m</p>|
|{#ENT_DESCR}: Fan status|<p>MIB: HP-ICF-CHASSIS Actual status indicated by the sensor: {#ENT_DESCR}</p>|`SNMP agent`|sensor.fan.statusV3[hpicfSensorStatus.{#SNMPINDEX}]<p>Update: 3m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Unavailable by ICMP ping|<p>Last value: {ITEM.LASTVALUE1}. Last three attempts returned timeout. Please check device connectivity.</p>|high|
|High ICMP ping loss|<p>-</p>|warning|
|High ICMP ping response time|<p>-</p>|warning|
|No SNMP data collection|<p>Last value: {ITEM.LASTVALUE1}. SNMP is not available for polling. Please check device connectivity and SNMP settings.</p>|warning|
|{HOST.NAME} has been restarted|<p>Last value: {ITEM.LASTVALUE1}. The device uptime is less than 10 minutes</p>|warning|
|High CPU utilization (over {$CPU.UTIL.CRIT}% for 5m)|<p>CPU utilization is too high. The system might be slow to respond.</p>|warning|
|High CPU utilization (over {$CPU.UTIL.CRIT}% for 5m)|<p>CPU utilization is too high. The system might be slow to respond.</p>|warning|
|Firmware has changed|<p>Firmware version has changed. Ack to close</p>|information|
|Device has been replaced (new serial number received)|<p>Device serial number has changed. Ack to close</p>|information|
|{#ENT_DESCR}: Power supply is in critical state|<p>Please check the power supply unit for errors</p>|average|
|{#ENT_DESCR}: Power supply is in warning state|<p>Please check the power supply unit for errors</p>|warning|
|Interface {#IFNAME}({#IFALIAS}): In half-duplex mode|<p>Please check autonegotiation settings and cabling</p>|warning|
|Interface {#IFNAME}({#IFALIAS}): Ethernet has changed to lower speed than it was before|<p>This Ethernet connection has transitioned down from its known maximum speed. This might be a sign of autonegotiation issues. Ack to close.</p>|information|
|Interface {#IFNAME}({#IFALIAS}): High bandwidth usage ( > {$IF.UTIL.MAX:"{#IFNAME}"}% )|<p>The network interface utilization is close to its estimated maximum bandwidth.</p>|warning|
|Interface {#IFNAME}({#IFALIAS}): High error rate ( > {$IF.ERRORS.WARN:"{#IFNAME}"} for 5m)|<p>Recovers when below 80% of {$IF.ERRORS.WARN:"{#IFNAME}"} threshold</p>|warning|
|Interface {#IFNAME}({#IFALIAS}): Link down|<p>This trigger expression works as follows: 1. Can be triggered if operations status is down. 2. {$IFCONTROL:"{#IFNAME}"}=1 - user can redefine Context macro to value - 0. That marks this interface as not important. No new trigger will be fired if this interface is down. 3. {TEMPLATE_NAME:METRIC.diff()}=1) - trigger fires only if operational status was up(1) sometime before. (So, do not fire 'ethernal off' interfaces.) WARNING: if closed manually - won't fire again on next poll, because of .diff.</p>|average|
|{#SENSOR_INFO}: Temperature is above critical threshold: >{$TEMP_CRIT:""}|<p>This trigger uses temperature sensor values as well as temperature sensor status if available</p>|high|
|{#SENSOR_INFO}: Temperature is above warning threshold: >{$TEMP_WARN:""}|<p>This trigger uses temperature sensor values as well as temperature sensor status if available</p>|warning|
|{#SENSOR_INFO}: Temperature is too low: <{$TEMP_CRIT_LOW:""}|<p>-</p>|average|
|#{#SNMPVALUE}: High memory utilization ( >{$MEMORY.UTIL.MAX}% for 5m)|<p>The system is running out of free memory.</p>|average|
|{#ENT_DESCR}: Fan is in critical state|<p>Please check the fan unit</p>|average|
|{#ENT_DESCR}: Fan is in warning state|<p>Please check the fan unit</p>|warning|
