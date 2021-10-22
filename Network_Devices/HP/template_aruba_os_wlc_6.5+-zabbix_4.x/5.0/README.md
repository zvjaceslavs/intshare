# Template ArubaOS

## Overview

**This template is a copy of:**


[https://share.zabbix.com/network\_devices/cat-hp/aruba-os-wlc-6-5](network_devices/cat-hp/aruba-os-wlc-6-5)


 


I just adapt for Zabbix 4.x. You can find the features and instructions on the link above.



## Author

samwiseg0

## Macros used

There are no macros links in this template.

## Template links

|Name|
|----|
|Template Module ICMP Ping|
|Template Module Interfaces SNMPv2|
## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Access Points|<p>-</p>|`SNMP agent`|aos.ap.[{#APNAME}]<p>Update: 1h</p>|
|Auth Servers|<p>-</p>|`SNMP agent`|aos.authServer.[{#SNMPVALUE}]<p>Update: 1h</p>|
|CPU|<p>-</p>|`SNMP agent`|aos.cpu.[{#SNMPVALUE}]<p>Update: 1h</p>|
|Fans|<p>-</p>|`SNMP agent`|aos.fan.[{#SNMPINDEX}]<p>Update: 1h</p>|
|Licenses|<p>-</p>|`SNMP agent`|aos.lics.[{#SNMPVALUE}]<p>Update: 1h</p>|
|PSU|<p>-</p>|`SNMP agent`|aos.psu.[{#SNMPINDEX}]<p>Update: 1h</p>|
|Storage|<p>-</p>|`SNMP agent`|aos.storage.[{#SNMPVALUE}]<p>Update: 1h</p>|
|Network Interfaces Discovery|<p>Discovering interfaces from IF-MIB. Interfaces with down(2) Administrative Status are not discovered.</p>|`SNMP agent`|net.if.discovery<p>Update: 300</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Base MAC|<p>-</p>|`SNMP agent`|aos.baseMAC<p>Update: 1d</p>|
|Config ID|<p>-</p>|`SNMP agent`|aos.configID<p>Update: 5m</p>|
|Hardware Version|<p>-</p>|`SNMP agent`|aos.hardwareVer<p>Update: 1d</p>|
|Hostname|<p>-</p>|`SNMP agent`|aos.hostName<p>Update: 1d</p>|
|IP Address|<p>-</p>|`SNMP agent`|aos.ip<p>Update: 1d</p>|
|IPv6 Address|<p>-</p>|`SNMP agent`|aos.ipv6<p>Update: 1d</p>|
|Switch Local License Count|<p>-</p>|`SNMP agent`|aos.localLics<p>Update: 1d</p>|
|Memory Free|<p>-</p>|`SNMP agent`|aos.memFree<p>Update: 5m</p>|
|Memory Total|<p>-</p>|`SNMP agent`|aos.memTotal<p>Update: 5m</p>|
|Memory Used|<p>-</p>|`SNMP agent`|aos.memUsed<p>Update: 5m</p>|
|Memory Used Percent|<p>-</p>|`Calculated`|aos.memUsedPer<p>Update: 5m</p>|
|Model|<p>-</p>|`SNMP agent`|aos.model<p>Update: 1d</p>|
|Reboot Reason|<p>-</p>|`SNMP agent`|aos.rebootReason<p>Update: 5m</p>|
|Software Version|<p>-</p>|`SNMP agent`|aos.softwareVer<p>Update: 1d</p>|
|Switch Role|<p>-</p>|`SNMP agent`|aos.switchRole<p>Update: 1d</p>|
|Switch Serial Number|<p>-</p>|`SNMP agent`|aos.switchSerial<p>Update: 1d</p>|
|Platform AP Usage Percentage|<p>-</p>|`Calculated`|aos.sysAPUsage<p>Update: 1m</p>|
|System Temperature|<p>-</p>|`SNMP agent`|aos.sysTemp<p>Update: 5m</p>|
|Total Number of APs|<p>-</p>|`SNMP agent`|aos.sysTotalAPs<p>Update: 1m</p>|
|Total Number of Associations|<p>-</p>|`SNMP agent`|aos.sysTotalAssociations<p>Update: 1m</p>|
|Total Number of Users|<p>-</p>|`SNMP agent`|aos.sysTotalUsers<p>Update: 1m</p>|
|System Uptime|<p>-</p>|`SNMP agent`|aos.sysUptime<p>Update: 1m</p>|
|Platform User Usage Percentage|<p>-</p>|`Calculated`|aos.sysUserUsage<p>Update: 1m</p>|
|Controller Traps|<p>-</p>|`SNMP trap`|snmptrap.fallback<p>Update: 0</p>|
|AP Active/Standby - {#APNAME}|<p>-</p>|`SNMP agent`|aos.apAcStand.[{#APNAME}]<p>Update: 2m</p><p>LLD</p>|
|AP Bootstraps - {#APNAME}|<p>-</p>|`SNMP agent`|aos.apBootstraps.[{#APNAME}]<p>Update: 2m</p><p>LLD</p>|
|Backup Switch IP Address - {#APNAME}|<p>-</p>|`SNMP agent`|aos.apBSWIP.[{#APNAME}]<p>Update: 1h</p><p>LLD</p>|
|AP Group - {#APNAME}|<p>-</p>|`SNMP agent`|aos.apGroup.[{#APNAME}]<p>Update: 6h</p><p>LLD</p>|
|IP Address - {#APNAME}|<p>-</p>|`SNMP agent`|aos.apIP.[{#APNAME}]<p>Update: 6h</p><p>LLD</p>|
|AP Reboots - {#APNAME}|<p>-</p>|`SNMP agent`|aos.apReboots.[{#APNAME}]<p>Update: 2m</p><p>LLD</p>|
|AP Serial - {#APNAME}|<p>-</p>|`SNMP agent`|aos.apSerial.[{#APNAME}]<p>Update: 24h</p><p>LLD</p>|
|AP Status - {#APNAME}|<p>-</p>|`SNMP agent`|aos.apStatus.[{#APNAME}]<p>Update: 2m</p><p>LLD</p>|
|Switch IP Address - {#APNAME}|<p>-</p>|`SNMP agent`|aos.apSWIP.[{#APNAME}]<p>Update: 1h</p><p>LLD</p>|
|AP Type - {#APNAME}|<p>-</p>|`SNMP agent`|aos.apType.[{#APNAME}]<p>Update: 24h</p><p>LLD</p>|
|AP Uptime - {#APNAME}|<p>-</p>|`SNMP agent`|aos.apUptime.[{#APNAME}]<p>Update: 2m</p><p>LLD</p>|
|Server Failed Auths $1|<p>-</p>|`SNMP agent`|aos.authFailedAuths.[{#SNMPVALUE},{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|Auth Server In Service $1|<p>-</p>|`SNMP agent`|aos.authInService.[{#SNMPVALUE},{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|Server Response Time $1|<p>-</p>|`SNMP agent`|aos.authResponseTime.[{#SNMPVALUE},{#SNMPINDEX}]<p>Update: 5m</p><p>LLD</p>|
|Auth Server State $1|<p>-</p>|`SNMP agent`|aos.authServerState.[{#SNMPVALUE},{#SNMPINDEX}]<p>Update: 10m</p><p>LLD</p>|
|Auth Server Type $1|<p>-</p>|`SNMP agent`|aos.authServerType.[{#SNMPVALUE},{#SNMPINDEX}]<p>Update: 1d</p><p>LLD</p>|
|Server Outstanding Requests $1|<p>-</p>|`SNMP agent`|aos.authSrvOutstandReq.[{#SNMPVALUE},{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|Server Timeouts $1|<p>-</p>|`SNMP agent`|aos.authSrvTimeouts.[{#SNMPVALUE},{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|Server Uptime $1|<p>-</p>|`SNMP agent`|aos.authSrvUptime.[{#SNMPVALUE},{#SNMPINDEX}]<p>Update: 5m</p><p>LLD</p>|
|Server Success Auths $1|<p>-</p>|`SNMP agent`|aos.authSuccessAuths.[{#SNMPVALUE},{#SNMPINDEX}]<p>Update: 5m</p><p>LLD</p>|
|CPU Utilization $1|<p>-</p>|`SNMP agent`|aos.cpuUtil.[{#SNMPVALUE}]<p>Update: 30s</p><p>LLD</p>|
|Fan $1 Status|<p>-</p>|`SNMP agent`|aos.fanStatus.[{#SNMPINDEX}]<p>Update: 5m</p><p>LLD</p>|
|License $2|<p>-</p>|`SNMP agent`|aos.lic.[{#SNMPINDEX},{#SNMPVALUE}]<p>Update: 1d</p><p>LLD</p>|
|License Expire $2|<p>-</p>|`SNMP agent`|aos.licExpire.[{#SNMPINDEX},{#SNMPVALUE}]<p>Update: 1d</p><p>LLD</p>|
|License Flags $2|<p>-</p>|`SNMP agent`|aos.licFlags.[{#SNMPINDEX},{#SNMPVALUE}]<p>Update: 1d</p><p>LLD</p>|
|License Installed Date $2|<p>-</p>|`SNMP agent`|aos.licsInstalled.[{#SNMPINDEX},{#SNMPVALUE}]<p>Update: 1d</p><p>LLD</p>|
|PSU $1 Status|<p>-</p>|`SNMP agent`|aos.psuStatus.[{#SNMPINDEX}]<p>Update: 5m</p><p>LLD</p>|
|Storage Size $1|<p>-</p>|`SNMP agent`|aos.storageSize.[{#SNMPVALUE}]<p>Update: 1h</p><p>LLD</p>|
|Storage Type $1|<p>-</p>|`SNMP agent`|aos.storageType.[{#SNMPVALUE}]<p>Update: 1h</p><p>LLD</p>|
|Storage Used $1|<p>-</p>|`SNMP agent`|aos.storageUsed.[{#SNMPVALUE}]<p>Update: 1h</p><p>LLD</p>|
|Storage Used Percentage $1|<p>-</p>|`Calculated`|aos.storageUsedPer.[{#SNMPVALUE}]<p>Update: 1h</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Inbound packets discarded|<p>MIB: IF-MIB The number of inbound packets which were chosen to be discarded even though no errors had been detected to prevent their being deliverable to a higher-layer protocol. One possible reason for discarding such a packet could be to free up buffer space. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in.discards[ifInDiscards.{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Inbound packets with errors|<p>MIB: IF-MIB For packet-oriented interfaces, the number of inbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of inbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in.errors[ifInErrors.{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Recebidos|<p>MIB: IF-MIB The total number of octets received on the interface,including framing characters. This object is a 64-bit version of ifInOctets. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in[ifHCInOctets.{#SNMPINDEX}]<p>Update: 180</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Outbound packets discarded|<p>MIB: IF-MIB The number of outbound packets which were chosen to be discarded even though no errors had been detected to prevent their being deliverable to a higher-layer protocol. One possible reason for discarding such a packet could be to free up buffer space. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out.discards[ifOutDiscards.{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Outbound packets with errors|<p>MIB: IF-MIB For packet-oriented interfaces, the number of outbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of outbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out.errors[ifOutErrors.{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Enviados|<p>MIB: IF-MIB The total number of octets transmitted out of the interface, including framing characters. This object is a 64-bit version of ifOutOctets.Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out[ifHCOutOctets.{#SNMPINDEX}]<p>Update: 180</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Speed|<p>MIB: IF-MIB An estimate of the interface's current bandwidth in units of 1,000,000 bits per second. If this object reports a value of `n' then the speed of the interface is somewhere in the range of `n-500,000' to`n+499,999'. For interfaces which do not vary in bandwidth or for those where no accurate estimation can be made, this object should contain the nominal bandwidth. For a sub-layer which has no concept of bandwidth, this object should be zero.</p>|`SNMP agent`|net.if.speed[ifHighSpeed.{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Operational status|<p>MIB: IF-MIB The current operational state of the interface. - The testing(3) state indicates that no operational packet scan be passed - If ifAdminStatus is down(2) then ifOperStatus should be down(2) - If ifAdminStatus is changed to up(1) then ifOperStatus should change to up(1) if the interface is ready to transmit and receive network traffic - It should change todormant(5) if the interface is waiting for external actions (such as a serial line waiting for an incoming connection) - It should remain in the down(2) state if and only if there is a fault that prevents it from going to the up(1) state - It should remain in the notPresent(6) state if the interface has missing(typically, hardware) components.</p>|`SNMP agent`|net.if.status[ifOperStatus.{#SNMPINDEX}]<p>Update: 180</p><p>LLD</p>|
|Interface {#IFNAME}({#IFALIAS}): Interface type|<p>MIB: IF-MIB The type of interface. Additional values for ifType are assigned by the Internet Assigned NumbersAuthority (IANA), through updating the syntax of the IANAifType textual convention.</p>|`SNMP agent`|net.if.type[ifType.{#SNMPINDEX}]<p>Update: 3600</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Interface {#IFNAME}({#IFALIAS}): Ethernet has changed to lower speed than it was before|<p>Last value: {ITEM.LASTVALUE1}. This Ethernet connection has transitioned down from its known maximum speed. This might be a sign of autonegotiation issues. Ack to close.</p>|<p>**Expression**: {Template ArubaOS:net.if.speed[ifHighSpeed.{#SNMPINDEX}].change()}<0 and {Template ArubaOS:net.if.speed[ifHighSpeed.{#SNMPINDEX}].last()}>0 and ( {Template ArubaOS:net.if.type[ifType.{#SNMPINDEX}].last()}=6 or {Template ArubaOS:net.if.type[ifType.{#SNMPINDEX}].last()}=7 or {Template ArubaOS:net.if.type[ifType.{#SNMPINDEX}].last()}=11 or {Template ArubaOS:net.if.type[ifType.{#SNMPINDEX}].last()}=62 or {Template ArubaOS:net.if.type[ifType.{#SNMPINDEX}].last()}=69 or {Template ArubaOS:net.if.type[ifType.{#SNMPINDEX}].last()}=117 ) and ({Template ArubaOS:net.if.status[ifOperStatus.{#SNMPINDEX}].last()}<>2) </p><p>**Recovery expression**: ({Template ArubaOS:net.if.speed[ifHighSpeed.{#SNMPINDEX}].change()}>0 and {Template ArubaOS:net.if.speed[ifHighSpeed.{#SNMPINDEX}].prev()}>0) or ({Template ArubaOS:net.if.status[ifOperStatus.{#SNMPINDEX}].last()}=2)</p>|information|
|Interface {#IFNAME}({#IFALIAS}): High bandwidth usage >{$IF_UTIL_MAX:"{#IFNAME}"}%|<p>Last value: {ITEM.LASTVALUE1}.</p>|<p>**Expression**: ({Template ArubaOS:net.if.in[ifHCInOctets.{#SNMPINDEX}].avg(15m)}>(90/100)*{Template ArubaOS:net.if.speed[ifHighSpeed.{#SNMPINDEX}].last()} or {Template ArubaOS:net.if.out[ifHCOutOctets.{#SNMPINDEX}].avg(15m)}>(90/100)*{Template ArubaOS:net.if.speed[ifHighSpeed.{#SNMPINDEX}].last()}) and {Template ArubaOS:net.if.speed[ifHighSpeed.{#SNMPINDEX}].last()}>0</p><p>**Recovery expression**: {Template ArubaOS:net.if.in[ifHCInOctets.{#SNMPINDEX}].avg(15m)}<((90-3)/100)*{Template ArubaOS:net.if.speed[ifHighSpeed.{#SNMPINDEX}].last()} and {Template ArubaOS:net.if.out[ifHCOutOctets.{#SNMPINDEX}].avg(15m)}<((90-3)/100)*{Template ArubaOS:net.if.speed[ifHighSpeed.{#SNMPINDEX}].last()}</p>|warning|
|Interface {#IFNAME}({#IFALIAS}): High error rate|<p>Last value: {ITEM.LASTVALUE1}. Recovers when below 80% of {$IF_ERRORS_WARN:"{#IFNAME}"} threshold</p>|<p>**Expression**: {Template ArubaOS:net.if.in.errors[ifInErrors.{#SNMPINDEX}].avg(5m)}>2 or {Template ArubaOS:net.if.out.errors[ifOutErrors.{#SNMPINDEX}].avg(5m)}>2</p><p>**Recovery expression**: {Template ArubaOS:net.if.in.errors[ifInErrors.{#SNMPINDEX}].avg(5m)}<2*0.8 and {Template ArubaOS:net.if.out.errors[ifOutErrors.{#SNMPINDEX}].avg(5m)}<2*0.8</p>|warning|
|Interface {#IFNAME}({#IFALIAS}): Link down|<p>Last value: {ITEM.LASTVALUE1}. Interface is down</p>|<p>**Expression**: 1=1 and ({Template ArubaOS:net.if.status[ifOperStatus.{#SNMPINDEX}].last()}=2 and {Template ArubaOS:net.if.status[ifOperStatus.{#SNMPINDEX}].diff()}=1)</p><p>**Recovery expression**: {Template ArubaOS:net.if.status[ifOperStatus.{#SNMPINDEX}].last()}<>2</p>|disaster|
|{#APNAME} Bootstrap number has changed|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.apBootstraps.[{#APNAME}].diff()}=1 and {Template ArubaOS:aos.apAcStand.[{#APNAME}].last(#3)}=1 and {Template ArubaOS:aos.apBootstraps.[{#APNAME}].last()}<>0 and {Template ArubaOS:aos.apStatus.[{#APNAME}].last(#3)}<>2</p><p>**Recovery expression**: </p>|warning|
|{#APNAME} is DOWN|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.apStatus.[{#APNAME}].change()}>.5 and {Template ArubaOS:aos.apAcStand.[{#APNAME}].last(#3)}=0 and {Template ArubaOS:aos.apIP.[{#APNAME}].nodata(120)}=1</p><p>**Recovery expression**: {Template ArubaOS:aos.apStatus.[{#APNAME}].last(0)}=1</p>|high|
|{#APNAME} Uptime has changed|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.apUptime.[{#APNAME}].last(0)}<200 and {Template ArubaOS:aos.apStatus.[{#APNAME}].nodata(240)}=0 and {Template ArubaOS:aos.apAcStand.[{#APNAME}].last(#3)}=1 and {Template ArubaOS:aos.apStatus.[{#APNAME}].last()}<>2</p><p>**Recovery expression**: </p>|warning|
|Auth Server {#SNMPVALUE} out of service on {HOST.NAME}|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.authInService.[{#SNMPVALUE},{#SNMPINDEX}].last()}=2</p><p>**Recovery expression**: </p>|disaster|
|High Failed Auths {#SNMPVALUE} on {HOST.NAME}|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.authFailedAuths.[{#SNMPVALUE},{#SNMPINDEX}].change()}>20</p><p>**Recovery expression**: </p>|high|
|High Outstanding Requests {#SNMPVALUE} on {HOST.NAME}|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.authSrvOutstandReq.[{#SNMPVALUE},{#SNMPINDEX}].change()}>20</p><p>**Recovery expression**: </p>|average|
|Server {#SNMPVALUE} Timeouts on {HOST.NAME}|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.authSrvTimeouts.[{#SNMPVALUE},{#SNMPINDEX}].change()}>10</p><p>**Recovery expression**: </p>|high|
|Server {#SNMPVALUE} Uptime Changed on {HOST.NAME}|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.authSrvUptime.[{#SNMPVALUE},{#SNMPINDEX}].last()}<600</p><p>**Recovery expression**: </p>|warning|
|High CPU on {HOST.NAME}, {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.cpuUtil.[{#SNMPVALUE}].avg(5m)}>80</p><p>**Recovery expression**: </p>|warning|
|Very High CPU on {HOST.NAME}, {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.cpuUtil.[{#SNMPVALUE}].avg(5m)}>90</p><p>**Recovery expression**: </p>|high|
|Failed Fan {#SNMPINDEX} on {HOST.NAME}|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.fanStatus.[{#SNMPINDEX}].last()}=2</p><p>**Recovery expression**: </p>|high|
|Failed/Missing PSU {#SNMPINDEX} on {HOST.NAME}|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.psuStatus.[{#SNMPINDEX}].last()}=2</p><p>**Recovery expression**: </p>|high|
|High Storage Usage on {HOST.NAME}, {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.storageUsedPer.[{#SNMPVALUE}].avg(5m)}>80.0</p><p>**Recovery expression**: </p>|warning|
|Very High Storage Usage on {HOST.NAME}, {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.storageUsedPer.[{#SNMPVALUE}].avg(5m)}>90.0</p><p>**Recovery expression**: </p>|high|
|{#APNAME} Bootstrap number has changed (LLD)|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.apBootstraps.[{#APNAME}].diff()}=1 and {Template ArubaOS:aos.apAcStand.[{#APNAME}].last(#3)}=1 and {Template ArubaOS:aos.apBootstraps.[{#APNAME}].last()}<>0 and {Template ArubaOS:aos.apStatus.[{#APNAME}].last(#3)}<>2</p><p>**Recovery expression**: </p>|warning|
|{#APNAME} is DOWN (LLD)|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.apStatus.[{#APNAME}].change()}>.5 and {Template ArubaOS:aos.apAcStand.[{#APNAME}].last(#3)}=0 and {Template ArubaOS:aos.apIP.[{#APNAME}].nodata(120)}=1</p><p>**Recovery expression**: {Template ArubaOS:aos.apStatus.[{#APNAME}].last(0)}=1</p>|high|
|{#APNAME} Uptime has changed (LLD)|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.apUptime.[{#APNAME}].last(0)}<200 and {Template ArubaOS:aos.apStatus.[{#APNAME}].nodata(240)}=0 and {Template ArubaOS:aos.apAcStand.[{#APNAME}].last(#3)}=1 and {Template ArubaOS:aos.apStatus.[{#APNAME}].last()}<>2</p><p>**Recovery expression**: </p>|warning|
|Auth Server {#SNMPVALUE} out of service on {HOST.NAME} (LLD)|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.authInService.[{#SNMPVALUE},{#SNMPINDEX}].last()}=2</p><p>**Recovery expression**: </p>|disaster|
|High Failed Auths {#SNMPVALUE} on {HOST.NAME} (LLD)|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.authFailedAuths.[{#SNMPVALUE},{#SNMPINDEX}].change()}>20</p><p>**Recovery expression**: </p>|high|
|High Outstanding Requests {#SNMPVALUE} on {HOST.NAME} (LLD)|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.authSrvOutstandReq.[{#SNMPVALUE},{#SNMPINDEX}].change()}>20</p><p>**Recovery expression**: </p>|average|
|Server {#SNMPVALUE} Timeouts on {HOST.NAME} (LLD)|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.authSrvTimeouts.[{#SNMPVALUE},{#SNMPINDEX}].change()}>10</p><p>**Recovery expression**: </p>|high|
|Server {#SNMPVALUE} Uptime Changed on {HOST.NAME} (LLD)|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.authSrvUptime.[{#SNMPVALUE},{#SNMPINDEX}].last()}<600</p><p>**Recovery expression**: </p>|warning|
|High CPU on {HOST.NAME}, {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.cpuUtil.[{#SNMPVALUE}].avg(5m)}>80</p><p>**Recovery expression**: </p>|warning|
|Very High CPU on {HOST.NAME}, {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.cpuUtil.[{#SNMPVALUE}].avg(5m)}>90</p><p>**Recovery expression**: </p>|high|
|Failed Fan {#SNMPINDEX} on {HOST.NAME} (LLD)|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.fanStatus.[{#SNMPINDEX}].last()}=2</p><p>**Recovery expression**: </p>|high|
|Failed/Missing PSU {#SNMPINDEX} on {HOST.NAME} (LLD)|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.psuStatus.[{#SNMPINDEX}].last()}=2</p><p>**Recovery expression**: </p>|high|
|High Storage Usage on {HOST.NAME}, {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.storageUsedPer.[{#SNMPVALUE}].avg(5m)}>80.0</p><p>**Recovery expression**: </p>|warning|
|Very High Storage Usage on {HOST.NAME}, {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template ArubaOS:aos.storageUsedPer.[{#SNMPVALUE}].avg(5m)}>90.0</p><p>**Recovery expression**: </p>|high|
|Interface {#IFNAME}({#IFALIAS}): Ethernet has changed to lower speed than it was before (LLD)|<p>Last value: {ITEM.LASTVALUE1}. This Ethernet connection has transitioned down from its known maximum speed. This might be a sign of autonegotiation issues. Ack to close.</p>|<p>**Expression**: {Template ArubaOS:net.if.speed[ifHighSpeed.{#SNMPINDEX}].change()}<0 and {Template ArubaOS:net.if.speed[ifHighSpeed.{#SNMPINDEX}].last()}>0 and ( {Template ArubaOS:net.if.type[ifType.{#SNMPINDEX}].last()}=6 or {Template ArubaOS:net.if.type[ifType.{#SNMPINDEX}].last()}=7 or {Template ArubaOS:net.if.type[ifType.{#SNMPINDEX}].last()}=11 or {Template ArubaOS:net.if.type[ifType.{#SNMPINDEX}].last()}=62 or {Template ArubaOS:net.if.type[ifType.{#SNMPINDEX}].last()}=69 or {Template ArubaOS:net.if.type[ifType.{#SNMPINDEX}].last()}=117 ) and ({Template ArubaOS:net.if.status[ifOperStatus.{#SNMPINDEX}].last()}<>2) </p><p>**Recovery expression**: ({Template ArubaOS:net.if.speed[ifHighSpeed.{#SNMPINDEX}].change()}>0 and {Template ArubaOS:net.if.speed[ifHighSpeed.{#SNMPINDEX}].prev()}>0) or ({Template ArubaOS:net.if.status[ifOperStatus.{#SNMPINDEX}].last()}=2)</p>|information|
|Interface {#IFNAME}({#IFALIAS}): High bandwidth usage >{$IF_UTIL_MAX:"{#IFNAME}"}% (LLD)|<p>Last value: {ITEM.LASTVALUE1}.</p>|<p>**Expression**: ({Template ArubaOS:net.if.in[ifHCInOctets.{#SNMPINDEX}].avg(15m)}>(90/100)*{Template ArubaOS:net.if.speed[ifHighSpeed.{#SNMPINDEX}].last()} or {Template ArubaOS:net.if.out[ifHCOutOctets.{#SNMPINDEX}].avg(15m)}>(90/100)*{Template ArubaOS:net.if.speed[ifHighSpeed.{#SNMPINDEX}].last()}) and {Template ArubaOS:net.if.speed[ifHighSpeed.{#SNMPINDEX}].last()}>0</p><p>**Recovery expression**: {Template ArubaOS:net.if.in[ifHCInOctets.{#SNMPINDEX}].avg(15m)}<((90-3)/100)*{Template ArubaOS:net.if.speed[ifHighSpeed.{#SNMPINDEX}].last()} and {Template ArubaOS:net.if.out[ifHCOutOctets.{#SNMPINDEX}].avg(15m)}<((90-3)/100)*{Template ArubaOS:net.if.speed[ifHighSpeed.{#SNMPINDEX}].last()}</p>|warning|
|Interface {#IFNAME}({#IFALIAS}): High error rate (LLD)|<p>Last value: {ITEM.LASTVALUE1}. Recovers when below 80% of {$IF_ERRORS_WARN:"{#IFNAME}"} threshold</p>|<p>**Expression**: {Template ArubaOS:net.if.in.errors[ifInErrors.{#SNMPINDEX}].avg(5m)}>2 or {Template ArubaOS:net.if.out.errors[ifOutErrors.{#SNMPINDEX}].avg(5m)}>2</p><p>**Recovery expression**: {Template ArubaOS:net.if.in.errors[ifInErrors.{#SNMPINDEX}].avg(5m)}<2*0.8 and {Template ArubaOS:net.if.out.errors[ifOutErrors.{#SNMPINDEX}].avg(5m)}<2*0.8</p>|warning|
|Interface {#IFNAME}({#IFALIAS}): Link down (LLD)|<p>Last value: {ITEM.LASTVALUE1}. Interface is down</p>|<p>**Expression**: 1=1 and ({Template ArubaOS:net.if.status[ifOperStatus.{#SNMPINDEX}].last()}=2 and {Template ArubaOS:net.if.status[ifOperStatus.{#SNMPINDEX}].diff()}=1)</p><p>**Recovery expression**: {Template ArubaOS:net.if.status[ifOperStatus.{#SNMPINDEX}].last()}<>2</p>|disaster|
