# HW myStrom ECS

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
|ECS power usage|<p>-</p>|`Dependent item`|mystrom.ecs[power]<p>Update: 0</p>|
|ECS power status|<p>Power status of the myStrom ECS adapter.</p>|`Dependent item`|mystrom.ecs[relay]<p>Update: 0</p>|
|ECS Report|<p>Get a JSON array like this: { "power": 92.009575, "relay": true }</p>|`HTTP agent`|mystrom.ecs[report]<p>Update: 1m</p>|
## Triggers

There are no triggers in this template.

