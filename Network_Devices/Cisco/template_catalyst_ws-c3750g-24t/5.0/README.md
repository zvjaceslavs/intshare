# Template SNMP Cisco WS3750

## Description

ciscoEnvMonState{ normal(1), warning(2), critical(3), shutdown(4), notPresent(5), notFunctioning(6) }

## Overview

Main device Items, fill for device inventory fields.


Signle and stacking configurations supported.


Full auto LLD for Network, Memory, Fan and Temperature values (if any reported by device).


 


Value mapping:


ciscoEnvMonState{normal(1), warning(2), critical(3), shutdown(4), notPresent(5), notFunctioning(6)}



## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Network Interfaces|<p>-</p>|`SNMP agent`|ifName<p>Update: 3600</p>|
|Environment Fans|<p>-</p>|`SNMP agent`|ciscoEnvMonFanStatusDescr<p>Update: 3600</p>|
|Processes Memory|<p>-</p>|`SNMP agent`|ciscoMemoryPoolName<p>Update: 3600</p>|
|Environment Temperature|<p>-</p>|`SNMP agent`|ciscoEnvMonTemperatureStatusDescr<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Device CPU utilization|<p>The time scale is set at 5 minute intervals. The value will be between 0% (idle) and 100% (very busy).</p>|`SNMP agent`|ciscoCpmCPUTotal5minRev<p>Update: 300</p>|
|Device manufacter mame|<p>-</p>|`External check`|echo.something["Cisco Systems"]<p>Update: 3600</p>|
|Device type|<p>-</p>|`SNMP agent`|entPhysicalDescr<p>Update: 3600</p>|
|Device firmware version|<p>Version number of the Firmware.</p>|`SNMP agent`|entPhysicalFirmwareRev<p>Update: 3600</p>|
|Device hardware version|<p>Version number of the Hardware.</p>|`SNMP agent`|entPhysicalHardwareRev<p>Update: 3600</p>|
|Device description|<p>A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software. It is mandatory that this only contain printable ASCII characters.</p>|`SNMP agent`|entPhysicalModelName<p>Update: 3600</p>|
|Device serial number|<p>-</p>|`SNMP agent`|entPhysicalSerialNum<p>Update: 3600</p>|
|Device contact details|<p>-</p>|`SNMP agent`|sysContact<p>Update: 3600</p>|
|Device full description|<p>Full text IOS description</p>|`SNMP agent`|sysDescr<p>Update: 3600</p>|
|Device location|<p>The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysLocation<p>Update: 3600</p>|
|Device name|<p>An administratively-assigned name for this managed node. By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysName<p>Update: 3600</p>|
|Device uptime|<p>The time since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|sysUpTime<p>Update: 300</p>|
|Admin status of interface $1|<p>INTEGER {up(1), down(2), testing(3)} The desired state of the interface. The testing(3) state indicates that no operational packets can be passed. When a managed system initializes, all interfaces start with ifAdminStatus in the down(2) state. As a result of either explicit management action or per configuration information retained by the managed system, ifAdminStatus is then changed to either the up(1) or testing(3) states (or remains in the down(2) state).</p>|`SNMP agent`|ifAdminStatus[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Outbound errors on interface $1|<p>For packet-oriented interfaces, the number of outbound packets that could not be transmitted because of errors. For character-oriented or fixed-length interfaces, the number of outbound transmission units that could not be transmitted because of errors. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|ifOutErrors[{#SNMPVALUE}]<p>Update: 3600</p><p>LLD</p>|
|Speed of interface {#SNMPVALUE}|<p>An estimate of the interface's current bandwidth in units of 1,000,000 bits per second. If this object reports a value of `n' then the speed of the interface is somewhere in the range of `n-500,000' to `n+499,999'. For interfaces which do not vary in bandwidth or for those where no accurate estimation can be made, this object should contain the nominal bandwidth. For a sub-layer which has no concept of bandwidth, this object should be zero.</p>|`SNMP agent`|ifHighSpeed[{#SNMPVALUE}]<p>Update: 3600</p><p>LLD</p>|
|Outgoing unicast packets on interface $1|<p>The total number of packets that higher-level protocols requested be transmitted, and which were not addressed to a multicast or broadcast address at this sub-layer, including those that were discarded or not sent. This object is a 64-bit version of ifOutUcastPkts. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|ifHCOutUcastPkts[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Outgoing traffic on interface $1|<p>The total number of octets transmitted out of the interface, including framing characters. This object is a 64-bit version of ifOutOctets. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|IfHCOutOctets[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Outgoing multicast packets on interface $1|<p>The total number of packets that higher-level protocols requested be transmitted, and which were addressed to a multicast address at this sub-layer, including those that were discarded or not sent. For a MAC layer protocol, this includes both Group and Functional addresses. This object is a 64-bit version of ifOutMulticastPkts. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|ifHCOutMulticastPkts[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Outgoing discarded packets on interface $1|<p>The number of outbound packets which were chosen to be discarded even though no errors had been detected to prevent their being transmitted. One possible reason for discarding such a packet could be to free up buffer space. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|ifOutDiscards[{#SNMPVALUE}]<p>Update: 3600</p><p>LLD</p>|
|Outgoing broadcast packets on interface $1|<p>The total number of packets that higher-level protocols requested be transmitted, and which were addressed to a broadcast address at this sub-layer, including those that were discarded or not sent. This object is a 64-bit version of ifOutBroadcastPkts. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|ifHCOutBroadcastPkts[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Operational status of interface $1|<p>INTEGER {up(1), down(2), testing(3), unknown(4), dormant(5), notPresent(6), lowerLayerDown(7)} he current operational state of the interface. The testing(3) state indicates that no operational packets can be passed. If ifAdminStatus is down(2) then ifOperStatus should be down(2). If ifAdminStatus is changed to up(1) then ifOperStatus should change to up(1) if the interface is ready to transmit and receive network traffic;it should change to dormant(5) if the interface is waiting for external actions (such as a serial line waiting for an incoming connection);it should remain in the down(2) state if and only if there is a fault that prevents it from going to the up(1) state;it should remain in the notPresent(6) state if the interface has missing (typically, hardware) components.</p>|`SNMP agent`|ifOperStatus[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Alias of interface $1|<p>This object is an 'alias' name for the interface as specified by a network manager, and provides a non-volatile 'handle' for the interface. On the first instantiation of an interface, the value ofifAlias associated with that interface is the zero-length string. As and when a value is written into an instance of ifAlias through a network management set operation, then the agent must retain the supplied value in the ifAlias instance associated with the same interface for as long as that interface remains instantiated, including across all re-initializations/reboots of the network management system, including those which result in a change of the interface's ifIndex value. An example of the value which a network manager might store in this object for a WAN interface is the (Telco's) circuit number/identifier of the interface. Some agents may support write-access only for interfaces having particular values of ifType. An agent which supports write access to this object is required to keep the value in non-volatile storage, but it may limit the length of new values depending on how much storage is already occupied by the current values for other interfaces.</p>|`SNMP agent`|ifAlias[{#SNMPVALUE}]<p>Update: 3600</p><p>LLD</p>|
|Incoming unicast packets on interface $1|<p>The number of packets, delivered by this sub-layer to a higher (sub-)layer, which were not addressed to a multicast or broadcast address at this sub-layer. This object is a 64-bit version of ifInUcastPkts. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|ifHCInUcastPkts[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Incoming traffic on interface $1|<p>The total number of octets received on the interface, including framing characters. This object is a 64-bit version of ifInOctets. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|ifHCInOctets[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Incoming multicast packets on interface $1|<p>The number of packets, delivered by this sub-layer to a higher (sub-)layer, which were addressed to a multicast address at this sub-layer. For a MAC layer protocol, this includes both Group and Functional addresses. This object is a 64-bit version of ifInMulticastPkts. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|ifHCInMulticastPkts[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Incoming discarded packets on interface $1|<p>The number of inbound packets which were chosen to be discarded even though no errors had been detected to prevent their being deliverable to a higher-layer protocol. One possible reason for discarding such a packet could be to free up buffer space. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|ifInDiscards[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Incoming broadcast packets on interface $1|<p>The number of packets, delivered by this sub-layer to a higher (sub-)layer, which were addressed to a broadcast address at this sub-layer. This object is a 64-bit version of ifInBroadcastPkts. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|ifHCInBroadcastPkts[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Inbound errors on interface $1|<p>For packet-oriented interfaces, the number of inbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of inbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|ifInErrors[{#SNMPVALUE}]<p>Update: 3600</p><p>LLD</p>|
|Description of interface $1|<p>A textual string containing information about the interface. This string should include the name of the manufacturer, the product name and the version of the interface hardware/software.</p>|`SNMP agent`|ifDescr[{#SNMPVALUE}]<p>Update: 3600</p><p>LLD</p>|
|Uptime of interface $1|<p>The value of sysUpTime at the time the interface entered its current operational state. If the current state was entered prior to the last re-initialization of the local network management subsystem, then this object contains a zero value.</p>|`SNMP agent`|ifLastChange[{#SNMPVALUE}]<p>Update: 3600</p><p>LLD</p>|
|Environment $1 status|<p>-</p>|`SNMP agent`|ciscoEnvMonFanState[{#SNMPVALUE}]<p>Update: 300</p><p>LLD</p>|
|Device memory $1 free|<p>-</p>|`SNMP agent`|ciscoMemoryPoolFree[{#SNMPVALUE}]<p>Update: 300</p><p>LLD</p>|
|Device memory $1 largest free|<p>-</p>|`SNMP agent`|ciscoMemoryPoolLargestFree[{#SNMPVALUE}]<p>Update: 300</p><p>LLD</p>|
|Device memory $1 used|<p>-</p>|`SNMP agent`|ciscoMemoryPoolUsed[{#SNMPVALUE}]<p>Update: 300</p><p>LLD</p>|
|Environment $1 temp. status|<p>CiscoEnvMonState (INTEGER) {normal(1), warning(2), critical(3), shutdown(4), notPresent(5), notFunctioning(6)} The current state of the testpoint being instrumented.</p>|`SNMP agent`|ciscoEnvMonTemperatureState[{#SNMPVALUE}]<p>Update: 300</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|{HOST.NAME} {#SNMPVALUE} fan critical|<p>-</p>|<p>**Expression**: {Template SNMP Cisco WS3750:ciscoEnvMonFanState[{#SNMPVALUE}].avg(#3)}=3</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} {#SNMPVALUE} fan failed|<p>-</p>|<p>**Expression**: {Template SNMP Cisco WS3750:ciscoEnvMonFanState[{#SNMPVALUE}].avg(#3)}=6</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} {#SNMPVALUE} fan warning|<p>-</p>|<p>**Expression**: {Template SNMP Cisco WS3750:ciscoEnvMonFanState[{#SNMPVALUE}].avg(#3)}=2</p><p>**Recovery expression**: </p>|warning|
|{HOST.NAME} {#SNMPVALUE} temperature critical|<p>-</p>|<p>**Expression**: {Template SNMP Cisco WS3750:ciscoEnvMonTemperatureState[{#SNMPVALUE}].last()}=6</p><p>**Recovery expression**: </p>|disaster|
|{HOST.NAME} {#SNMPVALUE} temperature emergency|<p>-</p>|<p>**Expression**: {Template SNMP Cisco WS3750:ciscoEnvMonTemperatureState[{#SNMPVALUE}].avg(#3)}=3</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} {#SNMPVALUE} temperature warning|<p>-</p>|<p>**Expression**: {Template SNMP Cisco WS3750:ciscoEnvMonTemperatureState[{#SNMPVALUE}].avg(#3)}=2</p><p>**Recovery expression**: </p>|warning|
|Incoming use on interface {#SNMPVALUE} exceed 80% for the last 5 minutes|<p>-</p>|<p>**Expression**: ({Template SNMP Cisco WS3750:ifHCInOctets[{#SNMPVALUE}].avg(300s)})> ({Template SNMP Cisco WS3750:ifHighSpeed[{#SNMPVALUE}].last()}*0.8)</p><p>**Recovery expression**: </p>|warning|
|Outgoing use on interface {#SNMPVALUE} exceed 80% for the last 5 minutes|<p>-</p>|<p>**Expression**: ({Template SNMP Cisco WS3750:IfHCOutOctets[{#SNMPVALUE}].avg(300s)})> ({Template SNMP Cisco WS3750:ifHighSpeed[{#SNMPVALUE}].last()}*0.8)</p><p>**Recovery expression**: </p>|warning|
|{HOST.NAME} link changed on {#SNMPVALUE}: {ITEM.VALUE1}|<p>-</p>|<p>**Expression**: {Template SNMP Cisco WS3750:ifOperStatus[{#SNMPVALUE}].max(#1)}=0 and {Template SNMP Cisco WS3750:ifOperStatus[{#SNMPVALUE}].max(#2)}=0</p><p>**Recovery expression**: </p>|disaster|
|Incoming use on interface {#SNMPVALUE} exceed 80% for the last 5 minutes (LLD)|<p>-</p>|<p>**Expression**: ({Template SNMP Cisco WS3750:ifHCInOctets[{#SNMPVALUE}].avg(300s)})> ({Template SNMP Cisco WS3750:ifHighSpeed[{#SNMPVALUE}].last()}*0.8)</p><p>**Recovery expression**: </p>|warning|
|Outgoing use on interface {#SNMPVALUE} exceed 80% for the last 5 minutes (LLD)|<p>-</p>|<p>**Expression**: ({Template SNMP Cisco WS3750:IfHCOutOctets[{#SNMPVALUE}].avg(300s)})> ({Template SNMP Cisco WS3750:ifHighSpeed[{#SNMPVALUE}].last()}*0.8)</p><p>**Recovery expression**: </p>|warning|
|{HOST.NAME} link changed on {#SNMPVALUE}: {ITEM.VALUE1} (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP Cisco WS3750:ifOperStatus[{#SNMPVALUE}].max(#1)}=0 and {Template SNMP Cisco WS3750:ifOperStatus[{#SNMPVALUE}].max(#2)}=0</p><p>**Recovery expression**: </p>|disaster|
|{HOST.NAME} {#SNMPVALUE} fan critical (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP Cisco WS3750:ciscoEnvMonFanState[{#SNMPVALUE}].avg(#3)}=3</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} {#SNMPVALUE} fan failed (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP Cisco WS3750:ciscoEnvMonFanState[{#SNMPVALUE}].avg(#3)}=6</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} {#SNMPVALUE} fan warning (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP Cisco WS3750:ciscoEnvMonFanState[{#SNMPVALUE}].avg(#3)}=2</p><p>**Recovery expression**: </p>|warning|
|{HOST.NAME} {#SNMPVALUE} temperature critical (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP Cisco WS3750:ciscoEnvMonTemperatureState[{#SNMPVALUE}].last()}=6</p><p>**Recovery expression**: </p>|disaster|
|{HOST.NAME} {#SNMPVALUE} temperature emergency (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP Cisco WS3750:ciscoEnvMonTemperatureState[{#SNMPVALUE}].avg(#3)}=3</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} {#SNMPVALUE} temperature warning (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP Cisco WS3750:ciscoEnvMonTemperatureState[{#SNMPVALUE}].avg(#3)}=2</p><p>**Recovery expression**: </p>|warning|
