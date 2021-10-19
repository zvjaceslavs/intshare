# Witek Switch

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMMUNITY}|<p>-</p>|`public`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Network Interfaces Discovery|<p>-</p>|`SNMP agent`|net.If<p>Update: 60s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 60s</p>|
|System SNMP Location|<p>-</p>|`SNMP agent`|sysLocation<p>Update: 1d</p>|
|Total Traffic From Ports Out/In|<p>-</p>|`Calculated`|if.Total..Traffic<p>Update: 30s</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 60s</p>|
|System Uptime|<p>-</p>|`SNMP agent`|system.uptimet<p>Update: 60s</p>|
|Hardware Model|<p>-</p>|`SNMP agent`|sysDescr.0<p>Update: 30s</p>|
|Total Traffic From Ports IN|<p>-</p>|`Calculated`|if.InTotal.Traffic<p>Update: 30s</p>|
|Total Traffic From Ports OUT|<p>-</p>|`Calculated`|if.OutTotal.Traffic<p>Update: 30s</p>|
|System Identity|<p>-</p>|`SNMP agent`|sys.Name<p>Update: 1d</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60s</p>|
|SNMP Contact|<p>-</p>|`SNMP agent`|sys.Contact<p>Update: 360m</p>|
|Interface Name:{#IFNAME} Alias:{#IFALIAS} Speed|<p>-</p>|`SNMP agent`|ifHighSpeed.["({#SNMPINDEX})"]<p>Update: 30s</p>|
|Interface Name:{#IFNAME} Alias:{#IFALIAS}  MTU|<p>-</p>|`SNMP agent`|ifMtu.["({#SNMPINDEX})"]<p>Update: 30s</p>|
|Interface Name:{#IFNAME} Alias:{#IFALIAS} Type|<p>-</p>|`SNMP agent`|ifType.["({#SNMPINDEX})"]<p>Update: 30s</p>|
|Interface Name:{#IFNAME} Alias:({#IFALIAS}): Inbound packets discarded|<p>-</p>|`SNMP agent`|net.if.in.discards[ifInDiscards.{#SNMPINDEX}]<p>Update: 30s</p>|
|Interface Name:{#IFNAME} Alias:({#IFALIAS}): Inbound packets with errors|<p>-</p>|`SNMP agent`|net.if.in.errors[ifInErrors.{#SNMPINDEX}]<p>Update: 30s</p>|
|Interface Name:{#IFNAME} Alias:({#IFALIAS}): Bits received|<p>-</p>|`SNMP agent`|net.if.in[ifHCInOctets.{#SNMPINDEX}]<p>Update: 3s</p>|
|Interface Name:{#IFNAME} Alias:({#IFALIAS}): Outbound packets discarded|<p>-</p>|`SNMP agent`|net.if.out.discards[ifOutDiscards.{#SNMPINDEX}]<p>Update: 30s</p>|
|Interface Name:{#IFNAME} Alias:({#IFALIAS}): Outbound packets with errors|<p>-</p>|`SNMP agent`|net.if.out.errors[ifOutErrors.{#SNMPINDEX}]<p>Update: 30s</p>|
|Interface Name:{#IFNAME} Alias:({#IFALIAS}): Bits sent|<p>-</p>|`SNMP agent`|net.if.out[ifHCOutOctets.{#SNMPINDEX}]<p>Update: 3s</p>|
|Interface Name:{#IFNAME} Alias:({#IFALIAS}): Admin status|<p>-</p>|`SNMP agent`|net.if.status[ifAdminStatus.{#SNMPINDEX}]<p>Update: 30s</p>|
|Interface Name:{#IFNAME} Alias:({#IFALIAS}): Operational status|<p>-</p>|`SNMP agent`|net.if.status[ifOperStatus.{#SNMPINDEX}]<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOST.NAME} Firmware has changed|<p>-</p>|information|
|{HOST.NAME} High ICMP ping response time|<p>-</p>|warning|
|{HOST.NAME} Ping Loss|<p>-</p>|warning|
|{HOST.NAME} System Identity has changed|<p>-</p>|information|
|{HOST.NAME}	Unavailable by ICMP ping|<p>-</p>|high|
