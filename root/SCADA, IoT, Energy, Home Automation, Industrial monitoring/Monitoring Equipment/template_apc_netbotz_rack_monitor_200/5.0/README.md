# Template SNMP APC NetBotz Rack Monitor 200

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

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Internal APC Sensor|<p>-</p>|`SNMP agent`|apc.enviro.sensor<p>Update: 30</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|{#SNMPVALUE} Sensor Humidity|<p>-</p>|`SNMP agent`|apc.enviro.sensor.int.hum.["{#SNMPINDEX}"]<p>Update: 30</p>|
|{#SNMPVALUE} Sensor Temperature|<p>-</p>|`SNMP agent`|apc.enviro.sensor.int.temp.["{#SNMPINDEX}"]<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Humidity > 55 RH%|<p>-</p>|high|
|{#SNMPVALUE} {ITEM.LASTVALUE}  :: Humidity > 60 RH%|<p>-</p>|disaster|
|{#SNMPVALUE} {ITEM.LASTVALUE}  :: Humidiy< 45 RH%|<p>-</p>|high|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Humidty < 40 RH%|<p>-</p>|disaster|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Temperature < 15°C|<p>-</p>|high|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Temperature < 19°C|<p>-</p>|warning|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Temperature > 22°C|<p>-</p>|warning|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Temperature > 24°C|<p>-</p>|high|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Temperature > 30°C|<p>-</p>|disaster|
