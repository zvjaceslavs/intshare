# Template Teltonika RUT950 and RUT955 SNMP

## Description

Monitors all parameters of Teltonika RUT9xx LTE routers Version 1.1 2021-08-04 by Pierre Fagrell: Added missing macros and value mappings for network interface discovery - required for traffic usage stats pierre@buggfix.se

## Overview

This is an SNMP template for Teltonika LTE routers  
Tested with RUT950 and also has MIBs for RUT955 with I/O and GPS functions.


Use firmware RUT9\_R\_00.07.00 or later 


**Some examples of data that is monitored:**


* CPU, RAM and disk statistics
* Modem status, model and IMEI
* Simcard PIN status and IMSI
* Operator name and Operator ID
* RSSI, RSRP, RSRQ and SINR signal strength
* Internal and external IP addresses
* IP and MAC of connected clients
* Traffic usage per day, month, week
* Interface errors
* Wifi hotspot users IP, MAC, bandwith


Signal is logged and graphed separately for operators and cell towers to find the best option over time.  
Total monthly traffic is logged for each operator and reset to 0 at the start of every month


The items are updated infrequently to save bandwith, settings can be changed per host or for all hosts with the macros.


**Triggers**


* ICMP packetloss
* ICMP response time
* Low signal levels
* Not connected to 4G
* SIM error
* SIM replaced
* Changed operator
* Changed IP address
* High monthly or daily traffic usage
* Interface errors
* CPU usage
* Memory and disk usage


**Connecting with SNMP over VPN:**


Install a vpn service such as OpenVPN or Zerotier on the router and your Zabbix server/proxy  
If using Zerotier add a route in my.zerotier.com for 192.168.x.1/32 or (or .0/24 if you also want to monitor devices inside the network)  
Test on the zabbix server: *snmpwalk -c public -v 2c 192.168.x.1:161 .1.3.6.1.4.1.48690.1*



## Author

