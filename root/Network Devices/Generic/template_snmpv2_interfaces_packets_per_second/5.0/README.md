# Template SNMPv2 Interfaces packets per second

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$WARNING_BROADCAST_PPS}|<p>pps to trigger warning</p>|`10`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Network interfaces pps|<p>You may also consider using IF-MIB::ifType or IF-MIB::ifAlias for discovery depending on your filtering needs.</p>|`SNMP agent`|net.discover.pps<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Interface {#IFNAME}({#IFALIAS}): Inbound broadcast rate|<p>The number of received broadcast packets per second</p>|`SNMP agent`|ifHCInBroadcastPkts[{#IFNAME}]<p>Update: 1m</p>|
|Interface {#IFNAME}({#IFALIAS}): Inbound multicast rate|<p>The number of received multicast packets per second</p>|`SNMP agent`|ifHCInMulticastPkts[{#IFNAME}]<p>Update: 1m</p>|
|Interface {#IFNAME}({#IFALIAS}): Inbound total rate|<p>-</p>|`Calculated`|ifHCInTotalPkts[{#IFNAME}]<p>Update: 1m</p>|
|Interface {#IFNAME}({#IFALIAS}): Inbound unicast rate|<p>The number of received unicast packets per second</p>|`SNMP agent`|ifHCInUcastPkts[{#IFNAME}]<p>Update: 1m</p>|
|Interface {#IFNAME}({#IFALIAS}): Outbound broadcast rate|<p>The number of outgoing broadcast packets per second</p>|`SNMP agent`|ifHCOutBroadcastPkts[{#IFNAME}]<p>Update: 1m</p>|
|Interface {#IFNAME}({#IFALIAS}): Outbound multicast rate|<p>The number of outgoing multicast packets per second</p>|`SNMP agent`|ifHCOutMulticastPkts[{#IFNAME}]<p>Update: 1m</p>|
|Interface {#IFNAME}({#IFALIAS}): Outbound total rate|<p>-</p>|`Calculated`|ifHCOutTotalPkts[{#IFNAME}]<p>Update: 1m</p>|
|Interface {#IFNAME}({#IFALIAS}): Outbound unicast rate|<p>The number of outgoing unicast packets per second</p>|`SNMP agent`|ifHCOutUcastPkts[{#IFNAME}]<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Interface Interface {#IFNAME}({#IFALIAS}): high Inbound brodcast rate|<p>-</p>|warning|
