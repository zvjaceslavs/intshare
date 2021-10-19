# Template Net BreezeNet SNMPv1

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMMUNITY}|<p>-</p>|`private`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Radio :Inbound packets with errors (CRC)|<p>-</p>|`SNMP agent`|ifInErrors.1<p>Update: 60</p>|
|FastEthernet  : Speed|<p>-</p>|`SNMP agent`|net.if.speed[ifHighSpeed.2]<p>Update: 300</p>|
|Received SNR|<p>-</p>|`SNMP agent`|received.snr<p>Update: 60s</p>|
|Received RSSI|<p>-</p>|`SNMP agent`|received.rssi<p>Update: 60s</p>|
|FastEtherenet   :Inbound packets discarded|<p>-</p>|`SNMP agent`|net.if.in.discards[ifInDiscards.2]<p>Update: 300</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
|FastEtehernet : Outbound packets discarded|<p>-</p>|`SNMP agent`|net.if.out.discards[ifOutDiscards.2]<p>Update: 300</p>|
|Device MAC|<p>-</p>|`SNMP agent`|system.mac<p>Update: 1d</p>|
|FastEtehernet  :Inbound packets with errors|<p>-</p>|`SNMP agent`|ifInErrors.2<p>Update: 300</p>|
|FastEthernet :Bits sent|<p>-</p>|`SNMP agent`|ifOutOctets.2<p>Update: 180</p>|
|Access vlan|<p>-</p>|`SNMP agent`|access.vlan<p>Update: 1d</p>|
|Received RSSI BU|<p>-</p>|`SNMP agent`|received.rssi.bu<p>Update: 60s</p>|
|Modulation Level|<p>-</p>|`SNMP agent`|modulation.level<p>Update: 60s</p>|
|Device location|<p>-</p>|`SNMP agent`|system.location<p>Update: 1d</p>|
|FastEthernet : Operational status|<p>-</p>|`SNMP agent`|net.if.status[ifOperStatus.2]<p>Update: 180</p>|
|ESSID|<p>-</p>|`SNMP agent`|system.essid<p>Update: 1d</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|Serial number|<p>-</p>|`SNMP agent`|system.hw.serial<p>Update: 1d</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 60</p>|
|SNMP availability|<p>-</p>|`Zabbix internal`|zabbix[host,snmp,available]<p>Update: 180</p>|
|FastEthernet  :Bits received|<p>-</p>|`SNMP agent`|ifInOctets.2<p>Update: 180</p>|
|Received SNR BU|<p>-</p>|`SNMP agent`|bu.received.snr<p>Update: 60</p>|
|FastEthernet :Outbound packets with errors|<p>-</p>|`SNMP agent`|net.if.out.errors[ifOutErrors.2]<p>Update: 300</p>|
|Defined Frequency|<p>-</p>|`SNMP agent`|freq.def<p>Update: 1d</p>|
|Device uptime|<p>-</p>|`SNMP agent`|system.uptime<p>Update: 6h</p>|
|Hardware model|<p>-</p>|`SNMP agent`|system.hw.model<p>Update: 1d</p>|
|Device name|<p>-</p>|`SNMP agent`|system.name<p>Update: 1d</p>|
|Transmit Power|<p>-</p>|`SNMP agent`|transmit.power<p>Update: 1d</p>|
|Sub Band Select|<p>-</p>|`SNMP agent`|sub.band<p>Update: 1d</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Unavailable by ICMP ping|<p>Last value: {ITEM.LASTVALUE1}. Last three attempts returned timeout. Please check device connectivity.</p>|high|
|High ICMP ping loss|<p>-</p>|warning|
|High ICMP ping response time|<p>-</p>|warning|
