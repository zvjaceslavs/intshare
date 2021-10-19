# NEXUS 9000

## Overview

Hi


Here is a template for Cisco Nexus 9000. 


Not tested with 7000 but it should work aswell. 


 


This template includes Interfaces monitoring, hardware monitoring and also vPC monitoring. 


I created SNMP discovery rules to get it done. 


 


Thanks you. 


Do not hesitate if you have questions. 

## Author

Vincent Matias

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$CPU_USAGE_MAX}|<p>-</p>|`90`|Text macro|
|{$NAME}|<p>-</p>|`toreplace`|Text macro|
|{$SNMP_COMMUNITY}|<p>-</p>|``|Text macro|
## Template links

|Name|
|----|
|Template Module ICMP Ping|
|Template Module Interfaces SNMPv2|
## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|CPU Total load|<p>The entPhysicalIndex of the physical entity for which the CPU statistics in this entry are maintained. The physical entity can be a CPU chip, a group of CPUs, a CPU card etc. The exact type of this entity is described by its entPhysicalVendorType value. If the CPU statistics in this entry correspond to more than one physical entity (or to no physical entity), or if the entPhysicalTable is not supported on the SNMP agent, the value of this object must be zero.</p>|`SNMP agent`|cpmCPUTotalPhysicalIndex<p>Update: 1h</p>|
|VPC Host link status|<p>-</p>|`SNMP agent`|cVpcStatusHostLinkStatus<p>Update: 1h</p>|
|Network Interfaces Discovery|<p>Discovering interfaces from IF-MIB. Interfaces with down(2) Administrative Status are not discovered.</p>|`SNMP agent`|net.if.discovery<p>Update: 300</p>|
|VPC Role status|<p>-</p>|`SNMP agent`|cVpcRoleStatus<p>Update: 1h</p>|
|VPC Host link consistency  status|<p>-</p>|`SNMP agent`|cVpcStatusHostLinkConsistencyStatus<p>Update: 1h</p>|
|VPC Keep alive status|<p>-</p>|`SNMP agent`|cVpcPeerKeepAliveStatus<p>Update: 1h</p>|
|Fans operational status|<p>-</p>|`SNMP agent`|cefcFanTrayOperStatus<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Current connections|<p>-</p>|`SNMP agent`|fortinetCurrentConnections<p>Update: 60</p>|
|Current CPU Util|<p>-</p>|`SNMP agent`|fortinetCurrentCPUUtil<p>Update: 60</p>|
|Current RAM Usage|<p>-</p>|`SNMP agent`|fortinetCurrentRAMUtil<p>Update: 60</p>|
|Serial Number|<p>-</p>|`SNMP agent`|fortinetSysSerial<p>Update: 3600</p>|
|Total storage space|<p>-</p>|`SNMP agent`|fortinetTotalStorage<p>Update: 3600</p>|
|Fortinet Uptime|<p>-</p>|`SNMP agent`|fortinetUpTime<p>Update: 30</p>|
|Used storage space|<p>-</p>|`SNMP agent`|fortinetUsedStorage<p>Update: 60</p>|
|Fortinet Used Storage %|<p>-</p>|`Calculated`|fortinetUsedStorage-percent<p>Update: 60</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 60</p>|
|{$NAME} System description|<p>A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|sysDescr<p>Update: 1d</p>|
|Firmware Version|<p>-</p>|`SNMP agent`|SysmFirmwareVersion<p>Update: 3600</p>|
|{$NAME} System Name|<p>An administratively-assigned name for this managed node. By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string</p>|`SNMP agent`|sysName<p>Update: 1m</p>|
|{$NAME} CPU Memory free (LLD)|<p>The overall CPU wide system memory which is currently free</p>|`SNMP agent`|cpmCPUMemoryFree.["{#SNMPINDEX}"]<p>Update: 1m</p>|
|{$NAME} CPU Memory used (LLD)|<p>The overall CPU wide system memory which is currently under use.</p>|`SNMP agent`|cpmCPUMemoryUsed.["{#SNMPINDEX}"]<p>Update: 1m</p>|
|{$NAME} CPU Total pourcentage (1min) (LLD)|<p>The overall CPU busy percentage in the last 1 minute period. This object deprecates the object cpmCPUTotal1min and increases the value range to (0..100).</p>|`SNMP agent`|cpmCPUTotal1minRev.["{#SNMPINDEX}"]<p>Update: 1m</p>|
|{$NAME} :  VPC "{#SNMPINDEX}" Host Link status (LLD)|<p>-</p>|`SNMP agent`|cVpcStatusHostLinkStatus.["{#SNMPINDEX}"]<p>Update: 1m</p>|
|Interface {#IFNAME}({#IFALIAS}): Inbound packets discarded (LLD)|<p>MIB: IF-MIB The number of inbound packets which were chosen to be discarded even though no errors had been detected to prevent their being deliverable to a higher-layer protocol. One possible reason for discarding such a packet could be to free up buffer space. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in.discards[ifInDiscards.{#SNMPINDEX}]<p>Update: 300</p>|
|Interface {#IFNAME}({#IFALIAS}): Inbound packets with errors (LLD)|<p>MIB: IF-MIB For packet-oriented interfaces, the number of inbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of inbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in.errors[ifInErrors.{#SNMPINDEX}]<p>Update: 300</p>|
|Interface {#IFNAME}({#IFALIAS}): Recebidos (LLD)|<p>MIB: IF-MIB The total number of octets received on the interface,including framing characters. This object is a 64-bit version of ifInOctets. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in[ifHCInOctets.{#SNMPINDEX}]<p>Update: 180</p>|
|Interface {#IFNAME}({#IFALIAS}): Outbound packets discarded (LLD)|<p>MIB: IF-MIB The number of outbound packets which were chosen to be discarded even though no errors had been detected to prevent their being deliverable to a higher-layer protocol. One possible reason for discarding such a packet could be to free up buffer space. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out.discards[ifOutDiscards.{#SNMPINDEX}]<p>Update: 300</p>|
|Interface {#IFNAME}({#IFALIAS}): Outbound packets with errors (LLD)|<p>MIB: IF-MIB For packet-oriented interfaces, the number of outbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of outbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out.errors[ifOutErrors.{#SNMPINDEX}]<p>Update: 300</p>|
|Interface {#IFNAME}({#IFALIAS}): Enviados (LLD)|<p>MIB: IF-MIB The total number of octets transmitted out of the interface, including framing characters. This object is a 64-bit version of ifOutOctets.Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out[ifHCOutOctets.{#SNMPINDEX}]<p>Update: 180</p>|
|Interface {#IFNAME}({#IFALIAS}): Speed (LLD)|<p>MIB: IF-MIB An estimate of the interface's current bandwidth in units of 1,000,000 bits per second. If this object reports a value of `n' then the speed of the interface is somewhere in the range of `n-500,000' to`n+499,999'. For interfaces which do not vary in bandwidth or for those where no accurate estimation can be made, this object should contain the nominal bandwidth. For a sub-layer which has no concept of bandwidth, this object should be zero.</p>|`SNMP agent`|net.if.speed[ifHighSpeed.{#SNMPINDEX}]<p>Update: 300</p>|
|Interface {#IFNAME}({#IFALIAS}): Operational status (LLD)|<p>MIB: IF-MIB The current operational state of the interface. - The testing(3) state indicates that no operational packet scan be passed - If ifAdminStatus is down(2) then ifOperStatus should be down(2) - If ifAdminStatus is changed to up(1) then ifOperStatus should change to up(1) if the interface is ready to transmit and receive network traffic - It should change todormant(5) if the interface is waiting for external actions (such as a serial line waiting for an incoming connection) - It should remain in the down(2) state if and only if there is a fault that prevents it from going to the up(1) state - It should remain in the notPresent(6) state if the interface has missing(typically, hardware) components.</p>|`SNMP agent`|net.if.status[ifOperStatus.{#SNMPINDEX}]<p>Update: 180</p>|
|Interface {#IFNAME}({#IFALIAS}): Interface type (LLD)|<p>MIB: IF-MIB The type of interface. Additional values for ifType are assigned by the Internet Assigned NumbersAuthority (IANA), through updating the syntax of the IANAifType textual convention.</p>|`SNMP agent`|net.if.type[ifType.{#SNMPINDEX}]<p>Update: 3600</p>|
|{$NAME} :  VPC "{#SNMPINDEX}" role status (LLD)|<p>-</p>|`SNMP agent`|cVpcRoleStatus.["{#SNMPINDEX}"]<p>Update: 1m</p>|
|{$NAME} :  VPC "{#SNMPINDEX}" Host Link Consistency status (LLD)|<p>-</p>|`SNMP agent`|cVpcStatusHostLinkConsistencyStatus.["{#SNMPINDEX}"]<p>Update: 1m</p>|
|{$NAME} :  VPC "{#SNMPINDEX}" Keep Alive status (LLD)|<p>-</p>|`SNMP agent`|cVpcPeerKeepAliveStatus.["{#SNMPINDEX}"]<p>Update: 1m</p>|
|{$NAME} {#SNMPVALUE} status (LLD)|<p>"The operational state of the fan or fan tray. unknown(1) - unknown. up(2) - powered on. down(3) - powered down. warning(4) - partial failure, needs replacement as soon as possible."</p>|`SNMP agent`|cefcFanTrayOperStatus.["{#SNMPVALUE}"]<p>Update: 1m</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Interface {#IFNAME}({#IFALIAS}): Ethernet has changed to lower speed than it was before|<p>Last value: {ITEM.LASTVALUE1}. This Ethernet connection has transitioned down from its known maximum speed. This might be a sign of autonegotiation issues. Ack to close.</p>|<p>**Expression**: {NEXUS 9000:net.if.speed[ifHighSpeed.{#SNMPINDEX}].change()}<0 and {NEXUS 9000:net.if.speed[ifHighSpeed.{#SNMPINDEX}].last()}>0 and ( {NEXUS 9000:net.if.type[ifType.{#SNMPINDEX}].last()}=6 or {NEXUS 9000:net.if.type[ifType.{#SNMPINDEX}].last()}=7 or {NEXUS 9000:net.if.type[ifType.{#SNMPINDEX}].last()}=11 or {NEXUS 9000:net.if.type[ifType.{#SNMPINDEX}].last()}=62 or {NEXUS 9000:net.if.type[ifType.{#SNMPINDEX}].last()}=69 or {NEXUS 9000:net.if.type[ifType.{#SNMPINDEX}].last()}=117 ) and ({NEXUS 9000:net.if.status[ifOperStatus.{#SNMPINDEX}].last()}<>2) </p><p>**Recovery expression**: ({NEXUS 9000:net.if.speed[ifHighSpeed.{#SNMPINDEX}].change()}>0 and {NEXUS 9000:net.if.speed[ifHighSpeed.{#SNMPINDEX}].prev()}>0) or ({NEXUS 9000:net.if.status[ifOperStatus.{#SNMPINDEX}].last()}=2)</p>|information|
|Interface {#IFNAME}({#IFALIAS}): High bandwidth usage >{$IF_UTIL_MAX:"{#IFNAME}"}%|<p>Last value: {ITEM.LASTVALUE1}.</p>|<p>**Expression**: ({NEXUS 9000:net.if.in[ifHCInOctets.{#SNMPINDEX}].avg(15m)}>(90/100)*{NEXUS 9000:net.if.speed[ifHighSpeed.{#SNMPINDEX}].last()} or {NEXUS 9000:net.if.out[ifHCOutOctets.{#SNMPINDEX}].avg(15m)}>(90/100)*{NEXUS 9000:net.if.speed[ifHighSpeed.{#SNMPINDEX}].last()}) and {NEXUS 9000:net.if.speed[ifHighSpeed.{#SNMPINDEX}].last()}>0</p><p>**Recovery expression**: {NEXUS 9000:net.if.in[ifHCInOctets.{#SNMPINDEX}].avg(15m)}<((90-3)/100)*{NEXUS 9000:net.if.speed[ifHighSpeed.{#SNMPINDEX}].last()} and {NEXUS 9000:net.if.out[ifHCOutOctets.{#SNMPINDEX}].avg(15m)}<((90-3)/100)*{NEXUS 9000:net.if.speed[ifHighSpeed.{#SNMPINDEX}].last()}</p>|warning|
|Interface {#IFNAME}({#IFALIAS}): High error rate|<p>Last value: {ITEM.LASTVALUE1}. Recovers when below 80% of {$IF_ERRORS_WARN:"{#IFNAME}"} threshold</p>|<p>**Expression**: {NEXUS 9000:net.if.in.errors[ifInErrors.{#SNMPINDEX}].avg(5m)}>2 or {NEXUS 9000:net.if.out.errors[ifOutErrors.{#SNMPINDEX}].avg(5m)}>2</p><p>**Recovery expression**: {NEXUS 9000:net.if.in.errors[ifInErrors.{#SNMPINDEX}].avg(5m)}<2*0.8 and {NEXUS 9000:net.if.out.errors[ifOutErrors.{#SNMPINDEX}].avg(5m)}<2*0.8</p>|warning|
|Interface {#IFNAME}({#IFALIAS}): Link down|<p>Last value: {ITEM.LASTVALUE1}. Interface is down</p>|<p>**Expression**: 1=1 and ({NEXUS 9000:net.if.status[ifOperStatus.{#SNMPINDEX}].last()}=2 and {NEXUS 9000:net.if.status[ifOperStatus.{#SNMPINDEX}].diff()}=1)</p><p>**Recovery expression**: {NEXUS 9000:net.if.status[ifOperStatus.{#SNMPINDEX}].last()}<>2</p>|disaster|
|{$NAME} Fan status has changed|<p>-</p>|<p>**Expression**: {NEXUS 9000:cefcFanTrayOperStatus.["{#SNMPVALUE}"].last()}<>2</p><p>**Recovery expression**: </p>|average|
|{$NAME} : Usage CPU très élevé|<p>-</p>|<p>**Expression**: {NEXUS 9000:cpmCPUTotal1minRev.["{#SNMPINDEX}"].last()}>90</p><p>**Recovery expression**: </p>|high|
|{$NAME} : VPC "{#SNMPINDEX}" down|<p>-</p>|<p>**Expression**: {NEXUS 9000:cVpcPeerKeepAliveStatus.["{#SNMPINDEX}"].last()}<>2</p><p>**Recovery expression**: </p>|high|
|{$NAME} : VPC "{#SNMPINDEX}" role has changed|<p>-</p>|<p>**Expression**: {NEXUS 9000:cVpcRoleStatus.["{#SNMPINDEX}"].change()}=1</p><p>**Recovery expression**: </p>|high|
|{$NAME} : VPC "{#SNMPINDEX}" not consistent|<p>-</p>|<p>**Expression**: {NEXUS 9000:cVpcStatusHostLinkConsistencyStatus.["{#SNMPINDEX}"].min(#2)}>1</p><p>**Recovery expression**: </p>|average|
|{$NAME} : Usage CPU très élevé (LLD)|<p>-</p>|<p>**Expression**: {NEXUS 9000:cpmCPUTotal1minRev.["{#SNMPINDEX}"].last()}>90</p><p>**Recovery expression**: </p>|high|
|Interface {#IFNAME}({#IFALIAS}): Ethernet has changed to lower speed than it was before (LLD)|<p>Last value: {ITEM.LASTVALUE1}. This Ethernet connection has transitioned down from its known maximum speed. This might be a sign of autonegotiation issues. Ack to close.</p>|<p>**Expression**: {NEXUS 9000:net.if.speed[ifHighSpeed.{#SNMPINDEX}].change()}<0 and {NEXUS 9000:net.if.speed[ifHighSpeed.{#SNMPINDEX}].last()}>0 and ( {NEXUS 9000:net.if.type[ifType.{#SNMPINDEX}].last()}=6 or {NEXUS 9000:net.if.type[ifType.{#SNMPINDEX}].last()}=7 or {NEXUS 9000:net.if.type[ifType.{#SNMPINDEX}].last()}=11 or {NEXUS 9000:net.if.type[ifType.{#SNMPINDEX}].last()}=62 or {NEXUS 9000:net.if.type[ifType.{#SNMPINDEX}].last()}=69 or {NEXUS 9000:net.if.type[ifType.{#SNMPINDEX}].last()}=117 ) and ({NEXUS 9000:net.if.status[ifOperStatus.{#SNMPINDEX}].last()}<>2) </p><p>**Recovery expression**: ({NEXUS 9000:net.if.speed[ifHighSpeed.{#SNMPINDEX}].change()}>0 and {NEXUS 9000:net.if.speed[ifHighSpeed.{#SNMPINDEX}].prev()}>0) or ({NEXUS 9000:net.if.status[ifOperStatus.{#SNMPINDEX}].last()}=2)</p>|information|
|Interface {#IFNAME}({#IFALIAS}): High bandwidth usage >{$IF_UTIL_MAX:"{#IFNAME}"}% (LLD)|<p>Last value: {ITEM.LASTVALUE1}.</p>|<p>**Expression**: ({NEXUS 9000:net.if.in[ifHCInOctets.{#SNMPINDEX}].avg(15m)}>(90/100)*{NEXUS 9000:net.if.speed[ifHighSpeed.{#SNMPINDEX}].last()} or {NEXUS 9000:net.if.out[ifHCOutOctets.{#SNMPINDEX}].avg(15m)}>(90/100)*{NEXUS 9000:net.if.speed[ifHighSpeed.{#SNMPINDEX}].last()}) and {NEXUS 9000:net.if.speed[ifHighSpeed.{#SNMPINDEX}].last()}>0</p><p>**Recovery expression**: {NEXUS 9000:net.if.in[ifHCInOctets.{#SNMPINDEX}].avg(15m)}<((90-3)/100)*{NEXUS 9000:net.if.speed[ifHighSpeed.{#SNMPINDEX}].last()} and {NEXUS 9000:net.if.out[ifHCOutOctets.{#SNMPINDEX}].avg(15m)}<((90-3)/100)*{NEXUS 9000:net.if.speed[ifHighSpeed.{#SNMPINDEX}].last()}</p>|warning|
|Interface {#IFNAME}({#IFALIAS}): High error rate (LLD)|<p>Last value: {ITEM.LASTVALUE1}. Recovers when below 80% of {$IF_ERRORS_WARN:"{#IFNAME}"} threshold</p>|<p>**Expression**: {NEXUS 9000:net.if.in.errors[ifInErrors.{#SNMPINDEX}].avg(5m)}>2 or {NEXUS 9000:net.if.out.errors[ifOutErrors.{#SNMPINDEX}].avg(5m)}>2</p><p>**Recovery expression**: {NEXUS 9000:net.if.in.errors[ifInErrors.{#SNMPINDEX}].avg(5m)}<2*0.8 and {NEXUS 9000:net.if.out.errors[ifOutErrors.{#SNMPINDEX}].avg(5m)}<2*0.8</p>|warning|
|Interface {#IFNAME}({#IFALIAS}): Link down (LLD)|<p>Last value: {ITEM.LASTVALUE1}. Interface is down</p>|<p>**Expression**: 1=1 and ({NEXUS 9000:net.if.status[ifOperStatus.{#SNMPINDEX}].last()}=2 and {NEXUS 9000:net.if.status[ifOperStatus.{#SNMPINDEX}].diff()}=1)</p><p>**Recovery expression**: {NEXUS 9000:net.if.status[ifOperStatus.{#SNMPINDEX}].last()}<>2</p>|disaster|
|{$NAME} : VPC "{#SNMPINDEX}" role has changed (LLD)|<p>-</p>|<p>**Expression**: {NEXUS 9000:cVpcRoleStatus.["{#SNMPINDEX}"].change()}=1</p><p>**Recovery expression**: </p>|high|
|{$NAME} : VPC "{#SNMPINDEX}" not consistent (LLD)|<p>-</p>|<p>**Expression**: {NEXUS 9000:cVpcStatusHostLinkConsistencyStatus.["{#SNMPINDEX}"].min(#2)}>1</p><p>**Recovery expression**: </p>|average|
|{$NAME} : VPC "{#SNMPINDEX}" down (LLD)|<p>-</p>|<p>**Expression**: {NEXUS 9000:cVpcPeerKeepAliveStatus.["{#SNMPINDEX}"].last()}<>2</p><p>**Recovery expression**: </p>|high|
|{$NAME} Fan status has changed (LLD)|<p>-</p>|<p>**Expression**: {NEXUS 9000:cefcFanTrayOperStatus.["{#SNMPVALUE}"].last()}<>2</p><p>**Recovery expression**: </p>|average|
