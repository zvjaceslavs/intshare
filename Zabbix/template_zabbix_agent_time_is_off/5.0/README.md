# Time is off by Zabbix agent active

## Overview

Detects if Zabbix agent time has been shifted away.


Solution is suitable in cases where Zabbix agent (active) checks are the only option.


Explanation how/why it works:


<https://youtu.be/bSQ1xV1nmqU>



## Macros used

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
|Agent time shifted in|<p>-</p>|`Dependent item`|agent.time.shifted.in<p>Update: 0</p>|
|Agent time offset|<p>-</p>|`Dependent item`|agent.time.offset<p>Update: 0</p>|
|Agent time difference|<p>-</p>|`Zabbix agent (active)`|system.localtime<p>Update: 1m</p>|
## Triggers

There are no triggers in this template.

