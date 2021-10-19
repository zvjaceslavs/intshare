# Template_Sophos XG FW 18 SNMPv2

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$CPU_UTIL_MAX}|<p>-</p>|`95`|Text macro|
|{$DISK_UTIL_MAX}|<p>-</p>|`90`|Text macro|
|{$MEMORY_UTIL_MAX}|<p>-</p>|`90`|Text macro|
|{$SNMP_COMMUNITY}|<p>-</p>|`public`|Text macro|
|{$SWAP_UTIL_MAX}|<p>-</p>|`90`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Network interfaces discovery|<p>Discovering interfaces from IF-MIB.</p>|`SNMP agent`|net.if.discovery<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Service apache status|<p>-</p>|`SNMP agent`|apacheService<p>Update: 5m</p>|
|Device serial number|<p>-</p>|`SNMP agent`|applianceKey<p>Update: 1h</p>|
|Device name|<p>-</p>|`SNMP agent`|applianceName<p>Update: 1h</p>|
|Device type|<p>-</p>|`SNMP agent`|applianceType<p>Update: 1h</p>|
|Service AS status|<p>-</p>|`SNMP agent`|asService<p>Update: 5m</p>|
|Service AV status|<p>-</p>|`SNMP agent`|avService<p>Update: 5m</p>|
|Base license expire date|<p>Base Firewall protection license expiry date.</p>|`SNMP agent`|baseFWLicExpiryDate<p>Update: 1h</p>|
|Base license reg status|<p>Base Firewall protection license status.</p>|`SNMP agent`|baseFWLicRegStatus<p>Update: 1h</p>|
|HA current status|<p>Textual Convention: HaStatus Values: notapplicable( 0 ), auxiliary( 1 ), standAlone( 2 ), primary( 3 ), faulty( 4 ), ready ( 5 )</p>|`SNMP agent`|currentHAStatus<p>Update: 5m</p>|
|Service database status|<p>-</p>|`SNMP agent`|databaseService<p>Update: 5m</p>|
|Service Dgd status|<p>-</p>|`SNMP agent`|dgdService<p>Update: 5m</p>|
|Disk capacity|<p>-</p>|`SNMP agent`|diskCapacity<p>Update: 1h</p>|
|Disk utilization|<p>-</p>|`SNMP agent`|diskPercentUsage<p>Update: 5m</p>|
|Service dns status|<p>-</p>|`SNMP agent`|dnsService<p>Update: 5m</p>|
|Service drouting status|<p>-</p>|`SNMP agent`|droutingService<p>Update: 5m</p>|
|Firmware version|<p>Version of Intrusion Detection and Prevention (IDP)</p>|`SNMP agent`|firewallVersion<p>Update: 1h</p>|
|Service FTP status|<p>-</p>|`SNMP agent`|ftpService<p>Update: 5m</p>|
|Service garner status|<p>-</p>|`SNMP agent`|garnerService<p>Update: 5m</p>|
|HA mode|<p>Textual Convention: HaStatusType Values: disabled(0), enabled(1)</p>|`SNMP agent`|haMode<p>Update: 5m</p>|
|Service HA status|<p>-</p>|`SNMP agent`|haService<p>Update: 5m</p>|
|HTTP Hits|<p>-</p>|`SNMP agent`|httpHits<p>Update: 3m</p>|
|Service HTTP status|<p>-</p>|`SNMP agent`|httpService<p>Update: 5m</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 60</p>|
|Service IMAP4 status|<p>-</p>|`SNMP agent`|imap4Service<p>Update: 5m</p>|
|IMAP Hits|<p>-</p>|`SNMP agent`|imapHits<p>Update: 3m</p>|
|Service IP-Sec VPN status|<p>-</p>|`SNMP agent`|ipSecVpnService<p>Update: 5m</p>|
|Service IPS status|<p>-</p>|`SNMP agent`|ipsService<p>Update: 5m</p>|
|IDS version|<p>Version of Intrusion Detection and Prevention (IDP)</p>|`SNMP agent`|ipsVersion<p>Update: 1h</p>|
|Live user count|<p>-</p>|`SNMP agent`|liveUserCount<p>Update: 3m</p>|
|Mail Protection license expire date|<p>EMail Protection Iicense Expiry Date.</p>|`SNMP agent`|mailProtectionLicExpiryDate<p>Update: 1h</p>|
|Mail Protection license reg status|<p>EMail Protection license status.</p>|`SNMP agent`|mailProtectionLicRegStatus<p>Update: 1h</p>|
|Memory capacity|<p>-</p>|`SNMP agent`|memoryCapacity<p>Update: 1h</p>|
|Memory utilization|<p>-</p>|`SNMP agent`|memoryPercentUsage<p>Update: 1m</p>|
|Network Protection license expire date|<p>Network Protection Iicense Expiry Date.</p>|`SNMP agent`|netProtectionLicExpiryDate<p>Update: 1h</p>|
|Network Protection reg license status|<p>Network Protection registration license status</p>|`SNMP agent`|netProtectionLicRegStatus<p>Update: 1h</p>|
|Service network status|<p>-</p>|`SNMP agent`|networkService<p>Update: 5m</p>|
|Service NTP status|<p>-</p>|`SNMP agent`|ntpService<p>Update: 5m</p>|
|POP3 Hits|<p>-</p>|`SNMP agent`|pop3Hits<p>Update: 3m</p>|
|Service POP3 status|<p>-</p>|`SNMP agent`|pop3Service<p>Update: 5m</p>|
|Sandstrom license expire date|<p>Sandstrom Protection Iicense Expiry Date.</p>|`SNMP agent`|sandstromLicExpiryDate<p>Update: 1h</p>|
|Sandstrom license reg status|<p>Sandstrom Protection Iicense status.</p>|`SNMP agent`|sandstromLicRegStatus<p>Update: 1h</p>|
|SMTP Hits|<p>-</p>|`SNMP agent`|smtpHits<p>Update: 3m</p>|
|Service SMTP status|<p>-</p>|`SNMP agent`|smtpService<p>Update: 5m</p>|
|SNMP traps (fallback)|<p>Item is used to collect all SNMP traps unmatched by other snmptrap items</p>|`SNMP trap`|snmptrap.fallback<p>Update: 1m</p>|
|Service sshd status|<p>-</p>|`SNMP agent`|sshdService<p>Update: 5m</p>|
|Service SSL-VPN status|<p>-</p>|`SNMP agent`|sslvpnService<p>Update: 5m</p>|
|Swap capacity|<p>-</p>|`SNMP agent`|swapCapacity<p>Update: 1h</p>|
|Swap utilization|<p>-</p>|`SNMP agent`|swapPercentUsage<p>Update: 5m</p>|
|System contact details|<p>MIB: SNMPv2-MIB The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|system.contact[sysContact.0]<p>Update: 1h</p>|
|CPU utilization|<p>MIB: HOST-RESOURCES-MIB The average, over the last minute, of the percentage of time that processors was not idle. Implementations may approximate this one minute smoothing period if necessary.</p>|`SNMP agent`|system.cpu.util<p>Update: 1m</p>|
|System description|<p>MIB: SNMPv2-MIB A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|system.descr[sysDescr.0]<p>Update: 1h</p>|
|System location|<p>MIB: SNMPv2-MIB The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|system.location[sysLocation.0]<p>Update: 1h</p>|
|System name|<p>MIB: SNMPv2-MIB An administratively-assigned name for this managed node.By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|system.name<p>Update: 1h</p>|
|System object ID|<p>MIB: SNMPv2-MIB The vendor's authoritative identification of the network management subsystem contained in the entity. This value is allocated within the SMI enterprises subtree (1.3.6.1.4.1) and provides an easy and unambiguous means for determining`what kind of box' is being managed. For example, if vendor`Flintstones, Inc.' was assigned the subtree1.3.6.1.4.1.4242, it could assign the identifier 1.3.6.1.4.1.4242.1.1 to its `Fred Router'.</p>|`SNMP agent`|system.objectid[sysObjectID.0]<p>Update: 15m</p>|
|Uptime|<p>MIB: SNMPv2-MIB The time (in hundredths of a second) since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|system.uptime[sysUpTime.0]<p>Update: 30s</p>|
|Service tomcat status|<p>-</p>|`SNMP agent`|tomcatService<p>Update: 5m</p>|
|Webcat version|<p>Version of Webcat</p>|`SNMP agent`|webcatVersion<p>Update: 1h</p>|
|Web Protection license expire date|<p>Web Protection license expiry date.</p>|`SNMP agent`|webProtectionLicExpiryDate<p>Update: 1h</p>|
|Web Protection license reg status|<p>Web Protection registration license status.</p>|`SNMP agent`|webProtectionLicRegStatus<p>Update: 1h</p>|
|WebServer Protection license expire date|<p>WebServer Protection Iicense Expiry Date.</p>|`SNMP agent`|webServerProtectionLicExpiryDate<p>Update: 1h</p>|
|WebServer Protection license reg status|<p>WebServer Protection license status.</p>|`SNMP agent`|webServerProtectionLicRegStatus<p>Update: 1h</p>|
|SNMP agent availability|<p>-</p>|`Zabbix internal`|zabbix[host,snmp,available]<p>Update: 1m</p>|
|Interface {#IFNAME}({#IFALIAS}): Inbound packets discarded|<p>MIB: IF-MIB The number of inbound packets which were chosen to be discarded even though no errors had been detected to prevent their being deliverable to a higher-layer protocol. One possible reason for discarding such a packet could be to free up buffer space. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in.discards[ifInDiscards.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFNAME}({#IFALIAS}): Inbound packets with errors|<p>MIB: IF-MIB For packet-oriented interfaces, the number of inbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of inbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in.errors[ifInErrors.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFNAME}({#IFALIAS}): Bits received|<p>MIB: IF-MIB The total number of octets received on the interface, including framing characters. This object is a 64-bit version of ifInOctets. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in[ifHCInOctets.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFNAME}({#IFALIAS}): Outbound packets discarded|<p>MIB: IF-MIB The number of outbound packets which were chosen to be discarded even though no errors had been detected to prevent their being deliverable to a higher-layer protocol. One possible reason for discarding such a packet could be to free up buffer space. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out.discards[ifOutDiscards.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFNAME}({#IFALIAS}): Outbound packets with errors|<p>MIB: IF-MIB For packet-oriented interfaces, the number of outbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of outbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out.errors[ifOutErrors.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFNAME}({#IFALIAS}): Bits sent|<p>MIB: IF-MIB The total number of octets transmitted out of the interface, including framing characters. This object is a 64-bit version of ifOutOctets.Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out[ifHCOutOctets.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFNAME}({#IFALIAS}): Speed|<p>MIB: IF-MIB An estimate of the interface's current bandwidth in units of 1,000,000 bits per second. If this object reports a value of `n' then the speed of the interface is somewhere in the range of `n-500,000' to`n+499,999'. For interfaces which do not vary in bandwidth or for those where no accurate estimation can be made, this object should contain the nominal bandwidth. For a sub-layer which has no concept of bandwidth, this object should be zero.</p>|`SNMP agent`|net.if.speed[ifHighSpeed.{#SNMPINDEX}]<p>Update: 5m</p>|
|Interface {#IFNAME}({#IFALIAS}): Operational status|<p>MIB: IF-MIB The current operational state of the interface. - The testing(3) state indicates that no operational packet scan be passed - If ifAdminStatus is down(2) then ifOperStatus should be down(2) - If ifAdminStatus is changed to up(1) then ifOperStatus should change to up(1) if the interface is ready to transmit and receive network traffic - It should change todormant(5) if the interface is waiting for external actions (such as a serial line waiting for an incoming connection) - It should remain in the down(2) state if and only if there is a fault that prevents it from going to the up(1) state - It should remain in the notPresent(6) state if the interface has missing(typically, hardware) components.</p>|`SNMP agent`|net.if.status[ifOperStatus.{#SNMPINDEX}]<p>Update: 1m</p>|
|Interface {#IFNAME}({#IFALIAS}): Interface type|<p>MIB: IF-MIB The type of interface. Additional values for ifType are assigned by the Internet Assigned NumbersAuthority (IANA), through updating the syntax of the IANAifType textual convention.</p>|`SNMP agent`|net.if.type[ifType.{#SNMPINDEX}]<p>Update: 1h</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Unavailable by ICMP ping|<p>Last value: {ITEM.LASTVALUE1}. Last three attempts returned timeout. Please check device connectivity.</p>|high|
|High ICMP ping loss|<p>-</p>|warning|
|High ICMP ping response time|<p>-</p>|warning|
|{HOST.NAME} has been restarted (uptime < 10m)|<p>Uptime is less than 10 minutes</p>|warning|
|No SNMP data collection|<p>SNMP is not available for polling. Please check device connectivity and SNMP settings.</p>|warning|
|System name has changed (new name: {ITEM.VALUE})|<p>System name has changed. Ack to close.</p>|information|
|High CPU utilization (over {$CPU.UTIL.CRIT}% for 5m)|<p>CPU utilization is too high. The system might be slow to respond.</p>|warning|
|Service apache status is not running|<p>-</p>|average|
|Service as status is not running|<p>-</p>|average|
|Service av status is not running|<p>-</p>|average|
|Service database status is not running|<p>-</p>|average|
|Service dgd status is not running|<p>-</p>|average|
|Disk utilization high|<p>-</p>|high|
|Service dns status is not running|<p>-</p>|average|
|Service drouting status is not running|<p>-</p>|average|
|Firmware version changed|<p>Ack to manual close</p>|information|
|Service ftp status is not running|<p>-</p>|average|
|Service garner status is not running|<p>-</p>|average|
|Service ha status is not running|<p>-</p>|average|
|Service http status is not running|<p>-</p>|average|
|Service imap4 status is not running|<p>-</p>|average|
|Service IP-Sec VPN status is not running|<p>-</p>|average|
|Service IPS status is not running|<p>-</p>|average|
|Mail Protection license reg status|<p>Mail Protection license is expired.</p>|average|
|Memory utilization high|<p>-</p>|high|
|Network Protection reg license status|<p>Network Protection reg status is expired.</p>|average|
|Service network status is not running|<p>-</p>|average|
|Service ntp status is not running|<p>-</p>|average|
|Service pop3 status is not running|<p>-</p>|average|
|Sandstrom license reg status|<p>Sandstrom Protection licensereg status is expired.</p>|average|
|Service smtp status is not running|<p>-</p>|average|
|Service sshd status is not running|<p>-</p>|average|
|Service sslvpn status is not running|<p>-</p>|average|
|Swap utilization high|<p>-</p>|high|
|Service tomcat status is not running|<p>-</p>|average|
|Web Protection license reg status|<p>Web Protection license reg staus is expired.</p>|average|
|WebServer Protection license reg status|<p>WebServer Protection license reg status is expired.</p>|average|
|Interface {#IFNAME}({#IFALIAS}): Ethernet has changed to lower speed than it was before|<p>This Ethernet connection has transitioned down from its known maximum speed. This might be a sign of autonegotiation issues. Ack to close.</p>|information|
|Interface {#IFNAME}({#IFALIAS}): Link down|<p>This trigger expression works as follows: 1. Can be triggered if operations status is down. 2. {$IFCONTROL:"{#IFNAME}"}=1 - user can redefine Context macro to value - 0. That marks this interface as not important. No new trigger will be fired if this interface is down. 3. {TEMPLATE_NAME:METRIC.diff()}=1) - trigger fires only if operational status was up(1) sometime before. (So, do not fire 'ethernal off' interfaces.) WARNING: if closed manually - won't fire again on next poll, because of .diff.</p>|average|
|Interface {#IFNAME}({#IFALIAS}): High bandwidth usage (> {$IF.UTIL.MAX:"{#IFNAME}"}% )|<p>The network interface utilization is close to its estimated maximum bandwidth.</p>|warning|
|Interface {#IFNAME}({#IFALIAS}): High error rate (> {$IF.ERRORS.WARN:"{#IFNAME}"} for 5m)|<p>Recovers when below 80% of {$IF.ERRORS.WARN:"{#IFNAME}"} threshold</p>|warning|
