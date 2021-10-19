# Template SNMP Packets

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
|Network packets|<p>-</p>|`SNMP agent`|ifInter<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Inbound broadcast packets on interface $1|<p>-</p>|`SNMP agent`|ifHCInBroadcastPkts.[{#SNMPVALUE}]<p>Update: 1m</p>|
|Inbound multicast packets on interface $1|<p>-</p>|`SNMP agent`|ifHCInMulticastPkts.[{#SNMPVALUE}]<p>Update: 1m</p>|
|Inbound unicast packets on interface $1|<p>-</p>|`SNMP agent`|ifHCInUcastPkts.[{#SNMPVALUE}]<p>Update: 1m</p>|
|Outbound broadcast packets on interface $1|<p>-</p>|`SNMP agent`|ifHCOutBroadcastPkts.[{#SNMPVALUE}]<p>Update: 1m</p>|
|Outbound multicast packets on interface $1|<p>-</p>|`SNMP agent`|ifHCOutMulticastPkts.[{#SNMPVALUE}]<p>Update: 1m</p>|
|Outbound unicast packets on interface $1|<p>-</p>|`SNMP agent`|ifHCOutUcastPkts.[{#SNMPVALUE}]<p>Update: 1m</p>|
## Triggers

There are no triggers in this template.

