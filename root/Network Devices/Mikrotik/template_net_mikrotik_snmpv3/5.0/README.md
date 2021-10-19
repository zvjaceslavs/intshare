# Template Net Mikrotik SNMPv3

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$CPU_UTIL_MAX}|<p>-</p>|`90`|Text macro|
|{$MEMORY_UTIL_MAX}|<p>-</p>|`90`|Text macro|
|{$STORAGE_UTIL_CRIT}|<p>-</p>|`90`|Text macro|
|{$STORAGE_UTIL_WARN}|<p>-</p>|`80`|Text macro|
|{$TEMP_CRIT}|<p>-</p>|`60`|Text macro|
|{$TEMP_CRIT:"CPU"}|<p>-</p>|`75`|Text macro|
|{$TEMP_CRIT_LOW}|<p>-</p>|`5`|Text macro|
|{$TEMP_WARN}|<p>-</p>|`50`|Text macro|
|{$TEMP_WARN:"CPU"}|<p>-</p>|`70`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Temperature Discovery CPU|<p>MIKROTIK-MIB::mtxrHlProcessorTemperature Since temperature of CPU is not available on all Mikrotik hardware, this is done to avoid unsupported items.</p>|`SNMP agent`|mtxrHlProcessorTemperature.discovery<p>Update: 3600</p>|
|CPU Discovery|<p>HOST-RESOURCES-MIB::hrProcessorTable discovery</p>|`SNMP agent`|hrProcessorLoad.discovery<p>Update: 3600</p>|
|Network Interfaces Discovery|<p>Discovering interfaces from IF-MIB. Interfaces with down(2) Administrative Status are not discovered.</p>|`SNMP agent`|net.if.discovery<p>Update: 3600</p>|
|Storage Discovery|<p>HOST-RESOURCES-MIB::hrStorage discovery with storage filter</p>|`SNMP agent`|storage.discovery<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|System object ID|<p>MIB: SNMPv2-MIB The vendor's authoritative identification of the network management subsystem contained in the entity. This value is allocated within the SMI enterprises subtree (1.3.6.1.4.1) and provides an easy and unambiguous means for determining`what kind of box' is being managed. For example, if vendor`Flintstones, Inc.' was assigned the subtree1.3.6.1.4.1.4242, it could assign the identifier 1.3.6.1.4.1.4242.1.1 to its `Fred Router'.</p>|`SNMP agent`|system.objectid<p>Update: 3600</p>|
|Hardware serial number|<p>MIB: MIKROTIK-MIB RouterBOARD serial number</p>|`SNMP agent`|system.hw.serialnumber<p>Update: 3600</p>|
|Device name|<p>MIB: SNMPv2-MIB An administratively-assigned name for this managed node.By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|system.name<p>Update: 3600</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|Device contact details|<p>MIB: SNMPv2-MIB The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|system.contact<p>Update: 3600</p>|
|Total memory|<p>MIB: HOST-RESOURCES-MIB The size of the storage represented by this entry, in units of hrStorageAllocationUnits. This object is writable to allow remote configuration of the size of the storage area in those cases where such an operation makes sense and is possible on the underlying system. For example, the amount of main memory allocated to a buffer pool might be modified or the amount of disk space allocated to virtual memory might be modified.</p>|`SNMP agent`|vm.memory.total[hrStorageSize.Memory]<p>Update: 180</p>|
|Device location|<p>MIB: SNMPv2-MIB The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|system.location<p>Update: 3600</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
|SNMP traps (fallback)|<p>Item is used to collect all SNMP traps unmatched by other snmptrap items</p>|`SNMP trap`|snmptrap.fallback<p>Update: 300</p>|
|Firmware version|<p>MIB: MIKROTIK-MIB Current firmware version</p>|`SNMP agent`|system.hw.firmware<p>Update: 3600</p>|
|Hardware model name|<p>-</p>|`SNMP agent`|system.hw.model<p>Update: 3600</p>|
|SNMP availability|<p>-</p>|`Zabbix internal`|zabbix[host,snmp,available]<p>Update: 60</p>|
|Operating system|<p>MIB: MIKROTIK-MIB Software version</p>|`SNMP agent`|system.sw.os<p>Update: 3600</p>|
|Device uptime|<p>MIB: SNMPv2-MIB The time (in hundredths of a second) since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|system.uptime<p>Update: 120s</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 60</p>|
|Memory utilization|<p>Memory utilization in %</p>|`Calculated`|vm.memory.pused[memoryUsedPercentage.Memory]<p>Update: 180</p>|
|Used memory|<p>MIB: HOST-RESOURCES-MIB The amount of the storage represented by this entry that is allocated, in units of hrStorageAllocationUnits.</p>|`SNMP agent`|vm.memory.used[hrStorageUsed.Memory]<p>Update: 180</p>|
|Device description|<p>MIB: SNMPv2-MIB A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|system.descr<p>Update: 3600</p>|
|Device: Temperature|<p>MIB: MIKROTIK-MIB (mtxrHlTemperature) Device temperature in Celsius (degrees C). Might be missing in entry models (RB750, RB450G..) Reference: http://wiki.mikrotik.com/wiki/Manual:SNMP</p>|`SNMP agent`|sensor.temp.value[mtxrHlTemperature]<p>Update: 180</p>|
|CPU: Temperature|<p>MIB: MIKROTIK-MIB (mtxrHlProcessorTemperature) Processor temperature in Celsius (degrees C). Might be missing in entry models (RB750, RB450G..)</p>|`SNMP agent`|sensor.temp.value[mtxrHlProcessorTemperature.{#SNMPINDEX}]<p>Update: 180</p>|
|#{#SNMPINDEX}: CPU utilization|<p>MIB: HOST-RESOURCES-MIB The average, over the last minute, of the percentage of time that this processor was not idle.Implementations may approximate this one minute smoothing period if necessary.</p>|`SNMP agent`|system.cpu.util[hrProcessorLoad.{#SNMPINDEX}]<p>Update: 180</p>|
|Interface {#IFDESCR}: MAC Address|<p>MIB: IF-MIB The interface's address at the protocol layer immediately `below' the network layer in the protocol stack. For interfaces which do not have such an address (e.g., a serial line), this object should contain an octet string of zero length.</p>|`SNMP agent`|net.if[ifPhysAddress.{#SNMPINDEX}]<p>Update: 1h</p>|
|Interface {#IFDESCR}: Inbound pkts discarded|<p>MIB: IF-MIB The number of inbound packets which were chosen to be discarded even though no errors had been detected to prevent their being deliverable to a higher-layer protocol. One possible reason for discarding such a packet could be to free up buffer space. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in.discards[ifInDiscards.{#SNMPINDEX}]<p>Update: 300</p>|
|Interface {#IFDESCR}: Inbound non-unicast pkts|<p>MIB: IF-MIB The number of non-unicast (i.e., subnetwork- broadcast or subnetwork-multicast) packets delivered to a higher-layer protocol.</p>|`SNMP agent`|net.if.in.discards[ifInNUcastPkts.{#SNMPINDEX}]<p>Update: 180</p>|
|Interface {#IFDESCR}: Inbound unicast pkts|<p>MIB: IF-MIB The number of subnetwork-unicast packets delivered to a higher-layer protocol.</p>|`SNMP agent`|net.if.in.discards[ifInUcastPkts.{#SNMPINDEX}]<p>Update: 180</p>|
|Interface {#IFDESCR}: Inbound pkts with errors|<p>MIB: IF-MIB For packet-oriented interfaces, the number of inbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of inbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in.errors[ifInErrors.{#SNMPINDEX}]<p>Update: 300</p>|
|Interface {#IFDESCR}: Bits received|<p>MIB: IF-MIB The total number of octets received on the interface,including framing characters. Discontinuities in the value of this counter can occurat re-initialization of the management system, and atother times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in[ifInOctets.{#SNMPINDEX}]<p>Update: 180</p>|
|Interface {#IFDESCR}: Outbound pkts discarded|<p>MIB: IF-MIB The number of outbound packets which were chosen to be discarded even though no errors had been detected to prevent their being deliverable to a higher-layer protocol. One possible reason for discarding such a packet could be to free up buffer space. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out.discards[ifOutDiscards.{#SNMPINDEX}]<p>Update: 300</p>|
|Interface {#IFDESCR}: Outbound pkts with errors|<p>MIB: IF-MIB For packet-oriented interfaces, the number of outbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of outbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out.errors[ifOutErrors.{#SNMPINDEX}]<p>Update: 300</p>|
|Interface {#IFDESCR}: Outbound non-unicast pkts|<p>MIB: IF-MIB The total number of packets that higher-level protocols requested be transmitted to a non- unicast (i.e., a subnetwork-broadcast or subnetwork-multicast) address, including those that were discarded or not sent.</p>|`SNMP agent`|net.if.out[ifOutNUcastPkts.{#SNMPINDEX}]<p>Update: 180</p>|
|Interface {#IFDESCR}: Bits sent|<p>MIB: IF-MIB The total number of octets transmitted out of the interface, including framing characters. Discontinuities in the value of this counter can occurat re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out[ifOutOctets.{#SNMPINDEX}]<p>Update: 180</p>|
|Interface {#IFDESCR}: Outbound unicast pkts|<p>MIB: IF-MIB The total number of packets that higher-level protocols requested be transmitted to a subnetwork-unicast address, including those that were discarded or not sent.</p>|`SNMP agent`|net.if.out[ifOutUcastPkts.{#SNMPINDEX}]<p>Update: 180</p>|
|Interface {#IFDESCR}: Speed|<p>MIB: IF-MIB An estimate of the interface's current bandwidth in bits per second. For interfaces which do not vary in bandwidth or for those where no accurate estimation can be made, this object should contain the nominal bandwidth. If the bandwidth of the interface is greater than the maximum value reportable by this object then this object should report its maximum value (4,294,967,295) and ifHighSpeed must be used to report the interace's speed. For a sub-layer which has no concept of bandwidth, this object should be zero.</p>|`SNMP agent`|net.if.speed[ifSpeed.{#SNMPINDEX}]<p>Update: 300</p>|
|Interface {#IFDESCR}: Operational status|<p>MIB: IF-MIB The current operational state of the interface. - The testing(3) state indicates that no operational packet scan be passed - If ifAdminStatus is down(2) then ifOperStatus should be down(2) - If ifAdminStatus is changed to up(1) then ifOperStatus should change to up(1) if the interface is ready to transmit and receive network traffic - It should change todormant(5) if the interface is waiting for external actions (such as a serial line waiting for an incoming connection) - It should remain in the down(2) state if and only if there is a fault that prevents it from going to the up(1) state - It should remain in the notPresent(6) state if the interface has missing(typically, hardware) components.</p>|`SNMP agent`|net.if.status[ifOperStatus.{#SNMPINDEX}]<p>Update: 60</p>|
|Interface {#IFDESCR}: Interface type|<p>MIB: IF-MIB The type of interface. Additional values for ifType are assigned by the Internet Assigned NumbersAuthority (IANA), through updating the syntax of the IANAifType textual convention.</p>|`SNMP agent`|net.if.type[ifType.{#SNMPINDEX}]<p>Update: 3600</p>|
|Disk-{#SNMPINDEX}: Storage utilization|<p>Storage utilization in % for Disk-{#SNMPINDEX}</p>|`Calculated`|vfs.fs.pused[hrStorageSize.{#SNMPINDEX}]<p>Update: 300</p>|
|Disk-{#SNMPINDEX}: Total space|<p>MIB: HOST-RESOURCES-MIB The size of the storage represented by this entry, in units of hrStorageAllocationUnits. This object is writable to allow remote configuration of the size of the storage area in those cases where such an operation makes sense and is possible on the underlying system. For example, the amount of main memory allocated to a buffer pool might be modified or the amount of disk space allocated to virtual memory might be modified.</p>|`SNMP agent`|vfs.fs.total[hrStorageSize.{#SNMPINDEX}]<p>Update: 300</p>|
|Disk-{#SNMPINDEX}: Used space|<p>MIB: HOST-RESOURCES-MIB The amount of the storage represented by this entry that is allocated, in units of hrStorageAllocationUnits.</p>|`SNMP agent`|vfs.fs.used[hrStorageSize.{#SNMPINDEX}]<p>Update: 300</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Unavailable by ICMP ping|<p>Last value: {ITEM.LASTVALUE1}. Last three attempts returned timeout. Please check device connectivity.</p>|high|
|High ICMP ping loss|<p>-</p>|warning|
|High ICMP ping response time|<p>-</p>|warning|
|Device: Temperature is above critical threshold: >{$TEMP_CRIT:"Device"}|<p>Last value: {ITEM.LASTVALUE1}. This trigger uses temperature sensor values as well as temperature sensor status if available</p>|high|
|Device: Temperature is above warning threshold: >{$TEMP_WARN:"Device"}|<p>Last value: {ITEM.LASTVALUE1}. This trigger uses temperature sensor values as well as temperature sensor status if available</p>|warning|
|Device: Temperature is too low: <{$TEMP_CRIT_LOW:"Device"}|<p>Last value: {ITEM.LASTVALUE1}.</p>|average|
|Device has been replaced (new serial number received)|<p>Last value: {ITEM.LASTVALUE1}. Device serial number has changed. Ack to close</p>|information|
|Firmware has changed|<p>Last value: {ITEM.LASTVALUE1}. Firmware version has changed. Ack to close</p>|information|
|High memory utilization|<p>Last value: {ITEM.LASTVALUE1}.</p>|average|
|No SNMP data collection|<p>Last value: {ITEM.LASTVALUE1}. SNMP is not available for polling. Please check device connectivity and SNMP settings.</p>|warning|
|{HOST.NAME} has been restarted|<p>Last value: {ITEM.LASTVALUE1}. The device uptime is less than 10 minutes</p>|warning|
|CPU: Temperature is above critical threshold: >{$TEMP_CRIT:"CPU"}|<p>Last value: {ITEM.LASTVALUE1}. This trigger uses temperature sensor values as well as temperature sensor status if available</p>|high|
|CPU: Temperature is above warning threshold: >{$TEMP_WARN:"CPU"}|<p>Last value: {ITEM.LASTVALUE1}. This trigger uses temperature sensor values as well as temperature sensor status if available</p>|warning|
|CPU: Temperature is too low: <{$TEMP_CRIT_LOW:"CPU"}|<p>Last value: {ITEM.LASTVALUE1}.</p>|average|
|#{#SNMPINDEX}: High CPU utilization|<p>Last value: {ITEM.LASTVALUE1}.</p>|average|
|Interface {#IFDESCR}: Ethernet has changed to lower speed than it was before|<p>Last value: {ITEM.LASTVALUE1}. This Ethernet connection has transitioned down from its known maximum speed. This might be a sign of autonegotiation issues. Ack to close.</p>|information|
|Interface {#IFDESCR}: High bandwidth usage >{$IF_UTIL_MAX:"{#IFNAME}"}%|<p>Last value: {ITEM.LASTVALUE1}.</p>|warning|
|Interface {#IFDESCR}: High error rate|<p>Last value: {ITEM.LASTVALUE1}.</p>|warning|
|Interface {#IFDESCR}: Link down|<p>Last value: {ITEM.LASTVALUE1}. Interface is down</p>|average|
|Disk-{#SNMPINDEX}: Disk space is critically low|<p>Last value: {ITEM.LASTVALUE1}.</p>|average|
|Disk-{#SNMPINDEX}: Disk space is low|<p>Last value: {ITEM.LASTVALUE1}.</p>|warning|
