# Xanto S1500R Template

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
|Runtime|<p>remaining runtime in min</p>|`SNMP agent`|Time<p>Update: 30</p>|
|Temperature|<p>Temp</p>|`SNMP agent`|Temp<p>Update: 30</p>|
|MAC|<p>-</p>|`SNMP agent`|deviceMAC<p>Update: 86400</p>|
|Battery Capacity|<p>-</p>|`SNMP agent`|Battery<p>Update: 30</p>|
|USV Model|<p>-</p>|`SNMP agent`|USVVersion<p>Update: 86400</p>|
|Voltage Input|<p>-</p>|`SNMP agent`|VoltageIN<p>Update: 30</p>|
|system uptime|<p>-</p>|`SNMP agent`|system.up<p>Update: 86400</p>|
|Voltage Output|<p>-</p>|`SNMP agent`|VoltageOut<p>Update: 30</p>|
|Load Current %|<p>current load in %</p>|`SNMP agent`|Load<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Batterie temperature critical|<p>-</p>|high|
|Batterie temperature too high|<p>-</p>|warning|
|Batterie temperature too low|<p>-</p>|average|
|Battery charge critically low|<p>-</p>|high|
|Battery charge low|<p>-</p>|warning|
|Input Voltage low|<p>-</p>|warning|
|Input Voltage too high|<p>-</p>|warning|
|No power Input|<p>-</p>|high|
