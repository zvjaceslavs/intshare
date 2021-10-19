# Time is off by Zabbix agent active

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$AGENT_TIME_DIFFERENCE}|<p>-</p>|`2m`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Agent time difference|<p>-</p>|`Zabbix agent (active)`|system.localtime<p>Update: 1m</p>|
|Agent time offset|<p>-</p>|`Dependent item`|agent.time.offset<p>Update: 0</p>|
|Agent time shifted in|<p>-</p>|`Dependent item`|agent.time.shifted.in<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Agent time in future {$AGENT_TIME_DIFFERENCE}|<p>-</p>|average|
|Agent time in past {$AGENT_TIME_DIFFERENCE}|<p>-</p>|average|
