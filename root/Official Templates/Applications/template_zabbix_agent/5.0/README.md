# Template App Zabbix Agent

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
|Host name of zabbix_agentd running|<p>-</p>|`Zabbix agent`|agent.hostname<p>Update: 3600</p>|
|Agent ping|<p>The agent always returns 1 for this item. It could be used in combination with nodata() for availability check.</p>|`Zabbix agent`|agent.ping<p>Update: 60</p>|
|Version of zabbix_agent(d) running|<p>-</p>|`Zabbix agent`|agent.version<p>Update: 3600</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Host name of zabbix_agentd was changed on {HOST.NAME}|<p>-</p>|information|
|Version of zabbix_agent(d) was changed on {HOST.NAME}|<p>-</p>|information|
|Zabbix agent on {HOST.NAME} is unreachable for 5 minutes|<p>-</p>|average|
