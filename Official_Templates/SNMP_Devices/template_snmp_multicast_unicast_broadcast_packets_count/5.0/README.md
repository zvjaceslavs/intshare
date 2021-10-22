# Template SNMP Packets

## Overview

Count of Multicast | Unicast | Broadcast packets



## Author

Фенечкин

## Macros used

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
|Inbound broadcast packets on interface $1|<p>-</p>|`SNMP agent`|ifHCInBroadcastPkts.[{#SNMPVALUE}]<p>Update: 1m</p><p>LLD</p>|
|Inbound multicast packets on interface $1|<p>-</p>|`SNMP agent`|ifHCInMulticastPkts.[{#SNMPVALUE}]<p>Update: 1m</p><p>LLD</p>|
|Inbound unicast packets on interface $1|<p>-</p>|`SNMP agent`|ifHCInUcastPkts.[{#SNMPVALUE}]<p>Update: 1m</p><p>LLD</p>|
|Outbound broadcast packets on interface $1|<p>-</p>|`SNMP agent`|ifHCOutBroadcastPkts.[{#SNMPVALUE}]<p>Update: 1m</p><p>LLD</p>|
|Outbound multicast packets on interface $1|<p>-</p>|`SNMP agent`|ifHCOutMulticastPkts.[{#SNMPVALUE}]<p>Update: 1m</p><p>LLD</p>|
|Outbound unicast packets on interface $1|<p>-</p>|`SNMP agent`|ifHCOutUcastPkts.[{#SNMPVALUE}]<p>Update: 1m</p><p>LLD</p>|
## Triggers

There are no triggers in this template.

