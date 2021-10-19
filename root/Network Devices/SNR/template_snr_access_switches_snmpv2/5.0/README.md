# Template SNR Broadcast-Multicast-Unicast

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
|Broadcast/Multicast/Unicast  - Statistic on interfaces|<p>-</p>|`SNMP agent`|ifInterbmu<p>Update: 30</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Inbound broadcast packets on interface {#SNMPVALUE}|<p>-</p>|`SNMP agent`|ifHCInBroadcastPkts.[{#SNMPVALUE}]<p>Update: 30</p>|
|Inbound multicast packets on interface {#SNMPVALUE}|<p>-</p>|`SNMP agent`|ifHCInMulticastPkts.[{#SNMPVALUE}]<p>Update: 30</p>|
|Inbound unicast packets on interface {#SNMPVALUE}|<p>-</p>|`SNMP agent`|ifHCInUcastPkts.[{#SNMPVALUE}]<p>Update: 30</p>|
|Outbound broadcast packets on interface {#SNMPVALUE}|<p>-</p>|`SNMP agent`|ifHCOutBroadcastPkts.[{#SNMPVALUE}]<p>Update: 30</p>|
|Outbound multicast packets on interface {#SNMPVALUE}|<p>-</p>|`SNMP agent`|ifHCOutMulticastPkts.[{#SNMPVALUE}]<p>Update: 30</p>|
|Outbound unicast packets on interface {#SNMPVALUE}|<p>-</p>|`SNMP agent`|ifHCOutUcastPkts.[{#SNMPVALUE}]<p>Update: 30</p>|
## Triggers

There are no triggers in this template.

# Template SNR CPU Usage

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

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|CPU - Usage|<p>-</p>|`SNMP agent`|sys.cpuusage<p>Update: 30</p>|
## Triggers

There are no triggers in this template.

# Template SNR Error and Discared Packets

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$IF_ERRORS_WARN}|<p>-</p>|`2`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Network Interfaces Error and Discard Discovery|<p>-</p>|`SNMP agent`|error.if.discovery<p>Update: 30</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Interface {#IFNAME}({#IFALIAS}): Inbound packets discarded|<p>-</p>|`SNMP agent`|net.if.in.discards[ifInDiscards.{#SNMPINDEX}]<p>Update: 30</p>|
|Interface {#IFNAME}({#IFALIAS}): Inbound packets with errors|<p>-</p>|`SNMP agent`|net.if.in.errors[ifInErrors.{#SNMPINDEX}]<p>Update: 30</p>|
|Interface {#IFNAME}({#IFALIAS}): Outbound packets discarded|<p>-</p>|`SNMP agent`|net.if.out.discards[ifOutDiscards.{#SNMPINDEX}]<p>Update: 30</p>|
|Interface {#IFNAME}({#IFALIAS}): Outbound packets with errors|<p>-</p>|`SNMP agent`|net.if.out.errors[ifOutErrors.{#SNMPINDEX}]<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Interface {#IFNAME}({#IFALIAS}): High error rate|<p>-</p>|warning|
# Template SNR Interfaces Statistic

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$IFCONTROL}|<p>-</p>|`1`|Text macro|
|{$IF_UTIL_MAX}|<p>-</p>|`90`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Network Interfaces Statistic Discovery|<p>-</p>|`SNMP agent`|net.if.discovery<p>Update: 30</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Interface {#IFNAME}({#IFALIAS}): Bits received|<p>-</p>|`SNMP agent`|net.if.in[ifHCInOctets.{#SNMPINDEX}]<p>Update: 30</p>|
|Interface {#IFNAME}({#IFALIAS}): Bits sent|<p>-</p>|`SNMP agent`|net.if.out[ifHCOutOctets.{#SNMPINDEX}]<p>Update: 30</p>|
|Interface {#IFNAME}({#IFALIAS}): Speed|<p>-</p>|`SNMP agent`|net.if.speed[ifHighSpeed.{#SNMPINDEX}]<p>Update: 30</p>|
|Interface {#IFNAME}({#IFALIAS}): Operational status|<p>-</p>|`SNMP agent`|net.if.status[ifOperStatus.{#SNMPINDEX}]<p>Update: 30</p>|
|Interface {#IFNAME}({#IFALIAS}): Interface type|<p>-</p>|`SNMP agent`|net.if.type[ifType.{#SNMPINDEX}]<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Interface {#IFNAME}({#IFALIAS}): Ethernet has changed to lower speed than it was before|<p>-</p>|information|
|Interface {#IFNAME}({#IFALIAS}): High bandwidth usage >{$IF_UTIL_MAX:"{#IFNAME}"}%|<p>-</p>|warning|
|Interface {#IFNAME}({#IFALIAS}): Link down|<p>-</p>|average|
# Template SNR Memory Information

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

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Memory - Busy|<p>-</p>|`SNMP agent`|sys.memorybusy<p>Update: 30</p>|
|Memory - Size|<p>-</p>|`SNMP agent`|sys.memoryusage<p>Update: 30</p>|
## Triggers

There are no triggers in this template.

# Template SNR POE Power

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
|POE - Power on Ports|<p>-</p>|`SNMP agent`|poe.ports<p>Update: 30</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|POE - General Power|<p>-</p>|`SNMP agent`|poepower.general<p>Update: 30</p>|
|POE - Power Current on Port:{#SNMPINDEX}|<p>-</p>|`SNMP agent`|poepower.current[{#SNMPINDEX}]<p>Update: 30</p>|
|POE - Max Power on Port:{#SNMPINDEX}|<p>-</p>|`SNMP agent`|poepowermax.onport[{#SNMPINDEX}]<p>Update: 30</p>|
## Triggers

There are no triggers in this template.

