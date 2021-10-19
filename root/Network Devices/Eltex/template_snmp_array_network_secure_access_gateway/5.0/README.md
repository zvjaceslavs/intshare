# Array AG1100 SNMP 监控模板

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
|最大会话数|<p>-</p>|`SNMP agent`|array.max.sessions<p>Update: 1m</p>|
|CPU利用率|<p>-</p>|`SNMP agent`|array.cpu.util<p>Update: 1m</p>|
|总出流量|<p>-</p>|`SNMP agent`|array.total.bytes.out<p>Update: 1m</p>|
|会话数|<p>-</p>|`SNMP agent`|array.sessions<p>Update: 1m</p>|
|总入流量|<p>-</p>|`SNMP agent`|array.total.bytes.in<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|CPU利用率大于80%|<p>-</p>|warning|
