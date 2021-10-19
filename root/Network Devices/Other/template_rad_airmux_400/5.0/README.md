# Template Net RAD AirMux 400 SNMPv1

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMMUNITY}|<p>-</p>|`netman`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Device enterprises|<p>-</p>|`SNMP agent`|system.enterprises<p>Update: 86400</p>|
|Device contact details|<p>-</p>|`SNMP agent`|system.contact<p>Update: 86400</p>|
|Port Inbound packets with errors|<p>-</p>|`SNMP agent`|net.if.in.errors<p>Update: 60</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 60</p>|
|Serial number|<p>-</p>|`SNMP agent`|system.hw.serial<p>Update: 1d</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|Port Speed|<p>-</p>|`SNMP agent`|net.if.speed<p>Update: 60</p>|
|Port Inbound packets discarded|<p>-</p>|`SNMP agent`|net.if.in.discards<p>Update: 60</p>|
|Channel bandwidth|<p>-</p>|`SNMP agent`|frequency.bandwidth<p>Update: 1d</p>|
|Port Device MAC|<p>-</p>|`SNMP agent`|net.mac<p>Update: 1d</p>|
|Port Outbound packets with errors|<p>-</p>|`SNMP agent`|net.if.out.errors<p>Update: 60</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
|Radio Total Frames|<p>-</p>|`SNMP agent`|radio.frames<p>Update: 60</p>|
|Transmit Power|<p>-</p>|`SNMP agent`|frequency.power<p>Update: 1d</p>|
|Port Odu Operational status|<p>-</p>|`SNMP agent`|net.if.status<p>Update: 60</p>|
|Device name|<p>-</p>|`SNMP agent`|system.name<p>Update: 86400</p>|
|Device location|<p>-</p>|`SNMP agent`|system.location<p>Update: 86400</p>|
|Port Bits sent|<p>-</p>|`SNMP agent`|net.if.OutOctets<p>Update: 60</p>|
|Radio Bad Frames|<p>-</p>|`SNMP agent`|radio.bad.frames<p>Update: 60</p>|
|Device description|<p>-</p>|`SNMP agent`|system.descr<p>Update: 86400</p>|
|Device uptime|<p>-</p>|`SNMP agent`|system.uptime<p>Update: 60</p>|
|ESSID|<p>SELUCREH - not used</p>|`SNMP agent`|frequency.essid<p>Update: 1d</p>|
|Device remove unit|<p>-</p>|`SNMP agent`|system.remove<p>Update: 1d</p>|
|Received RSSI|<p>-</p>|`SNMP agent`|frequency.rssi<p>Update: 60</p>|
|Port Bits received|<p>-</p>|`SNMP agent`|net.if.InOctets<p>Update: 60</p>|
|Radio Device MAC|<p>-</p>|`SNMP agent`|radio.mac<p>Update: 1d</p>|
|Defined Frequency|<p>-</p>|`SNMP agent`|frequency.def<p>Update: 1d</p>|
|Port Outbound packets discarded|<p>-</p>|`SNMP agent`|net.if.out.discards<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Unavailable by ICMP ping|<p>Last value: {ITEM.LASTVALUE1}. Last three attempts returned timeout. Please check device connectivity.</p>|high|
|High ICMP ping loss|<p>-</p>|warning|
|High ICMP ping response time|<p>-</p>|warning|
