# Template APC Netbotz AP9340

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
|Sensor 2 Humidity|<p>-</p>|`SNMP agent`|memSensorsHumidity2<p>Update: 30s</p>|
|Sensor 1 Name|<p>-</p>|`SNMP agent`|memSensorsStatusSensorName1<p>Update: 3600</p>|
|Sensor 2 Temperature|<p>The sensor's current temperature reading. Units are displayed in the scale shown in the memSensorsStatusSysTempUnits OID (Celsius or Fahrenheit).</p>|`SNMP agent`|memSensorsTemperature2<p>Update: 30s</p>|
|Sensor 1 Temperature|<p>The sensor's current temperature reading. Units are displayed in the scale shown in the memSensorsStatusSysTempUnits OID (Celsius or Fahrenheit).</p>|`SNMP agent`|memSensorsTemperature1<p>Update: 30s</p>|
|Sensor 2 Name|<p>-</p>|`SNMP agent`|memSensorsStatusSensorName2<p>Update: 3600</p>|
|Sensor 2 Location|<p>The sensor's current temperature reading. Units are displayed in the scale shown in the memSensorsStatusSysTempUnits OID (Celsius or Fahrenheit).</p>|`SNMP agent`|memSensorsStatusSensorLocation2<p>Update: 3600</p>|
|Sensor 1 Location|<p>The sensor's current temperature reading. Units are displayed in the scale shown in the memSensorsStatusSysTempUnits OID (Celsius or Fahrenheit).</p>|`SNMP agent`|memSensorsStatusSensorLocation1<p>Update: 3600</p>|
|Sensor 1 Humidity|<p>-</p>|`SNMP agent`|memSensorsHumidity1<p>Update: 30s</p>|
## Triggers

There are no triggers in this template.

