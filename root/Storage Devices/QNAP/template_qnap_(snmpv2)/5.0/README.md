# Template SNMP QNAP

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$CPU_TEMPERATURE_ALARM}|<p>Amount in centigrade when an alarm shall be raised</p>|`65`|Text macro|
|{$DISK_LATENCY_ALARM}|<p>Amount in ms when an alarm shall be raised</p>|`30`|Text macro|
|{$HDD_TEMPERATURE_ALARM}|<p>Amount in centigrade when an alarm shall be raised</p>|`50`|Text macro|
|{$POOL_SIZE_ALARM}|<p>Amount in % when an alarm shall be raised</p>|`15`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|LUN Discovery|<p>-</p>|`SNMP agent`|lun.discovery<p>Update: 15m</p>|
|Pool Discovery|<p>-</p>|`SNMP agent`|pool.discovery<p>Update: 15m</p>|
|EtherLike-MIB Discovery|<p>Discovering interfaces from IF-MIB and EtherLike-MIB. Interfaces with up(1) Operational Status are discovered.</p>|`SNMP agent`|net.if.duplex.discovery<p>Update: 1h</p>|
|Network interfaces discovery|<p>Discovering interfaces from IF-MIB.</p>|`SNMP agent`|net.if.discovery<p>Update: 1h</p>|
|RAID Discovery|<p>-</p>|`SNMP agent`|raid.discovery<p>Update: 15m</p>|
|Disk Discovery|<p>-</p>|`SNMP agent`|disk.discovery<p>Update: 15m</p>|
|FAN Discovery|<p>-</p>|`SNMP agent`|fan.discovery<p>Update: 15m</p>|
|Volume Discovery|<p>-</p>|`SNMP agent`|volume.discovery<p>Update: 15m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|SNMP traps (fallback)|<p>Item is used to collect all SNMP traps unmatched by other snmptrap items</p>|`SNMP trap`|snmptrap.fallback<p>Update: 1m</p>|
|Disk latency|<p>-</p>|`SNMP agent`|disk.latency<p>Update: 15m</p>|
|System description|<p>MIB: SNMPv2-MIB A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|system.descr[sysDescr.0]<p>Update: 1h</p>|
|CPU Temperature|<p>-</p>|`SNMP agent`|cpu.temp<p>Update: 30m</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|System object ID|<p>MIB: SNMPv2-MIB The vendor's authoritative identification of the network management subsystem contained in the entity. This value is allocated within the SMI enterprises subtree (1.3.6.1.4.1) and provides an easy and unambiguous means for determining`what kind of box' is being managed. For example, if vendor`Flintstones, Inc.' was assigned the subtree1.3.6.1.4.1.4242, it could assign the identifier 1.3.6.1.4.1.4242.1.1 to its `Fred Router'.</p>|`SNMP agent`|system.objectid[sysObjectID.0]<p>Update: 15m</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
|System contact details|<p>MIB: SNMPv2-MIB The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|system.contact[sysContact.0]<p>Update: 1h</p>|
|System location|<p>MIB: SNMPv2-MIB The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|system.location[sysLocation.0]<p>Update: 1h</p>|
|System Temperature|<p>-</p>|`SNMP agent`|system.temp<p>Update: 30m</p>|
|Disk IOPS|<p>-</p>|`SNMP agent`|disk.iops<p>Update: 15m</p>|
|Uptime|<p>MIB: SNMPv2-MIB The time (in hundredths of a second) since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|system.uptime[sysUpTime.0]<p>Update: 30s</p>|
|System name|<p>MIB: SNMPv2-MIB An administratively-assigned name for this managed node.By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|system.name<p>Update: 1h</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 60</p>|
|SNMP agent availability|<p>-</p>|`Zabbix internal`|zabbix[host,snmp,available]<p>Update: 1m</p>|
|LUN {#LUNINDEX}: Name|<p>-</p>|`SNMP agent`|lun.name[{#LUNINDEX}]<p>Update: 1h</p>|
|LUN {#LUNINDEX}: Status|<p>-</p>|`SNMP agent`|lun.status[{#LUNINDEX}]<p>Update: 15m</p>|
|Pool {#POOLINDEX}: Capacity|<p>-</p>|`SNMP agent`|pool.capacity[{#POOLINDEX}]<p>Update: 15m</p>|
|Pool {#POOLINDEX}: Free size in %|<p>-</p>|`Calculated`|pool.freepercentage[{#POOLINDEX}]<p>Update: 15m</p>|
|Pool {#POOLINDEX}: Free size|<p>-</p>|`SNMP agent`|pool.freeSize[{#POOLINDEX}]<p>Update: 15m</p>|
|Pool {#POOLINDEX}: Status|<p>-</p>|`SNMP agent`|pool.status[{#POOLINDEX}]<p>Update: 15m</p>|
|Interface {#IFNAME}({#IFALIAS}): Duplex status|<p>MIB: EtherLike-MIB The current mode of operation of the MAC entity. 'unknown' indicates that the current duplex mode could not be determined. Management control of the duplex mode is accomplished through the MAU MIB. When an interface does not support autonegotiation, or when autonegotiation is not enabled, the duplex mode is controlled using ifMauDefaultType. When autonegotiation is supported and enabled, duplex mode is controlled using ifMauAutoNegAdvertisedBits. In either case, the currently operating duplex mode is reflected both in this object and in ifMauType. Note that this object provides redundant information with ifMauType. Normally, redundant objects are discouraged. However, in this instance, it allows a management application to determine the duplex status of an interface without having to know every possible value of ifMauType. This was felt to be sufficiently valuable to justify the redundancy. Reference: [IEEE 802.3 Std.], 30.3.1.1.32,aDuplexStatus.</p>|`SNMP agent`|net.if.duplex[dot3StatsDuplexStatus.{#SNMPINDEX}]<p>Update: 1m</p>|
|Interface {#IFDESCR}: Inbound packets discarded|<p>MIB: IF-MIB The number of inbound packets which were chosen to be discarded even though no errors had been detected to prevent their being deliverable to a higher-layer protocol. One possible reason for discarding such a packet could be to free up buffer space. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in.discards[ifInDiscards.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFDESCR}: Inbound packets with errors|<p>MIB: IF-MIB For packet-oriented interfaces, the number of inbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of inbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in.errors[ifInErrors.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFDESCR}: Bits received|<p>MIB: IF-MIB The total number of octets received on the interface,including framing characters. Discontinuities in the value of this counter can occurat re-initialization of the management system, and atother times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in[ifInOctets.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFDESCR}: Outbound packets discarded|<p>MIB: IF-MIB The number of outbound packets which were chosen to be discarded even though no errors had been detected to prevent their being deliverable to a higher-layer protocol. One possible reason for discarding such a packet could be to free up buffer space. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out.discards[ifOutDiscards.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFDESCR}: Outbound packets with errors|<p>MIB: IF-MIB For packet-oriented interfaces, the number of outbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of outbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out.errors[ifOutErrors.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFDESCR}: Bits sent|<p>MIB: IF-MIB The total number of octets transmitted out of the interface, including framing characters. Discontinuities in the value of this counter can occurat re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out[ifOutOctets.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFDESCR}: Speed|<p>MIB: IF-MIB An estimate of the interface's current bandwidth in bits per second. For interfaces which do not vary in bandwidth or for those where no accurate estimation can be made, this object should contain the nominal bandwidth. If the bandwidth of the interface is greater than the maximum value reportable by this object then this object should report its maximum value (4,294,967,295) and ifHighSpeed must be used to report the interace's speed. For a sub-layer which has no concept of bandwidth, this object should be zero.</p>|`SNMP agent`|net.if.speed[ifSpeed.{#SNMPINDEX}]<p>Update: 5m</p>|
|Interface {#IFDESCR}: Operational status|<p>MIB: IF-MIB The current operational state of the interface. - The testing(3) state indicates that no operational packet scan be passed - If ifAdminStatus is down(2) then ifOperStatus should be down(2) - If ifAdminStatus is changed to up(1) then ifOperStatus should change to up(1) if the interface is ready to transmit and receive network traffic - It should change todormant(5) if the interface is waiting for external actions (such as a serial line waiting for an incoming connection) - It should remain in the down(2) state if and only if there is a fault that prevents it from going to the up(1) state - It should remain in the notPresent(6) state if the interface has missing(typically, hardware) components.</p>|`SNMP agent`|net.if.status[ifOperStatus.{#SNMPINDEX}]<p>Update: 1m</p>|
|Interface {#IFDESCR}: Interface type|<p>MIB: IF-MIB The type of interface. Additional values for ifType are assigned by the Internet Assigned NumbersAuthority (IANA), through updating the syntax of the IANAifType textual convention.</p>|`SNMP agent`|net.if.type[ifType.{#SNMPINDEX}]<p>Update: 1h</p>|
|RAID {#RAIDINDEX}: Capacity|<p>-</p>|`SNMP agent`|raid.capacity[{#RAIDINDEX}]<p>Update: 1h</p>|
|RAID {#RAIDINDEX}: Free size|<p>-</p>|`SNMP agent`|raid.freeSize[{#RAIDINDEX}]<p>Update: 1h</p>|
|RAID {#RAIDINDEX}: Level|<p>-</p>|`SNMP agent`|raid.level[{#RAIDINDEX}]<p>Update: 1h</p>|
|RAID {#RAIDINDEX}: State|<p>-</p>|`SNMP agent`|raid.state[{#RAIDINDEX}]<p>Update: 15m</p>|
|HDD {#HDDINDEX}: Capacity|<p>-</p>|`SNMP agent`|hdd.capacity[{#HDDINDEX}]<p>Update: 1h</p>|
|HDD {#HDDINDEX}: Model|<p>-</p>|`SNMP agent`|hdd.model[{#HDDINDEX}]<p>Update: 1h</p>|
|HDD {#HDDINDEX}: Hot Spare|<p>-</p>|`SNMP agent`|hdd.spare[{#HDDINDEX}]<p>Update: 1h</p>|
|HDD {#HDDINDEX}: State|<p>-</p>|`SNMP agent`|hdd.state[{#HDDINDEX}]<p>Update: 5m</p>|
|HDD {#HDDINDEX}: SMART Status|<p>-</p>|`SNMP agent`|hdd.status[{#HDDINDEX}]<p>Update: 30m</p>|
|HDD {#HDDINDEX}: Temperature|<p>-</p>|`SNMP agent`|hdd.temp[{#HDDINDEX}]<p>Update: 30m</p>|
|FAN {#FANINDEX}: Name|<p>-</p>|`SNMP agent`|fan.name[{#FANINDEX}]<p>Update: 1h</p>|
|FAN {#FANINDEX}: Speed|<p>-</p>|`SNMP agent`|fan.speed[{#FANINDEX}]<p>Update: 30m</p>|
|FAN {#FANINDEX}: Status|<p>-</p>|`SNMP agent`|fan.status[{#FANINDEX}]<p>Update: 30m</p>|
|Volume {#VOLUMEINDEX}: Capacity|<p>-</p>|`SNMP agent`|volume.capacity[{#VOLUMEINDEX}]<p>Update: 15m</p>|
|Volume {#VOLUMEINDEX}: Free size in %|<p>-</p>|`Calculated`|volume.freePercentage[{#VOLUMEINDEX}]<p>Update: 15m</p>|
|Volume {#VOLUMEINDEX}: Free size|<p>-</p>|`SNMP agent`|volume.freeSize[{#VOLUMEINDEX}]<p>Update: 15m</p>|
|Volume {#VOLUMEINDEX}: Name|<p>-</p>|`SNMP agent`|volume.name[{#VOLUMEINDEX}]<p>Update: 1h</p>|
|Volume {#VOLUMEINDEX}: Status|<p>-</p>|`SNMP agent`|volume.status[{#VOLUMEINDEX}]<p>Update: 15m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Unavailable by ICMP ping|<p>Last value: {ITEM.LASTVALUE1}. Last three attempts returned timeout. Please check device connectivity.</p>|high|
|High ICMP ping loss|<p>-</p>|warning|
|High ICMP ping response time|<p>-</p>|warning|
|{HOST.NAME} has been restarted (uptime < 10m)|<p>Uptime is less than 10 minutes</p>|warning|
|No SNMP data collection|<p>SNMP is not available for polling. Please check device connectivity and SNMP settings.</p>|warning|
|System name has changed (new name: {ITEM.VALUE})|<p>System name has changed. Ack to close.</p>|information|
|High CPU temperature (>{$CPU_TEMPERATURE_ALARM} for 15m)|<p>The CPU temperature is exceeding the threshold.</p>|warning|
|Disk latency is high (>{$DISK_LATENCY_ALARM} for 15m)|<p>The latency of the disks are higher than the threshhold for 15 minutes.</p>|warning|
|State of LUN {#LUNINDEX} is disconnected|<p>The target of LUN is disconnected.</p>|warning|
|Reaching threshold for pool {#POOLINDEX} (<{$POOL_SIZE_ALARM}%)|<p>The free size of the pool is reaching the threshold.</p>|warning|
|Faulty state of Pool {#POOLINDEX}|<p>A faulty state has been reported by the pool.</p>|high|
|Interface {#IFNAME}({#IFALIAS}): In half-duplex mode|<p>Please check autonegotiation settings and cabling</p>|warning|
|Interface {#IFDESCR}: Ethernet has changed to lower speed than it was before|<p>This Ethernet connection has transitioned down from its known maximum speed. This might be a sign of autonegotiation issues. Ack to close.</p>|information|
|Interface {#IFDESCR}: Link down|<p>This trigger expression works as follows: 1. Can be triggered if operations status is down. 2. {$IFCONTROL:"{#IFNAME}"}=1 - user can redefine Context macro to value - 0. That marks this interface as not important. No new trigger will be fired if this interface is down. 3. {TEMPLATE_NAME:METRIC.diff()}=1) - trigger fires only if operational status was up(1) sometime before. (So, do not fire 'ethernal off' interfaces.) WARNING: if closed manually - won't fire again on next poll, because of .diff.</p>|average|
|Interface {#IFDESCR}: High bandwidth usage (> {$IF.UTIL.MAX:"{#IFNAME}"}% )|<p>The network interface utilization is close to its estimated maximum bandwidth.</p>|warning|
|Interface {#IFDESCR}: High error rate (> {$IF.ERRORS.WARN:"{#IFNAME}"} for 5m)|<p>Recovers when below 80% of {$IF.ERRORS.WARN:"{#IFNAME}"} threshold</p>|warning|
|Faulty state of RAID {#RAIDINDEX}|<p>RAID has reported a faulty state.</p>|high|
|HDD {#HDDINDEX} (hotspare) is in operation|<p>Harddisk was previously a hot spare but is now in operation.</p>|warning|
|Faulty SMART state of HDD {#HDDINDEX}|<p>S.M.A.R.T has alerted a faulty state of the disk.</p>|high|
|Temperature of HDD {#HDDINDEX} is excessive for 15m|<p>Harddisk temperature is higher than the threshold for 15 minutes.</p>|warning|
|Temperature of HDD {#HDDINDEX} is high for 5m|<p>Harddisk temperature is higher than the threshold for 5 minutes.</p>|information|
|Reaching threshold for volume {#VOLUMEINDEX} (<{$VOLUME_SIZE_ALARM}%)|<p>The free size of the volume is reaching the threshold.</p>|warning|
|Faulty state of volume {#VOLUMEINDEX}|<p>Volume is in a faulty state. Check as soon as possible.</p>|disaster|
