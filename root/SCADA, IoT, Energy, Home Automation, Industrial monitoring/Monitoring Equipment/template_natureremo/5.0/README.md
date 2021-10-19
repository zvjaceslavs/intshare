# Template NatureRemo

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$REMO_BEARER}|<p>-</p>|`empty`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|NatureRemo Discovery|<p>-</p>|`Zabbix agent (active)`|natureremo.discovery[{$REMO_BEARER}]<p>Update: 10m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|{#REMONAME} 湿度|<p>-</p>|`Zabbix agent`|natureremo.humi[{#REMONAME}]<p>Update: 30s</p>|
|{#REMONAME} 照度|<p>-</p>|`Zabbix agent`|natureremo.illumi[{#REMONAME}]<p>Update: 30s</p>|
|{#REMONAME} 室温|<p>-</p>|`Zabbix agent`|natureremo.temp[{#REMONAME}]<p>Update: 30s</p>|
## Triggers

There are no triggers in this template.