Pierre Fagrell

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$CPU.UTIL.CRIT}|<p>-</p>|`90`|Text macro|
|{$ICMP_LOSS_WARN}|<p>-</p>|`20`|Text macro|
|{$ICMP_RESPONSE_TIME_WARN}|<p>-</p>|`0.25`|Text macro|
|{$IF.ERRORS.WARN}|<p>-</p>|`2`|Text macro|
|{$IF.UTIL.DAILY}|<p>Daily traffic usage</p>|`5G`|Text macro|
|{$IF.UTIL.MAX}|<p>percentage of interface speed</p>|`90`|Text macro|
|{$IF.UTIL.MONTHLY}|<p>Warning lever for high traffic consumption</p>|`15G`|Text macro|
|{$IF.UTIL.WEEKLY}|<p>Weekly traffic usage</p>|`10G`|Text macro|
|{$IFCONTROL}|<p>-</p>|`1`|Text macro|
|{$MEMORY.NAME.MATCHES}|<p>-</p>|`.*`|Text macro|
|{$MEMORY.NAME.NOT_MATCHES}|<p>-</p>|`CHANGE_IF_NEEDED`|Text macro|
|{$MEMORY.TYPE.MATCHES}|<p>-</p>|`.*(\.2|hrStorageRam)$`|Text macro|
|{$MEMORY.TYPE.NOT_MATCHES}|<p>-</p>|`CHANGE_IF_NEEDED`|Text macro|
|{$MEMORY.UTIL.MAX}|<p>-</p>|`90`|Text macro|
|{$NET.IF.IFADMINSTATUS.MATCHES}|<p>Ignore notPresent(6)</p>|`^.*`|Text macro|
|{$NET.IF.IFADMINSTATUS.NOT_MATCHES}|<p>Ignore down(2) administrative status</p>|`^2$`|Text macro|
|{$NET.IF.IFALIAS.MATCHES}|<p>-</p>|`.*`|Text macro|
|{$NET.IF.IFALIAS.NOT_MATCHES}|<p>-</p>|`CHANGE_IF_NEEDED`|Text macro|
|{$NET.IF.IFDESCR.MATCHES}|<p>-</p>|`.*`|Text macro|
|{$NET.IF.IFDESCR.NOT_MATCHES}|<p>-</p>|`CHANGE_IF_NEEDED`|Text macro|
|{$NET.IF.IFNAME.MATCHES}|<p>-</p>|`^.*$`|Text macro|
|{$NET.IF.IFNAME.NOT_MATCHES}|<p>Filter out loopbacks, nulls, docker veth links and docker0 bridge by default</p>|`(^Software Loopback Interface|^NULL[0-9.]*$|^[Ll]o[0-9.]*$|^[Ss]ystem$|^Nu[0-9.]*$|^veth[0-9a-z]+$|docker[0-9]+|br-[a-z0-9]{12})`|Text macro|
|{$NET.IF.IFOPERSTATUS.MATCHES}|<p>-</p>|`^.*$`|Text macro|
|{$NET.IF.IFOPERSTATUS.NOT_MATCHES}|<p>Ignore notPresent(6)</p>|`^6$`|Text macro|
|{$NET.IF.IFTYPE.MATCHES}|<p>-</p>|`.*`|Text macro|
|{$NET.IF.IFTYPE.NOT_MATCHES}|<p>-</p>|`CHANGE_IF_NEEDED`|Text macro|
|{$OID_MOD}|<p>-</p>|`TELTONIKA-MIB`|Text macro|
|{$OID_PATH}|<p>-</p>|`iso.org.dod.internet.private.enterprises.teltonika`|Text macro|
|{$OID}|<p>-</p>|`.1.3.6.1.4.1.48690`|Text macro|
|{$SNMP_COMMUNITY}|<p>-</p>|`public`|Text macro|
|{$SNMP_PORT}|<p>-</p>|`161`|Text macro|
|{$VFS.FS.FSNAME.MATCHES}|<p>-</p>|`.+`|Text macro|
|{$VFS.FS.FSNAME.NOT_MATCHES}|<p>-</p>|`^(/dev|/sys|/run|/proc|/rom|.+/shm$)`|Text macro|
|{$VFS.FS.FSTYPE.MATCHES}|<p>-</p>|`.*(\.4|\.9|hrStorageFixedDisk|hrStorageFlashMemory)$`|Text macro|
|{$VFS.FS.FSTYPE.NOT_MATCHES}|<p>-</p>|`CHANGE_IF_NEEDED`|Text macro|
|{$VFS.FS.PUSED.MAX.CRIT}|<p>-</p>|`90`|Text macro|
|{$VFS.FS.PUSED.MAX.WARN}|<p>-</p>|`80`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Memory discovery|<p>HOST-RESOURCES-MIB::hrStorage discovery with memory filter</p>|`SNMP agent`|vm.memory.discovery<p>Update: 1h</p>|
|Network ARP Entry|<p>-</p>|`SNMP agent`|TELTONIKA-MIB.netArpEntry<p>Update: 1h</p>|
|Network interfaces discovery|<p>Discovering interfaces from IF-MIB.</p>|`SNMP agent`|net.if.discovery<p>Update: 1h</p>|
|Network IP|<p>-</p>|`SNMP agent`|TELTONIKA-MIB.netIP<p>Update: 10m</p>|
|hsSessionEntry Discovery|<p>An entry containing information of a particular hotspot session.</p>|`SNMP agent`|TELTONIKA-MIB.hsSessionEntry<p>Update: 1h</p>|
|modemEntry Discovery|<p>An entry containing information of a particular interface.</p>|`SNMP agent`|TELTONIKA-MIB.modemEntry<p>Update: 1h</p>|
|Storage discovery|<p>HOST-RESOURCES-MIB::hrStorage discovery with storage filter.</p>|`SNMP agent`|vfs.fs.discovery[snmp]<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|SNMP Trap: TELTONIKA-MIB::digitalOutputNotification|<p>Digital output trap</p>|`SNMP trap`|snmptrap["\s\.1\.3\.6\.1\.4\.1\.48690\.4\.2\.2\s"]<p>Update: 0</p>|
|SNMP Trap: TELTONIKA-MIB::relay0Notification|<p>Relay trap</p>|`SNMP trap`|snmptrap["\s\.1\.3\.6\.1\.4\.1\.48690\.4\.2\.8\s"]<p>Update: 0</p>|
|SNMP Trap: TELTONIKA-MIB::digitalInput2Notification|<p>Digital input2 trap</p>|`SNMP trap`|snmptrap["\s\.1\.3\.6\.1\.4\.1\.48690\.4\.2\.12\s"]<p>Update: 0</p>|
|iioState|<p>Isolated Input state</p>|`SNMP agent`|TELTONIKA-MIB.iioState<p>Update: 30m</p>|
|SNMP Trap: TELTONIKA-MIB::connectionTypeNotification|<p>Connection type trap</p>|`SNMP trap`|snmptrap["\s\.1\.3\.6\.1\.4\.1\.48690\.4\.1\.2\s"]<p>Update: 0</p>|
|GPS:longtitude|<p>Longtitude coordinates</p>|`SNMP agent`|TELTONIKA-MIB.longtitude<p>Update: 60m</p>|
|fwVersion|<p>Router firmware version</p>|`SNMP agent`|TELTONIKA-MIB.fwVersion<p>Update: 24h</p>|
|modemDescription|<p>Modem description</p>|`SNMP agent`|TELTONIKA-MIB.modemDescription<p>Update: 24h</p>|
|modemNum|<p>The number of modems (regardless of their current state) present on this system.</p>|`SNMP agent`|TELTONIKA-MIB.modemNum<p>Update: 24h</p>|
|SNMP Trap: TELTONIKA-MIB::signalChangeNotification|<p>Signal strength trap</p>|`SNMP trap`|snmptrap["\s\.1\.3\.6\.1\.4\.1\.48690\.4\.1\.1\s"]<p>Update: 0</p>|
|GPS:datetime|<p>GPS datetime</p>|`SNMP agent`|TELTONIKA-MIB.datetime<p>Update: 60m</p>|
|din2State|<p>Digital input2 state</p>|`SNMP agent`|TELTONIKA-MIB.din2State<p>Update: 30m</p>|
|dinState|<p>Digital input state</p>|`SNMP agent`|TELTONIKA-MIB.dinState<p>Update: 30m</p>|
|connectionType|<p>Connection type</p>|`SNMP agent`|TELTONIKA-MIB.connectionType<p>Update: 24h</p>|
|SNMP Trap: TELTONIKA-MIB::digitalInputNotification|<p>Digital input trap</p>|`SNMP trap`|snmptrap["\s\.1\.3\.6\.1\.4\.1\.48690\.4\.2\.1\s"]<p>Update: 0</p>|
|serial|<p>Serial number</p>|`SNMP agent`|TELTONIKA-MIB.serial<p>Update: 24h</p>|
|signalStrength|<p>Modem signal strength</p>|`SNMP agent`|TELTONIKA-MIB.signalStrength<p>Update: 30m</p>|
|hardwareRevision|<p>Router hardware revision</p>|`SNMP agent`|TELTONIKA-MIB.hardwareRevision<p>Update: 24h</p>|
|doutState|<p>Digital output state</p>|`SNMP agent`|TELTONIKA-MIB.doutState<p>Update: 60m</p>|
|GPS:accuracy|<p>Accuracy</p>|`SNMP agent`|TELTONIKA-MIB.accuracy<p>Update: 60m</p>|
|SNMP Trap: TELTONIKA-MIB::digitalIioNotification|<p>Isolated Input trap</p>|`SNMP trap`|snmptrap["\s\.1\.3\.6\.1\.4\.1\.48690\.4\.2\.13\s"]<p>Update: 0</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 1m</p>|
|SNMP Trap: TELTONIKA-MIB::digitalOutput2Notification|<p>Isolated Output trap</p>|`SNMP trap`|snmptrap["\s\.1\.3\.6\.1\.4\.1\.48690\.4\.2\.14\s"]<p>Update: 0</p>|
|dout2State|<p>Digital output2 state</p>|`SNMP agent`|TELTONIKA-MIB.dout2State<p>Update: 30m</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 1m</p>|
|GPS:numSatellites|<p>Number of satellites</p>|`SNMP agent`|TELTONIKA-MIB.numSatellites<p>Update: 60m</p>|
|productCode|<p>Router product code</p>|`SNMP agent`|TELTONIKA-MIB.productCode<p>Update: 24h</p>|
|routerName|<p>Router name</p>|`SNMP agent`|TELTONIKA-MIB.routerName<p>Update: 24h</p>|
|hsNet|<p>Network interfaces</p>|`SNMP agent`|TELTONIKA-MIB.hsNet<p>Update: 24h</p>|
|hsSessionCount|<p>Number of sessions</p>|`SNMP agent`|TELTONIKA-MIB.hsSessionCount<p>Update: 30m</p>|
|hsState|<p>Hotspot state</p>|`SNMP agent`|TELTONIKA-MIB.hsState<p>Update: 60m</p>|
|CPU utilization|<p>MIB: HOST-RESOURCES-MIB The average, over the last minute, of the percentage of time that processors was not idle. Implementations may approximate this one minute smoothing period if necessary.</p>|`SNMP agent`|system.cpu.util<p>Update: 3m</p>|
|batchNumber|<p>Router batch number</p>|`SNMP agent`|TELTONIKA-MIB.batchNumber<p>Update: 24h</p>|
|SNMP Bad Community Names|<p>The total number of community-based SNMP messages (for example, SNMPv1) delivered to the SNMP entity which used an SNMP community name not known to said entity.</p>|`SNMP agent`|TELTONIKA-MIB.snmpBadCommunity<p>Update: 60m</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 1m</p>|
|GPS:latitude|<p>Latitutde coordinates</p>|`SNMP agent`|TELTONIKA-MIB.latitude<p>Update: 60m</p>|
|hsAuth|<p>Authentication mode</p>|`SNMP agent`|TELTONIKA-MIB.hsAuth<p>Update: 24h</p>|
|hsIP|<p>The IPv4 address</p>|`SNMP agent`|TELTONIKA-MIB.hsIP<p>Update: 24h</p>|
|{#MEMNAME}: Total memory|<p>MIB: HOST-RESOURCES-MIB The size of the storage represented by this entry, in units of hrStorageAllocationUnits. This object is writable to allow remote configuration of the size of the storage area in those cases where such an operation makes sense and is possible on the underlying system. For example, the amount of main memory allocated to a buffer pool might be modified or the amount of disk space allocated to virtual memory might be modified.</p>|`SNMP agent`|vm.memory.total[hrStorageSize.{#SNMPINDEX}]<p>Update: 1d</p><p>LLD</p>|
|{#MEMNAME}: Used memory|<p>MIB: HOST-RESOURCES-MIB The amount of the storage represented by this entry that is allocated, in units of hrStorageAllocationUnits.</p>|`SNMP agent`|vm.memory.used[hrStorageUsed.{#SNMPINDEX}]<p>Update: 10m</p><p>LLD</p>|
|{#MEMNAME}: Memory utilization|<p>Memory utilization in %</p>|`Calculated`|vm.memory.util[memoryUsedPercentage.{#SNMPINDEX}]<p>Update: 10m</p><p>LLD</p>|
|Network ARP entry {#IPPHYSADDRESS}|<p>-</p>|`SNMP agent`|NetArpEntry[{#IPPHYSADDRESS}]<p>Update: 30m</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Inbound packets discarded|<p>MIB: IF-MIB The number of inbound packets which were chosen to be discarded even though no errors had been detected to prevent their being deliverable to a higher-layer protocol. One possible reason for discarding such a packet could be to free up buffer space. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in.discards[ifInDiscards.{#SNMPINDEX}]<p>Update: 30m</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Inbound packets with errors|<p>MIB: IF-MIB For packet-oriented interfaces, the number of inbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of inbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in.errors[ifInErrors.{#SNMPINDEX}]<p>Update: 30m</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Bits received|<p>MIB: IF-MIB The total number of octets received on the interface, including framing characters. This object is a 64-bit version of ifInOctets. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in[ifHCInOctets.{#SNMPINDEX}]<p>Update: 3m</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Outbound packets discarded|<p>MIB: IF-MIB The number of outbound packets which were chosen to be discarded even though no errors had been detected to prevent their being deliverable to a higher-layer protocol. One possible reason for discarding such a packet could be to free up buffer space. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out.discards[ifOutDiscards.{#SNMPINDEX}]<p>Update: 30m</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Outbound packets with errors|<p>MIB: IF-MIB For packet-oriented interfaces, the number of outbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of outbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out.errors[ifOutErrors.{#SNMPINDEX}]<p>Update: 30m</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Bits sent|<p>MIB: IF-MIB The total number of octets transmitted out of the interface, including framing characters. This object is a 64-bit version of ifOutOctets.Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out[ifHCOutOctets.{#SNMPINDEX}]<p>Update: 3m</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Speed|<p>MIB: IF-MIB An estimate of the interface's current bandwidth in units of 1,000,000 bits per second. If this object reports a value of `n' then the speed of the interface is somewhere in the range of `n-500,000' to`n+499,999'. For interfaces which do not vary in bandwidth or for those where no accurate estimation can be made, this object should contain the nominal bandwidth. For a sub-layer which has no concept of bandwidth, this object should be zero.</p>|`SNMP agent`|net.if.speed[ifHighSpeed.{#SNMPINDEX}]<p>Update: 30m</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Operational status|<p>MIB: IF-MIB The current operational state of the interface. - The testing(3) state indicates that no operational packet scan be passed - If ifAdminStatus is down(2) then ifOperStatus should be down(2) - If ifAdminStatus is changed to up(1) then ifOperStatus should change to up(1) if the interface is ready to transmit and receive network traffic - It should change todormant(5) if the interface is waiting for external actions (such as a serial line waiting for an incoming connection) - It should remain in the down(2) state if and only if there is a fault that prevents it from going to the up(1) state - It should remain in the notPresent(6) state if the interface has missing(typically, hardware) components.</p>|`SNMP agent`|net.if.status[ifOperStatus.{#SNMPINDEX}]<p>Update: 3m</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Total daily traffic|<p>Total traffic sent and received today. Resets to 0 at midnight each day. x bits/s / 8 = x bytes/s x bytes/s * 60 = x bytes/min x bytes/min * 6 = x bytes since last update 60*6/8=45</p>|`Calculated`|net.if.total[daily.{#SNMPINDEX}]<p>Update: 6m</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Bits sent+received|<p>MIB: IF-MIB The total number of octets received and sent on the interface. Will be 0 if host offline or rebooted to prevent "not supported" on calculation in total traffic.</p>|`Calculated`|net.if.total[ifbps.{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Total monthly traffic|<p>Total traffic sent and received this month. Resets to 0 the first day every month.</p>|`Calculated`|net.if.total[monthly.{#SNMPINDEX}]<p>Update: 12m</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Total weekly traffic|<p>Total traffic sent and received this week. Resets to 0 every Monday.</p>|`Calculated`|net.if.total[weekly.{#SNMPINDEX}]<p>Update: 12m</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Interface type|<p>MIB: IF-MIB The type of interface. Additional values for ifType are assigned by the Internet Assigned NumbersAuthority (IANA), through updating the syntax of the IANAifType textual convention.</p>|`SNMP agent`|net.if.type[ifType.{#SNMPINDEX}]<p>Update: 1h</p><p>LLD</p>|
|Network Interface #{#IFINDEX} IP|<p>-</p>|`SNMP agent`|netInterfaceIP[{#IFINDEX}]<p>Update: 10m</p><p>LLD</p>|
|Network Interface #{#IFINDEX} Netmask|<p>-</p>|`SNMP agent`|netInterfaceNetmask[{#IFINDEX}]<p>Update: 1d</p><p>LLD</p>|
|hssDwBandwidth for {#SNMPINDEX}|<p>Max download bandwidth in b/s. Cannot be accessed using SNMPv1.</p>|`SNMP agent`|hssDwBandwidth[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|hssDwLimit for {#SNMPINDEX}|<p>Download limit in bytes. Cannot be accessed using SNMPv1.</p>|`SNMP agent`|hssDwLimit[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|hssIdleTimeout for {#SNMPINDEX}|<p>Idle timeout in sec.</p>|`SNMP agent`|hssIdleTimeout[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|hssID for {#SNMPINDEX}|<p>Session ID</p>|`SNMP agent`|hssID[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|hssIndex for {#SNMPINDEX}|<p>A unique value, greater than zero, for each session.</p>|`SNMP agent`|hssIndex[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|hssIP for {#SNMPINDEX}|<p>Clients IP address</p>|`SNMP agent`|hssIP[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|hssMAC for {#SNMPINDEX}|<p>Clients MAC address</p>|`SNMP agent`|hssMAC[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|hssState for {#SNMPINDEX}|<p>Session state</p>|`SNMP agent`|hssState[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|hssTimeLimit for {#SNMPINDEX}|<p>Time limit in sec. Cannot be accessed using SNMPv1.</p>|`SNMP agent`|hssTimeLimit[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|hssUpBandwidth for {#SNMPINDEX}|<p>Max upwnload bandwidth in b/s. Cannot be accessed using SNMPv1.</p>|`SNMP agent`|hssUpBandwidth[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|hssUpLimit for {#SNMPINDEX}|<p>Upload limit in bytes. Cannot be accessed using SNMPv1.</p>|`SNMP agent`|hssUpLimit[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|hssURL for {#SNMPINDEX}|<p>Original URL</p>|`SNMP agent`|hssURL[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|hssUsername for {#SNMPINDEX}|<p>Username</p>|`SNMP agent`|hssUsername[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|ICMP loss - operator {#OPERATOR}|<p>-</p>|`Calculated`|icmppingloss-[{#OPERATORNUMBER}]<p>Update: 1m</p><p>LLD</p>|
|mdRevision for {#SNMPVALUE}|<p>Modem revision</p>|`SNMP agent`|mRevision[{#SNMPVALUE}]<p>Update: 60m</p><p>LLD</p>|
|mdTemperature for {#SNMPVALUE}|<p>Modem temperature</p>|`SNMP agent`|mTemperature[{#SNMPVALUE}]<p>Update: 60m</p><p>LLD</p>|
|mdSINR for {#SNMPVALUE}|<p>>=20 Excellent. 20 to 13 Good. 13 to 11 Decent to slow, near 0 disconnects. <= 0 dB Unusable</p>|`SNMP agent`|mSINR[{#SNMPVALUE}]<p>Update: 3m</p><p>LLD</p>|
|mdSimState for {#SNMPVALUE}|<p>SIM status</p>|`SNMP agent`|mSimState[{#SNMPVALUE}]<p>Update: 10m</p><p>LLD</p>|
|mdRSSI for {#SNMPVALUE}|<p>> -65 Excellent. -64 to -75 Good. -76 to -85 Decent, may disconnect. -86 to -100 Slow with frequent disconnects.-101 to -125 Unusable. The average total received power observed only in OFDM symbols containing reference symbols for antenna port 0 (i.e., OFDM symbol 0 & 4 in a slot) in the measurement bandwidth over N resource blocks. The total received power of the carrier RSSI includes the power from co-channel serving & non-serving cells, adjacent channel interference, thermal noise, etc. Total measured over 12-subcarriers including RS from Serving Cell, Traffic in the Serving Cell</p>|`SNMP agent`|mSignal[{#SNMPVALUE}]<p>Update: 3m</p><p>LLD</p>|
|mdRSSI for {#SNMPVALUE} operator {#OPERATOR}|<p>> -65 Excellent. -64 to -75 Good. -76 to -85 Decent, may disconnect. -86 to -100 Slow with frequent disconnects.-101 to -125 Unusable. The average total received power observed only in OFDM symbols containing reference symbols for antenna port 0 (i.e., OFDM symbol 0 & 4 in a slot) in the measurement bandwidth over N resource blocks. The total received power of the carrier RSSI includes the power from co-channel serving & non-serving cells, adjacent channel interference, thermal noise, etc. Total measured over 12-subcarriers including RS from Serving Cell, Traffic in the Serving Cell</p>|`Calculated`|mSignal[{#SNMPVALUE}-{#OPERATORNUMBER}]<p>Update: 3m</p><p>LLD</p>|
|mdRSSI for {#SNMPVALUE} operator {#OPERATOR} cellID {#MCELLID}|<p>> -65 Excellent. -64 to -75 Good. -76 to -85 Decent, may disconnect. -86 to -100 Slow with frequent disconnects.-101 to -125 Unusable. The average total received power observed only in OFDM symbols containing reference symbols for antenna port 0 (i.e., OFDM symbol 0 & 4 in a slot) in the measurement bandwidth over N resource blocks. The total received power of the carrier RSSI includes the power from co-channel serving & non-serving cells, adjacent channel interference, thermal noise, etc. Total measured over 12-subcarriers including RS from Serving Cell, Traffic in the Serving Cell</p>|`Calculated`|mSignal[{#SNMPVALUE}-{#MCELLID}]<p>Update: 3m</p><p>LLD</p>|
|mdSerial for {#SNMPVALUE}|<p>Serial number</p>|`SNMP agent`|mSerial[{#SNMPVALUE}]<p>Update: 60m</p><p>LLD</p>|
|mdRSRQ for {#SNMPVALUE}|<p>(4G only) Quality considering also RSSI and the number of used Resource Blocks (N). RSRQ = (N * RSRP) / RSSI measured over the same bandwidth. RSRQ is a C/I type of measurement and it indicates the quality of the received reference signal. The RSRQ measurement provides additional information when RSRP is not sufficient to make a reliable handover or cell reselection decision. -3 to -10 Excellent. -11 to -15 Good. -16 to -19 Slow. –<-19.5 Unusable</p>|`SNMP agent`|mRSRQ[{#SNMPVALUE}]<p>Update: 3m</p><p>LLD</p>|
|mdRSRP for {#SNMPVALUE}|<p>(4G only) Reference Signal Receive Power is the average power of Resource Elements (RE) that carry cell specific Reference Signals (RS) over the entire bandwidth. RSRP does a better job of measuring signal power from a specific sector while potentially excluding noise and interference from other sectors. -44 to -80 Excellent. -81 to -109 Good. -110 to -120 Slow <-121 Unusable</p>|`SNMP agent`|mRSRP[{#SNMPVALUE}]<p>Update: 3m</p><p>LLD</p>|
|mdRSRP for {#SNMPVALUE} operator {#OPERATOR}|<p>(4G only) Reference Signal Receive Power is the average power of Resource Elements (RE) that carry cell specific Reference Signals (RS) over the entire bandwidth. RSRP does a better job of measuring signal power from a specific sector while potentially excluding noise and interference from other sectors. -44 to -80 Excellent. -81 to -109 Good. -110 to -120 Slow <-121 Unusable</p>|`Calculated`|mRSRP[{#SNMPVALUE}-{#OPERATORNUMBER}]<p>Update: 3m</p><p>LLD</p>|
|mdRSRP for {#SNMPVALUE} operator {#OPERATOR} cellID {#MCELLID}|<p>(4G only) Reference Signal Receive Power is the average power of Resource Elements (RE) that carry cell specific Reference Signals (RS) over the entire bandwidth. RSRP does a better job of measuring signal power from a specific sector while potentially excluding noise and interference from other sectors. -44 to -80 Excellent. -81 to -109 Good. -110 to -120 Slow <-121 Unusable</p>|`Calculated`|mRSRP[{#SNMPVALUE}-{#MCELLID}]<p>Update: 3m</p><p>LLD</p>|
|mdPinState for {#SNMPVALUE}|<p>PIN status</p>|`SNMP agent`|mPinState[{#SNMPVALUE}]<p>Update: 10m</p><p>LLD</p>|
|ICMP response time - operator {#OPERATOR}|<p>-</p>|`Calculated`|icmppingsec-[{#OPERATORNUMBER}]<p>Update: 1m</p><p>LLD</p>|
|mdOperator for {#SNMPVALUE}|<p>Operator currently in use</p>|`SNMP agent`|mOperator[{#SNMPVALUE}]<p>Update: 3m</p><p>LLD</p>|
|mdOperatorNumber for {#SNMPVALUE}|<p>Operator number (MCC+MNC)</p>|`SNMP agent`|mOperatorNumber[{#SNMPVALUE}]<p>Update: 3m</p><p>LLD</p>|
|mdNetState for {#SNMPVALUE}|<p>Mobile network registration status</p>|`SNMP agent`|mNetState[{#SNMPVALUE}]<p>Update: 10m</p><p>LLD</p>|
|mdModel for {#SNMPVALUE}|<p>Modem model</p>|`SNMP agent`|mModel[{#SNMPVALUE}]<p>Update: 60m</p><p>LLD</p>|
|mdManufacturer for {#SNMPVALUE}|<p>Modem manufacturer</p>|`SNMP agent`|mManufacturer[{#SNMPVALUE}]<p>Update: 60m</p><p>LLD</p>|
|mdIndex for {#SNMPVALUE}|<p>A unique value, greater than zero, for each modem.</p>|`SNMP agent`|mIndex[{#SNMPVALUE}]<p>Update: 60m</p><p>LLD</p>|
|mdIMSI for {#SNMPVALUE}|<p>IMSI for simcard</p>|`SNMP agent`|mIMSI[{#SNMPVALUE}]<p>Update: 10m</p><p>LLD</p>|
|mdIMEI for {#SNMPVALUE}|<p>Modem IMEI</p>|`SNMP agent`|mImei[{#SNMPVALUE}]<p>Update: 60m</p><p>LLD</p>|
|mdDescr for {#SNMPVALUE}|<p>A textual string containing information about the modem.</p>|`SNMP agent`|mDescr[{#SNMPVALUE}]<p>Update: 60m</p><p>LLD</p>|
|mdConnectionType for {#SNMPVALUE}|<p>Data session connection type</p>|`SNMP agent`|mConnectionType[{#SNMPVALUE}]<p>Update: 10m</p><p>LLD</p>|
|mdConnectionState for {#SNMPVALUE}|<p>Sata session connection state</p>|`SNMP agent`|mConnectionState[{#SNMPVALUE}]<p>Update: 10m</p><p>LLD</p>|
|mdCellID for {#SNMPVALUE}|<p>CELL ID</p>|`SNMP agent`|mCellID[{#SNMPVALUE}]<p>Update: 10m</p><p>LLD</p>|
|mdTraffic monthly for {#SNMPVALUE} operator {#OPERATOR}|<p>Accumulated monthly mobile data usage for each operator Tested on RUT950 where wwan is always index 11 If your router has dual modems there will probably be multiple wwan interfaces so this item can be disabled.</p>|`Calculated`|mTraffic[{#SNMPVALUE}-{#OPERATORNUMBER}]<p>Update: 12m</p><p>LLD</p>|
|Storage {#FSNAME}: Space utilization|<p>Space utilization in % for {#FSNAME}</p>|`Calculated`|vfs.fs.pused[storageUsedPercentage.{#SNMPINDEX}]<p>Update: 1d</p><p>LLD</p>|
|Storage {#FSNAME}: Total space|<p>MIB: HOST-RESOURCES-MIB The size of the storage represented by this entry, in units of hrStorageAllocationUnits. This object is writable to allow remote configuration of the size of the storage area in those cases where such an operation makes sense and is possible on the underlying system. For example, the amount of main storage allocated to a buffer pool might be modified or the amount of disk space allocated to virtual storage might be modified.</p>|`SNMP agent`|vfs.fs.total[hrStorageSize.{#SNMPINDEX}]<p>Update: 1d</p><p>LLD</p>|
|Storage {#FSNAME}: Used space|<p>MIB: HOST-RESOURCES-MIB The amount of the storage represented by this entry that is allocated, in units of hrStorageAllocationUnits.</p>|`SNMP agent`|vfs.fs.used[hrStorageUsed.{#SNMPINDEX}]<p>Update: 1d</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Interface {#IFNAME}({#IFALIAS}): Ethernet has changed to lower speed than it was before|<p>This Ethernet connection has transitioned down from its known maximum speed. This might be a sign of autonegotiation issues. Ack to close.</p>|<p>**Expression**: change(/Template Teltonika RUT950 and RUT955 SNMP/net.if.speed[ifHighSpeed.{#SNMPINDEX}])<0 and last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.speed[ifHighSpeed.{#SNMPINDEX}])>0 and ( last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.type[ifType.{#SNMPINDEX}])=6 or last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.type[ifType.{#SNMPINDEX}])=7 or last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.type[ifType.{#SNMPINDEX}])=11 or last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.type[ifType.{#SNMPINDEX}])=62 or last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.type[ifType.{#SNMPINDEX}])=69 or last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.type[ifType.{#SNMPINDEX}])=117 ) and (last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.status[ifOperStatus.{#SNMPINDEX}])<>2)</p><p>**Recovery expression**: (change(/Template Teltonika RUT950 and RUT955 SNMP/net.if.speed[ifHighSpeed.{#SNMPINDEX}])>0 and last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.speed[ifHighSpeed.{#SNMPINDEX}],#2)>0) or (last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.status[ifOperStatus.{#SNMPINDEX}])=2)</p>|information|
|Interface {#IFNAME}({#IFALIAS}): High bandwidth usage (>{$IF.UTIL.MAX:"{#IFNAME}"}% )|<p>The network interface utilization is close to its estimated maximum bandwidth.</p>|<p>**Expression**: (avg(/Template Teltonika RUT950 and RUT955 SNMP/net.if.in[ifHCInOctets.{#SNMPINDEX}],15m)>(90/100)*last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.speed[ifHighSpeed.{#SNMPINDEX}]) or avg(/Template Teltonika RUT950 and RUT955 SNMP/net.if.out[ifHCOutOctets.{#SNMPINDEX}],15m)>(90/100)*last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.speed[ifHighSpeed.{#SNMPINDEX}])) and last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.speed[ifHighSpeed.{#SNMPINDEX}])>0</p><p>**Recovery expression**: avg(/Template Teltonika RUT950 and RUT955 SNMP/net.if.in[ifHCInOctets.{#SNMPINDEX}],15m)<((90-3)/100)*last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.speed[ifHighSpeed.{#SNMPINDEX}]) and avg(/Template Teltonika RUT950 and RUT955 SNMP/net.if.out[ifHCOutOctets.{#SNMPINDEX}],15m)<((90-3)/100)*last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.speed[ifHighSpeed.{#SNMPINDEX}])</p>|warning|
|Interface {#IFNAME}({#IFALIAS}): High error rate (>{$IF.ERRORS.WARN:"{#IFNAME}"} for 5m)|<p>Recovers when below 80% of {$IF.ERRORS.WARN:"{#IFNAME}"} threshold</p>|<p>**Expression**: min(/Template Teltonika RUT950 and RUT955 SNMP/net.if.in.errors[ifInErrors.{#SNMPINDEX}],5m)>2 or min(/Template Teltonika RUT950 and RUT955 SNMP/net.if.out.errors[ifOutErrors.{#SNMPINDEX}],5m)>2</p><p>**Recovery expression**: max(/Template Teltonika RUT950 and RUT955 SNMP/net.if.in.errors[ifInErrors.{#SNMPINDEX}],5m)<2*0.8 and max(/Template Teltonika RUT950 and RUT955 SNMP/net.if.out.errors[ifOutErrors.{#SNMPINDEX}],5m)<2*0.8</p>|warning|
|Interface {#IFNAME}({#IFALIAS}): Link down|<p>This trigger expression works as follows: 1. Can be triggered if operations status is down. 2. {$IFCONTROL:"{#IFNAME}"}=1 - user can redefine Context macro to value - 0. That marks this interface as not important. No new trigger will be fired if this interface is down. 3. {TEMPLATE_NAME:METRIC.diff()}=1) - trigger fires only if operational status was up(1) sometime before. (So, do not fire 'ethernal off' interfaces.) WARNING: if closed manually - won't fire again on next poll, because of .diff.</p>|<p>**Expression**: 1=1 and last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.status[ifOperStatus.{#SNMPINDEX}])=2 and (last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.status[ifOperStatus.{#SNMPINDEX}],#1)<>last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.status[ifOperStatus.{#SNMPINDEX}],#2))</p><p>**Recovery expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.status[ifOperStatus.{#SNMPINDEX}])<>2 or 1=0</p>|average|
|Interface {#IFNAME}({#IFALIAS}): High daily traffic usage (>{$IF.UTIL.DAILY:"{#IFNAME}"} )|<p>-</p>|<p>**Expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.total[daily.{#SNMPINDEX}])>5G</p><p>**Recovery expression**: </p>|information|
|Interface {#IFNAME}({#IFALIAS}): High monthly traffic usage (>{$IF.UTIL.MONTHLY:"{#IFNAME}"} )|<p>-</p>|<p>**Expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.total[monthly.{#SNMPINDEX}])>15G</p><p>**Recovery expression**: </p>|information|
|Interface {#IFNAME}({#IFALIAS}): High weekly traffic usage (>{$IF.UTIL.WEEKLY:"{#IFNAME}"} )|<p>-</p>|<p>**Expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.total[weekly.{#SNMPINDEX}])>10G</p><p>**Recovery expression**: </p>|information|
|Modem not Connected|<p>-</p>|<p>**Expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/mConnectionState[{#SNMPVALUE}])<>"Connected"</p><p>**Recovery expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/mConnectionState[{#SNMPVALUE}])="Connected"</p>|warning|
|IMSI changed|<p>-</p>|<p>**Expression**: change(/Template Teltonika RUT950 and RUT955 SNMP/mIMSI[{#SNMPVALUE}])=1</p><p>**Recovery expression**: </p>|information|
|Mobile operator changed|<p>-</p>|<p>**Expression**: change(/Template Teltonika RUT950 and RUT955 SNMP/mOperator[{#SNMPVALUE}])=1</p><p>**Recovery expression**: </p>|information|
|Simcard PIN not READY|<p>-</p>|<p>**Expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/mPinState[{#SNMPVALUE}])<>"READY"</p><p>**Recovery expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/mPinState[{#SNMPVALUE}])="READY"</p>|warning|
|Low Signal RSRP|<p>Signal Strength RSRP < -109.</p>|<p>**Expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/mRSRP[{#SNMPVALUE}])<-109</p><p>**Recovery expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/mRSRP[{#SNMPVALUE}])>-110</p>|information|
|Low Signal RSSI|<p>-</p>|<p>**Expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/mSignal[{#SNMPVALUE}])<-82</p><p>**Recovery expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/mSignal[{#SNMPVALUE}])>-80</p>|information|
|Router offline (SNMP timeout RSSI)|<p>No SNMP data was collected for 600 seconds</p>|<p>**Expression**: nodata(/Template Teltonika RUT950 and RUT955 SNMP/mSignal[{#SNMPVALUE}],600)=1</p><p>**Recovery expression**: </p>|warning|
|Simcard not inserted|<p>-</p>|<p>**Expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/mSimState[{#SNMPVALUE}])<>"inserted"</p><p>**Recovery expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/mSimState[{#SNMPVALUE}])="inserted"</p>|warning|
|High monthly traffic usage for {#SNMPVALUE} operator {#OPERATOR} (>{$IF.UTIL.MONTHLY})|<p>-</p>|<p>**Expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/mTraffic[{#SNMPVALUE}-{#OPERATORNUMBER}])>15G</p><p>**Recovery expression**: </p>|information|
|IP Changed on Interface {#IFINDEX}|<p>-</p>|<p>**Expression**: (last(/Template Teltonika RUT950 and RUT955 SNMP/netInterfaceIP[{#IFINDEX}],#1)<>last(/Template Teltonika RUT950 and RUT955 SNMP/netInterfaceIP[{#IFINDEX}],#2))>0</p><p>**Recovery expression**: </p>|not classified|
|Teltonika {#FSNAME}: Disk space is critically low (used > {$VFS.FS.PUSED.MAX.CRIT:"{#FSNAME}"}%)|<p>Two conditions should match: First, space utilization should be above {$VFS.FS.PUSED.MAX.CRIT:"{#FSNAME}"}. Second condition should be one of the following: - The disk free space is less than 5G. - The disk will be full in less than 24 hours.</p>|<p>**Expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.pused[storageUsedPercentage.{#SNMPINDEX}])>90 and ((last(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.total[hrStorageSize.{#SNMPINDEX}])-last(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.used[hrStorageUsed.{#SNMPINDEX}]))<5G or timeleft(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.pused[storageUsedPercentage.{#SNMPINDEX}],1h,100)<1d) and {#FSNAME} <> "/rom"</p><p>**Recovery expression**: </p>|average|
|Teltonika {#FSNAME}: Disk space is low (used > {$VFS.FS.PUSED.MAX.WARN:"{#FSNAME}"}%)|<p>Two conditions should match: First, space utilization should be above {$VFS.FS.PUSED.MAX.WARN:"{#FSNAME}"}. Second condition should be one of the following: - The disk free space is less than 10G. - The disk will be full in less than 24 hours.</p>|<p>**Expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.pused[storageUsedPercentage.{#SNMPINDEX}])>80 and ((last(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.total[hrStorageSize.{#SNMPINDEX}])-last(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.used[hrStorageUsed.{#SNMPINDEX}]))<10G or timeleft(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.pused[storageUsedPercentage.{#SNMPINDEX}],1h,100)<1d) and {#FSNAME} <> "/rom"</p><p>**Recovery expression**: </p>|warning|
|{#FSNAME}: Disk space is critically low (used > {$VFS.FS.PUSED.MAX.CRIT:"{#FSNAME}"}%)|<p>Two conditions should match: First, space utilization should be above {$VFS.FS.PUSED.MAX.CRIT:"{#FSNAME}"}. Second condition should be one of the following: - The disk free space is less than 5G. - The disk will be full in less than 24 hours.</p>|<p>**Expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.pused[storageUsedPercentage.{#SNMPINDEX}])>90 and ((last(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.total[hrStorageSize.{#SNMPINDEX}])-last(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.used[hrStorageUsed.{#SNMPINDEX}]))<5G or timeleft(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.pused[storageUsedPercentage.{#SNMPINDEX}],1h,100)<1d)</p><p>**Recovery expression**: </p>|average|
|{#FSNAME}: Disk space is low (used > {$VFS.FS.PUSED.MAX.WARN:"{#FSNAME}"}%)|<p>Two conditions should match: First, space utilization should be above {$VFS.FS.PUSED.MAX.WARN:"{#FSNAME}"}. Second condition should be one of the following: - The disk free space is less than 10G. - The disk will be full in less than 24 hours.</p>|<p>**Expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.pused[storageUsedPercentage.{#SNMPINDEX}])>80 and ((last(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.total[hrStorageSize.{#SNMPINDEX}])-last(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.used[hrStorageUsed.{#SNMPINDEX}]))<10G or timeleft(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.pused[storageUsedPercentage.{#SNMPINDEX}],1h,100)<1d)</p><p>**Recovery expression**: </p>|warning|
|{#MEMNAME}: High memory utilization (>{$MEMORY.UTIL.MAX}% for 5m)|<p>The system is running out of free memory.</p>|<p>**Expression**: min(/Template Teltonika RUT950 and RUT955 SNMP/vm.memory.util[memoryUsedPercentage.{#SNMPINDEX}],5m)>90</p><p>**Recovery expression**: </p>|average|
|{#MEMNAME}: High memory utilization (>{$MEMORY.UTIL.MAX}% for 5m) (LLD)|<p>The system is running out of free memory.</p>|<p>**Expression**: min(/Template Teltonika RUT950 and RUT955 SNMP/vm.memory.util[memoryUsedPercentage.{#SNMPINDEX}],5m)>90</p><p>**Recovery expression**: </p>|average|
|Interface {#IFNAME}({#IFALIAS}): Ethernet has changed to lower speed than it was before (LLD)|<p>This Ethernet connection has transitioned down from its known maximum speed. This might be a sign of autonegotiation issues. Ack to close.</p>|<p>**Expression**: change(/Template Teltonika RUT950 and RUT955 SNMP/net.if.speed[ifHighSpeed.{#SNMPINDEX}])<0 and last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.speed[ifHighSpeed.{#SNMPINDEX}])>0 and ( last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.type[ifType.{#SNMPINDEX}])=6 or last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.type[ifType.{#SNMPINDEX}])=7 or last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.type[ifType.{#SNMPINDEX}])=11 or last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.type[ifType.{#SNMPINDEX}])=62 or last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.type[ifType.{#SNMPINDEX}])=69 or last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.type[ifType.{#SNMPINDEX}])=117 ) and (last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.status[ifOperStatus.{#SNMPINDEX}])<>2)</p><p>**Recovery expression**: (change(/Template Teltonika RUT950 and RUT955 SNMP/net.if.speed[ifHighSpeed.{#SNMPINDEX}])>0 and last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.speed[ifHighSpeed.{#SNMPINDEX}],#2)>0) or (last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.status[ifOperStatus.{#SNMPINDEX}])=2)</p>|information|
|Interface {#IFNAME}({#IFALIAS}): High bandwidth usage (>{$IF.UTIL.MAX:"{#IFNAME}"}% ) (LLD)|<p>The network interface utilization is close to its estimated maximum bandwidth.</p>|<p>**Expression**: (avg(/Template Teltonika RUT950 and RUT955 SNMP/net.if.in[ifHCInOctets.{#SNMPINDEX}],15m)>(90/100)*last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.speed[ifHighSpeed.{#SNMPINDEX}]) or avg(/Template Teltonika RUT950 and RUT955 SNMP/net.if.out[ifHCOutOctets.{#SNMPINDEX}],15m)>(90/100)*last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.speed[ifHighSpeed.{#SNMPINDEX}])) and last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.speed[ifHighSpeed.{#SNMPINDEX}])>0</p><p>**Recovery expression**: avg(/Template Teltonika RUT950 and RUT955 SNMP/net.if.in[ifHCInOctets.{#SNMPINDEX}],15m)<((90-3)/100)*last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.speed[ifHighSpeed.{#SNMPINDEX}]) and avg(/Template Teltonika RUT950 and RUT955 SNMP/net.if.out[ifHCOutOctets.{#SNMPINDEX}],15m)<((90-3)/100)*last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.speed[ifHighSpeed.{#SNMPINDEX}])</p>|warning|
|Interface {#IFNAME}({#IFALIAS}): High error rate (>{$IF.ERRORS.WARN:"{#IFNAME}"} for 5m) (LLD)|<p>Recovers when below 80% of {$IF.ERRORS.WARN:"{#IFNAME}"} threshold</p>|<p>**Expression**: min(/Template Teltonika RUT950 and RUT955 SNMP/net.if.in.errors[ifInErrors.{#SNMPINDEX}],5m)>2 or min(/Template Teltonika RUT950 and RUT955 SNMP/net.if.out.errors[ifOutErrors.{#SNMPINDEX}],5m)>2</p><p>**Recovery expression**: max(/Template Teltonika RUT950 and RUT955 SNMP/net.if.in.errors[ifInErrors.{#SNMPINDEX}],5m)<2*0.8 and max(/Template Teltonika RUT950 and RUT955 SNMP/net.if.out.errors[ifOutErrors.{#SNMPINDEX}],5m)<2*0.8</p>|warning|
|Interface {#IFNAME}({#IFALIAS}): Link down (LLD)|<p>This trigger expression works as follows: 1. Can be triggered if operations status is down. 2. {$IFCONTROL:"{#IFNAME}"}=1 - user can redefine Context macro to value - 0. That marks this interface as not important. No new trigger will be fired if this interface is down. 3. {TEMPLATE_NAME:METRIC.diff()}=1) - trigger fires only if operational status was up(1) sometime before. (So, do not fire 'ethernal off' interfaces.) WARNING: if closed manually - won't fire again on next poll, because of .diff.</p>|<p>**Expression**: 1=1 and last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.status[ifOperStatus.{#SNMPINDEX}])=2 and (last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.status[ifOperStatus.{#SNMPINDEX}],#1)<>last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.status[ifOperStatus.{#SNMPINDEX}],#2))</p><p>**Recovery expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.status[ifOperStatus.{#SNMPINDEX}])<>2 or 1=0</p>|average|
|Interface {#IFNAME}({#IFALIAS}): High daily traffic usage (>{$IF.UTIL.DAILY:"{#IFNAME}"} ) (LLD)|<p>-</p>|<p>**Expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.total[daily.{#SNMPINDEX}])>5G</p><p>**Recovery expression**: </p>|information|
|Interface {#IFNAME}({#IFALIAS}): High monthly traffic usage (>{$IF.UTIL.MONTHLY:"{#IFNAME}"} ) (LLD)|<p>-</p>|<p>**Expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.total[monthly.{#SNMPINDEX}])>15G</p><p>**Recovery expression**: </p>|information|
|Interface {#IFNAME}({#IFALIAS}): High weekly traffic usage (>{$IF.UTIL.WEEKLY:"{#IFNAME}"} ) (LLD)|<p>-</p>|<p>**Expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/net.if.total[weekly.{#SNMPINDEX}])>10G</p><p>**Recovery expression**: </p>|information|
|IP Changed on Interface {#IFINDEX} (LLD)|<p>-</p>|<p>**Expression**: (last(/Template Teltonika RUT950 and RUT955 SNMP/netInterfaceIP[{#IFINDEX}],#1)<>last(/Template Teltonika RUT950 and RUT955 SNMP/netInterfaceIP[{#IFINDEX}],#2))>0</p><p>**Recovery expression**: </p>|not classified|
|Modem not Connected (LLD)|<p>-</p>|<p>**Expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/mConnectionState[{#SNMPVALUE}])<>"Connected"</p><p>**Recovery expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/mConnectionState[{#SNMPVALUE}])="Connected"</p>|warning|
|IMSI changed (LLD)|<p>-</p>|<p>**Expression**: change(/Template Teltonika RUT950 and RUT955 SNMP/mIMSI[{#SNMPVALUE}])=1</p><p>**Recovery expression**: </p>|information|
|Mobile operator changed (LLD)|<p>-</p>|<p>**Expression**: change(/Template Teltonika RUT950 and RUT955 SNMP/mOperator[{#SNMPVALUE}])=1</p><p>**Recovery expression**: </p>|information|
|Simcard PIN not READY (LLD)|<p>-</p>|<p>**Expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/mPinState[{#SNMPVALUE}])<>"READY"</p><p>**Recovery expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/mPinState[{#SNMPVALUE}])="READY"</p>|warning|
|Low Signal RSRP (LLD)|<p>Signal Strength RSRP < -109.</p>|<p>**Expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/mRSRP[{#SNMPVALUE}])<-109</p><p>**Recovery expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/mRSRP[{#SNMPVALUE}])>-110</p>|information|
|Low Signal RSSI (LLD)|<p>-</p>|<p>**Expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/mSignal[{#SNMPVALUE}])<-82</p><p>**Recovery expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/mSignal[{#SNMPVALUE}])>-80</p>|information|
|Router offline (SNMP timeout RSSI) (LLD)|<p>No SNMP data was collected for 600 seconds</p>|<p>**Expression**: nodata(/Template Teltonika RUT950 and RUT955 SNMP/mSignal[{#SNMPVALUE}],600)=1</p><p>**Recovery expression**: </p>|warning|
|Simcard not inserted (LLD)|<p>-</p>|<p>**Expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/mSimState[{#SNMPVALUE}])<>"inserted"</p><p>**Recovery expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/mSimState[{#SNMPVALUE}])="inserted"</p>|warning|
|High monthly traffic usage for {#SNMPVALUE} operator {#OPERATOR} (>{$IF.UTIL.MONTHLY}) (LLD)|<p>-</p>|<p>**Expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/mTraffic[{#SNMPVALUE}-{#OPERATORNUMBER}])>15G</p><p>**Recovery expression**: </p>|information|
|Teltonika {#FSNAME}: Disk space is critically low (used > {$VFS.FS.PUSED.MAX.CRIT:"{#FSNAME}"}%) (LLD)|<p>Two conditions should match: First, space utilization should be above {$VFS.FS.PUSED.MAX.CRIT:"{#FSNAME}"}. Second condition should be one of the following: - The disk free space is less than 5G. - The disk will be full in less than 24 hours.</p>|<p>**Expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.pused[storageUsedPercentage.{#SNMPINDEX}])>90 and ((last(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.total[hrStorageSize.{#SNMPINDEX}])-last(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.used[hrStorageUsed.{#SNMPINDEX}]))<5G or timeleft(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.pused[storageUsedPercentage.{#SNMPINDEX}],1h,100)<1d) and {#FSNAME} <> "/rom"</p><p>**Recovery expression**: </p>|average|
|Teltonika {#FSNAME}: Disk space is low (used > {$VFS.FS.PUSED.MAX.WARN:"{#FSNAME}"}%) (LLD)|<p>Two conditions should match: First, space utilization should be above {$VFS.FS.PUSED.MAX.WARN:"{#FSNAME}"}. Second condition should be one of the following: - The disk free space is less than 10G. - The disk will be full in less than 24 hours.</p>|<p>**Expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.pused[storageUsedPercentage.{#SNMPINDEX}])>80 and ((last(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.total[hrStorageSize.{#SNMPINDEX}])-last(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.used[hrStorageUsed.{#SNMPINDEX}]))<10G or timeleft(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.pused[storageUsedPercentage.{#SNMPINDEX}],1h,100)<1d) and {#FSNAME} <> "/rom"</p><p>**Recovery expression**: </p>|warning|
|{#FSNAME}: Disk space is critically low (used > {$VFS.FS.PUSED.MAX.CRIT:"{#FSNAME}"}%) (LLD)|<p>Two conditions should match: First, space utilization should be above {$VFS.FS.PUSED.MAX.CRIT:"{#FSNAME}"}. Second condition should be one of the following: - The disk free space is less than 5G. - The disk will be full in less than 24 hours.</p>|<p>**Expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.pused[storageUsedPercentage.{#SNMPINDEX}])>90 and ((last(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.total[hrStorageSize.{#SNMPINDEX}])-last(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.used[hrStorageUsed.{#SNMPINDEX}]))<5G or timeleft(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.pused[storageUsedPercentage.{#SNMPINDEX}],1h,100)<1d)</p><p>**Recovery expression**: </p>|average|
|{#FSNAME}: Disk space is low (used > {$VFS.FS.PUSED.MAX.WARN:"{#FSNAME}"}%) (LLD)|<p>Two conditions should match: First, space utilization should be above {$VFS.FS.PUSED.MAX.WARN:"{#FSNAME}"}. Second condition should be one of the following: - The disk free space is less than 10G. - The disk will be full in less than 24 hours.</p>|<p>**Expression**: last(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.pused[storageUsedPercentage.{#SNMPINDEX}])>80 and ((last(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.total[hrStorageSize.{#SNMPINDEX}])-last(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.used[hrStorageUsed.{#SNMPINDEX}]))<10G or timeleft(/Template Teltonika RUT950 and RUT955 SNMP/vfs.fs.pused[storageUsedPercentage.{#SNMPINDEX}],1h,100)<1d)</p><p>**Recovery expression**: </p>|warning|
