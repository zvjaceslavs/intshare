# Template ITWatchDog 15

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMMUNITY}|<p>-</p>|`CMPublic`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|UnitHumidity|<p>-</p>|`SNMP agent`|Humid.WatchDog<p>Update: 60</p>|
|UnitDewPoint|<p>-</p>|`SNMP agent`|DewP.WatchDog<p>Update: 60</p>|
|UnitTemp|<p>-</p>|`SNMP agent`|Temp.WatchDog<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Temp Rising In Server Room|<p>The Temperature has risen above 84 degrees in the Server Room</p>|warning|
|Temp Too High In Server Room|<p>The Temperature has risen above 86 degrees in the Server Room</p>|high|
