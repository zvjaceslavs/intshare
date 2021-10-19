# Template APC NetBotz Rack Monitor 200

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
|APC Temp/Humidity Sensor Module|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module<p>Update: 15s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|{#SNMPVALUE} Alarm|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.alarm.value.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - Long Term Increasing Rate Time|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.threshold.long.increasing.time.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - Short Term Increasing Rate Value|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.threshold.short.increasing.value.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - Short Term Increasing Rate Time|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.threshold.short.increasing.time.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - Short Term Decreasing Rate Value|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.threshold.short.descreasing.value.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - Short Term Decreasing Rate Time|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.threshold.short.descreasing.time.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - Min|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.threshold.min.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - Max|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.threshold.max.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - Low|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.threshold.low.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - Long Term Increasing Rate Value|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.threshold.long.increasing.value.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - Long Term Decreasing Rate Value|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.threshold.long.descreasing.value.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Humitity: Threshold - High|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.humidity.threshold.high.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - Long Term Decreasing Rate Time|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.threshold.long.descreasing.time.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - Hysteresis|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.threshold.hysteresis.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - High|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.threshold.high.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Humitity|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.humidity.value.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Humitity: Threshold - Min|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.humidity.threshold.min.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Humitity: Threshold - Max|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.humidity.threshold.max.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Humitity: Threshold - Low|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.humidity.threshold.low.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Humitity: Threshold - Hysteresis|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.humidity.threshold.hysteresis.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.value.["{#SNMPINDEX}"]<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Humidity < Low Threshold|<p>-</p>|information|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Humidity < Min Threshold|<p>-</p>|information|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Humidity > High Threshold|<p>-</p>|warning|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Humidity > Max Threshold|<p>-</p>|disaster|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Temperature < Low Threshold|<p>-</p>|information|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Temperature < Min Threshold|<p>-</p>|information|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Temperature > High Threshold|<p>-</p>|average|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Temperature > Max Threshold|<p>-</p>|disaster|
# Template APC NetBotz Rack Monitor 250

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$HYSTERESIS}|<p>-</p>|`2`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Wireless APC Sensor|<p>-</p>|`SNMP agent`|apc.enviro.sensor.wireless<p>Update: 30s</p>|
|APC Temp/Humidity Sensor Module|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module<p>Update: 15s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|{#SNMPVALUE} Alarm - Enabled|<p>-</p>|`SNMP agent`|apc.enviro.sensor.wireless.alarm.value.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} RSSI: Threshold - Low|<p>-</p>|`SNMP agent`|apc.enviro.sensor.wireless.rssi.threshold.low.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - Min|<p>-</p>|`SNMP agent`|apc.enviro.sensor.wireless.temperature.threshold.min.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - Max|<p>-</p>|`SNMP agent`|apc.enviro.sensor.wireless.temperature.threshold.max.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - Low|<p>-</p>|`SNMP agent`|apc.enviro.sensor.wireless.temperature.threshold.low.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - High|<p>-</p>|`SNMP agent`|apc.enviro.sensor.wireless.temperature.threshold.high.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} RSSI|<p>-</p>|`SNMP agent`|apc.enviro.sensor.wireless.rssi.value.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} RSSI: Threshold - Min|<p>-</p>|`SNMP agent`|apc.enviro.sensor.wireless.rssi.threshold.min.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Humidity|<p>-</p>|`SNMP agent`|apc.enviro.sensor.wireless.humidity.value.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Battery: Threshold - Low|<p>-</p>|`SNMP agent`|apc.enviro.sensor.wireless.battery.threshold.low.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Humidity: Threshold - Min|<p>-</p>|`SNMP agent`|apc.enviro.sensor.wireless.humidity.threshold.min.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Humidity: Threshold - Max|<p>-</p>|`SNMP agent`|apc.enviro.sensor.wireless.humidity.threshold.max.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Humidity: Threshold - Low|<p>-</p>|`SNMP agent`|apc.enviro.sensor.wireless.humidity.threshold.low.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Humidity: Threshold - High|<p>-</p>|`SNMP agent`|apc.enviro.sensor.wireless.humidity.threshold.high.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Battery|<p>-</p>|`SNMP agent`|apc.enviro.sensor.wireless.battery.value.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Battery: Threshold - Min|<p>-</p>|`SNMP agent`|apc.enviro.sensor.wireless.battery.threshold.min.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature|<p>-</p>|`SNMP agent`|apc.enviro.sensor.wireless.temperature.value.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Alarm|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.alarm.value.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - Long Term Increasing Rate Time|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.threshold.long.increasing.time.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - Short Term Increasing Rate Value|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.threshold.short.increasing.value.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - Short Term Increasing Rate Time|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.threshold.short.increasing.time.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - Short Term Decreasing Rate Value|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.threshold.short.descreasing.value.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - Short Term Decreasing Rate Time|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.threshold.short.descreasing.time.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - Min|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.threshold.min.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - Max|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.threshold.max.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - Low|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.threshold.low.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - Long Term Increasing Rate Value|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.threshold.long.increasing.value.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - Long Term Decreasing Rate Value|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.threshold.long.descreasing.value.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Humitity: Threshold - High|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.humidity.threshold.high.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - Long Term Decreasing Rate Time|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.threshold.long.descreasing.time.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - Hysteresis|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.threshold.hysteresis.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature: Threshold - High|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.threshold.high.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Humitity|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.humidity.value.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Humitity: Threshold - Min|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.humidity.threshold.min.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Humitity: Threshold - Max|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.humidity.threshold.max.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Humitity: Threshold - Low|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.humidity.threshold.low.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Humitity: Threshold - Hysteresis|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.humidity.threshold.hysteresis.["{#SNMPINDEX}"]<p>Update: 30s</p>|
|{#SNMPVALUE} Temperature|<p>-</p>|`SNMP agent`|apc.enviro.sensor.module.temperature.value.["{#SNMPINDEX}"]<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Battery < Low Threshold|<p>-</p>|warning|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Battery < Min Threshold|<p>-</p>|high|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Humidity < Low Threshold|<p>-</p>|information|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Humidity < Min Threshold|<p>-</p>|warning|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Humidity > High Threshold|<p>-</p>|average|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Humidity > Max Threshold|<p>-</p>|disaster|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: RSSI < Low Threshold|<p>-</p>|average|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: RSSI < Min Threshold|<p>-</p>|disaster|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Temperature < Low Threshold|<p>-</p>|information|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Temperature < Min Threshold|<p>-</p>|warning|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Temperature > High Threshold|<p>-</p>|average|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Temperature > Max Threshold|<p>-</p>|disaster|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Humidity < Low Threshold|<p>-</p>|information|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Humidity < Min Threshold|<p>-</p>|information|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Humidity > High Threshold|<p>-</p>|warning|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Humidity > Max Threshold|<p>-</p>|disaster|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Temperature < Low Threshold|<p>-</p>|information|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Temperature < Min Threshold|<p>-</p>|information|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Temperature > High Threshold|<p>-</p>|average|
|{#SNMPVALUE} {ITEM.LASTVALUE} :: Temperature > Max Threshold|<p>-</p>|disaster|
