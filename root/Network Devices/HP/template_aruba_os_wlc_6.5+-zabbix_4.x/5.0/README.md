# Template ArubaOS

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

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
|Controller Traps|<p>-</p>|`SNMP trap`|snmptrap.fallback<p>Update: 0</p>|
|Firmware Version|<p>-</p>|`SNMP agent`|SysmFirmwareVersion<p>Update: 3600</p>|
|AP Active/Standby - {#APNAME}|<p>-</p>|`SNMP agent`|aos.apAcStand.[{#APNAME}]<p>Update: 2m</p>|
|AP Bootstraps - {#APNAME}|<p>-</p>|`SNMP agent`|aos.apBootstraps.[{#APNAME}]<p>Update: 2m</p>|
|Backup Switch IP Address - {#APNAME}|<p>-</p>|`SNMP agent`|aos.apBSWIP.[{#APNAME}]<p>Update: 1h</p>|
|AP Group - {#APNAME}|<p>-</p>|`SNMP agent`|aos.apGroup.[{#APNAME}]<p>Update: 6h</p>|
|IP Address - {#APNAME}|<p>-</p>|`SNMP agent`|aos.apIP.[{#APNAME}]<p>Update: 6h</p>|
|AP Reboots - {#APNAME}|<p>-</p>|`SNMP agent`|aos.apReboots.[{#APNAME}]<p>Update: 2m</p>|
|AP Serial - {#APNAME}|<p>-</p>|`SNMP agent`|aos.apSerial.[{#APNAME}]<p>Update: 24h</p>|
|AP Status - {#APNAME}|<p>-</p>|`SNMP agent`|aos.apStatus.[{#APNAME}]<p>Update: 2m</p>|
|Switch IP Address - {#APNAME}|<p>-</p>|`SNMP agent`|aos.apSWIP.[{#APNAME}]<p>Update: 1h</p>|
|AP Type - {#APNAME}|<p>-</p>|`SNMP agent`|aos.apType.[{#APNAME}]<p>Update: 24h</p>|
|AP Uptime - {#APNAME}|<p>-</p>|`SNMP agent`|aos.apUptime.[{#APNAME}]<p>Update: 2m</p>|
|Server Failed Auths $1|<p>-</p>|`SNMP agent`|aos.authFailedAuths.[{#SNMPVALUE},{#SNMPINDEX}]<p>Update: 1m</p>|
|Auth Server In Service $1|<p>-</p>|`SNMP agent`|aos.authInService.[{#SNMPVALUE},{#SNMPINDEX}]<p>Update: 1m</p>|
|Server Response Time $1|<p>-</p>|`SNMP agent`|aos.authResponseTime.[{#SNMPVALUE},{#SNMPINDEX}]<p>Update: 5m</p>|
|Auth Server State $1|<p>-</p>|`SNMP agent`|aos.authServerState.[{#SNMPVALUE},{#SNMPINDEX}]<p>Update: 10m</p>|
|Auth Server Type $1|<p>-</p>|`SNMP agent`|aos.authServerType.[{#SNMPVALUE},{#SNMPINDEX}]<p>Update: 1d</p>|
|Server Outstanding Requests $1|<p>-</p>|`SNMP agent`|aos.authSrvOutstandReq.[{#SNMPVALUE},{#SNMPINDEX}]<p>Update: 1m</p>|
|Server Timeouts $1|<p>-</p>|`SNMP agent`|aos.authSrvTimeouts.[{#SNMPVALUE},{#SNMPINDEX}]<p>Update: 1m</p>|
|Server Uptime $1|<p>-</p>|`SNMP agent`|aos.authSrvUptime.[{#SNMPVALUE},{#SNMPINDEX}]<p>Update: 5m</p>|
|Server Success Auths $1|<p>-</p>|`SNMP agent`|aos.authSuccessAuths.[{#SNMPVALUE},{#SNMPINDEX}]<p>Update: 5m</p>|
|CPU Utilization $1|<p>-</p>|`SNMP agent`|aos.cpuUtil.[{#SNMPVALUE}]<p>Update: 30s</p>|
|Fan $1 Status|<p>-</p>|`SNMP agent`|aos.fanStatus.[{#SNMPINDEX}]<p>Update: 5m</p>|
|License $2|<p>-</p>|`SNMP agent`|aos.lic.[{#SNMPINDEX},{#SNMPVALUE}]<p>Update: 1d</p>|
|License Expire $2|<p>-</p>|`SNMP agent`|aos.licExpire.[{#SNMPINDEX},{#SNMPVALUE}]<p>Update: 1d</p>|
|License Flags $2|<p>-</p>|`SNMP agent`|aos.licFlags.[{#SNMPINDEX},{#SNMPVALUE}]<p>Update: 1d</p>|
|License Installed Date $2|<p>-</p>|`SNMP agent`|aos.licsInstalled.[{#SNMPINDEX},{#SNMPVALUE}]<p>Update: 1d</p>|
|PSU $1 Status|<p>-</p>|`SNMP agent`|aos.psuStatus.[{#SNMPINDEX}]<p>Update: 5m</p>|
|Storage Size $1|<p>-</p>|`SNMP agent`|aos.storageSize.[{#SNMPVALUE}]<p>Update: 1h</p>|
|Storage Type $1|<p>-</p>|`SNMP agent`|aos.storageType.[{#SNMPVALUE}]<p>Update: 1h</p>|
|Storage Used $1|<p>-</p>|`SNMP agent`|aos.storageUsed.[{#SNMPVALUE}]<p>Update: 1h</p>|
|Storage Used Percentage $1|<p>-</p>|`Calculated`|aos.storageUsedPer.[{#SNMPVALUE}]<p>Update: 1h</p>|
|Interface {#IFNAME}({#IFALIAS}): Inbound packets discarded|<p>MIB: IF-MIB The number of inbound packets which were chosen to be discarded even though no errors had been detected to prevent their being deliverable to a higher-layer protocol. One possible reason for discarding such a packet could be to free up buffer space. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in.discards[ifInDiscards.{#SNMPINDEX}]<p>Update: 300</p>|
|Interface {#IFNAME}({#IFALIAS}): Inbound packets with errors|<p>MIB: IF-MIB For packet-oriented interfaces, the number of inbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of inbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in.errors[ifInErrors.{#SNMPINDEX}]<p>Update: 300</p>|
|Interface {#IFNAME}({#IFALIAS}): Recebidos|<p>MIB: IF-MIB The total number of octets received on the interface,including framing characters. This object is a 64-bit version of ifInOctets. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in[ifHCInOctets.{#SNMPINDEX}]<p>Update: 180</p>|
|Interface {#IFNAME}({#IFALIAS}): Outbound packets discarded|<p>MIB: IF-MIB The number of outbound packets which were chosen to be discarded even though no errors had been detected to prevent their being deliverable to a higher-layer protocol. One possible reason for discarding such a packet could be to free up buffer space. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out.discards[ifOutDiscards.{#SNMPINDEX}]<p>Update: 300</p>|
|Interface {#IFNAME}({#IFALIAS}): Outbound packets with errors|<p>MIB: IF-MIB For packet-oriented interfaces, the number of outbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of outbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out.errors[ifOutErrors.{#SNMPINDEX}]<p>Update: 300</p>|
|Interface {#IFNAME}({#IFALIAS}): Enviados|<p>MIB: IF-MIB The total number of octets transmitted out of the interface, including framing characters. This object is a 64-bit version of ifOutOctets.Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out[ifHCOutOctets.{#SNMPINDEX}]<p>Update: 180</p>|
|Interface {#IFNAME}({#IFALIAS}): Speed|<p>MIB: IF-MIB An estimate of the interface's current bandwidth in units of 1,000,000 bits per second. If this object reports a value of `n' then the speed of the interface is somewhere in the range of `n-500,000' to`n+499,999'. For interfaces which do not vary in bandwidth or for those where no accurate estimation can be made, this object should contain the nominal bandwidth. For a sub-layer which has no concept of bandwidth, this object should be zero.</p>|`SNMP agent`|net.if.speed[ifHighSpeed.{#SNMPINDEX}]<p>Update: 300</p>|
|Interface {#IFNAME}({#IFALIAS}): Operational status|<p>MIB: IF-MIB The current operational state of the interface. - The testing(3) state indicates that no operational packet scan be passed - If ifAdminStatus is down(2) then ifOperStatus should be down(2) - If ifAdminStatus is changed to up(1) then ifOperStatus should change to up(1) if the interface is ready to transmit and receive network traffic - It should change todormant(5) if the interface is waiting for external actions (such as a serial line waiting for an incoming connection) - It should remain in the down(2) state if and only if there is a fault that prevents it from going to the up(1) state - It should remain in the notPresent(6) state if the interface has missing(typically, hardware) components.</p>|`SNMP agent`|net.if.status[ifOperStatus.{#SNMPINDEX}]<p>Update: 180</p>|
|Interface {#IFNAME}({#IFALIAS}): Interface type|<p>MIB: IF-MIB The type of interface. Additional values for ifType are assigned by the Internet Assigned NumbersAuthority (IANA), through updating the syntax of the IANAifType textual convention.</p>|`SNMP agent`|net.if.type[ifType.{#SNMPINDEX}]<p>Update: 3600</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Unavailable by ICMP ping|<p>Last value: {ITEM.LASTVALUE1}. Last three attempts returned timeout. Please check device connectivity.</p>|high|
|High ICMP ping loss|<p>-</p>|warning|
|High ICMP ping response time|<p>-</p>|warning|
|Fortinet {HOST.NAME} Rebooted|<p>The Fortinet has been rebooted during last 10 checks</p>|average|
|Fortinet {HOSTNAME} - Usage of CPU over 80%|<p>CPU activity on Fortinet is more than 95% during the last five checks</p>|information|
|Config has changed on {HOST.NAME}|<p>-</p>|information|
|High Memory Usage on {HOST.NAME}|<p>-</p>|warning|
|Platform AP Capacity Usage is High on {HOST.NAME}|<p>-</p>|warning|
|Platform AP Capacity Usage is Very High on {HOST.NAME}|<p>-</p>|high|
|Platform User Capacity Usage is High on {HOST.NAME}|<p>-</p>|warning|
|Platform User Capacity Usage is Very High on {HOST.NAME}|<p>-</p>|high|
|Temperature Alert CRITICAL on {HOST.NAME}|<p>-</p>|disaster|
|Temperature Alert MAJOR on {HOST.NAME}|<p>-</p>|high|
|Temperature Alert MINOR on {HOST.NAME}|<p>-</p>|warning|
|{HOST.NAME} has been restarted|<p>-</p>|average|
|{#APNAME} Bootstrap number has changed|<p>-</p>|warning|
|{#APNAME} is DOWN|<p>-</p>|high|
|{#APNAME} Uptime has changed|<p>-</p>|warning|
|Auth Server {#SNMPVALUE} out of service on {HOST.NAME}|<p>-</p>|disaster|
|High Failed Auths {#SNMPVALUE} on {HOST.NAME}|<p>-</p>|high|
|High Outstanding Requests {#SNMPVALUE} on {HOST.NAME}|<p>-</p>|average|
|Server {#SNMPVALUE} Timeouts on {HOST.NAME}|<p>-</p>|high|
|Server {#SNMPVALUE} Uptime Changed on {HOST.NAME}|<p>-</p>|warning|
|High CPU on {HOST.NAME}, {#SNMPVALUE}|<p>-</p>|warning|
|Very High CPU on {HOST.NAME}, {#SNMPVALUE}|<p>-</p>|high|
|Failed Fan {#SNMPINDEX} on {HOST.NAME}|<p>-</p>|high|
|Failed/Missing PSU {#SNMPINDEX} on {HOST.NAME}|<p>-</p>|high|
|High Storage Usage on {HOST.NAME}, {#SNMPVALUE}|<p>-</p>|warning|
|Very High Storage Usage on {HOST.NAME}, {#SNMPVALUE}|<p>-</p>|high|
|Interface {#IFNAME}({#IFALIAS}): Ethernet has changed to lower speed than it was before|<p>Last value: {ITEM.LASTVALUE1}. This Ethernet connection has transitioned down from its known maximum speed. This might be a sign of autonegotiation issues. Ack to close.</p>|information|
|Interface {#IFNAME}({#IFALIAS}): High bandwidth usage >{$IF_UTIL_MAX:"{#IFNAME}"}%|<p>Last value: {ITEM.LASTVALUE1}.</p>|warning|
|Interface {#IFNAME}({#IFALIAS}): High error rate|<p>Last value: {ITEM.LASTVALUE1}. Recovers when below 80% of {$IF_ERRORS_WARN:"{#IFNAME}"} threshold</p>|warning|
|Interface {#IFNAME}({#IFALIAS}): Link down|<p>Last value: {ITEM.LASTVALUE1}. Interface is down</p>|disaster|
