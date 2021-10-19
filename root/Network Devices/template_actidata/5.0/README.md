# Template Actidata NV1 SNMPv1

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$HIGH_EXT1_SENSOR_TEMP}|<p>-</p>|`33`|Text macro|
|{$HIGH_EXT2_SENSOR_TEMP}|<p>-</p>|`35`|Text macro|
|{$HIGH_HUMIDITY_SENSOR}|<p>-</p>|`65`|Text macro|
|{$HIGH_INT_SENSOR_TEMP}|<p>-</p>|`42`|Text macro|
|{$WARN_EXT1_SENSOR_TEMP}|<p>-</p>|`28`|Text macro|
|{$WARN_EXT2_SENSOR_TEMP}|<p>-</p>|`30`|Text macro|
|{$WARN_HUMIDITY_SENSOR}|<p>-</p>|`50`|Text macro|
|{$WARN_INT_SENSOR_TEMP}|<p>-</p>|`37`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|External temperature sensor 1|<p>-</p>|`SNMP agent`|nv1.sensor.ets1<p>Update: 300s</p>|
|External humidity sensor|<p>-</p>|`SNMP agent`|nv1.sensor.ehs<p>Update: 300s</p>|
|Internal temperature sensor|<p>-</p>|`SNMP agent`|nv1.sensor.its<p>Update: 300s</p>|
|External temperature sensor 2|<p>-</p>|`SNMP agent`|nv1.sensor.ets2<p>Update: 300s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|External1 temperature > {$WARN_EXT1_SENSOR_TEMP}|<p>-</p>|warning|
|External2 temperature > {$WARN_EXT2_SENSOR_TEMP}|<p>-</p>|warning|
|High External1 sensor temperature > {$HIGH_EXT1_SENSOR_TEMP}|<p>-</p>|high|
|High External2 sensor temperature > {$HIGH_EXT2_SENSOR_TEMP}|<p>-</p>|high|
|High Humidity > {$HIGH_HUMIDITY_SENSOR}|<p>-</p>|high|
|High Internal sensor temperature > {$HIGH_INT_SENSOR_TEMP}|<p>-</p>|high|
|Humidity > {$WARN_HUMIDITY_SENSOR}|<p>-</p>|warning|
|Internal temperature > {$WARN_INT_SENSOR_TEMP}|<p>-</p>|warning|
