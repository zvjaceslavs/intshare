# Monitoring MCS

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMMUNITY}|<p>-</p>|`sig1read`|Text macro|
|{$TEMP.CRITICAL}|<p>-</p>|`32`|Text macro|
|{$TEMP.WARNING}|<p>-</p>|`28`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|{HOST.NAME} alarmSensorInternal|<p>-</p>|`SNMP trap`|snmptrap["alarmSensorInternal"]<p>Update: 0</p>|
|{HOST.NAME} alarmSensorWaterCoolUnit|<p>-</p>|`SNMP trap`|snmptrap["alarmSensorWaterCoolUnit"]<p>Update: 0</p>|
|{HOST.NAME} ping|<p>-</p>|`Simple check`|icmpping[]<p>Update: 30s</p>|
|MCS trap fallback|<p>-</p>|`SNMP trap`|snmptrap.fallback<p>Update: 0</p>|
|{HOST.NAME} Status check|<p>-</p>|`SNMP agent`|cpqWcrmMibCondition.0<p>Update: 1m</p>|
|{HOST.NAME} alarmWaterCoolUnit|<p>-</p>|`SNMP trap`|snmptrap["alarmWaterCoolUnit"]<p>Update: 0</p>|
|{HOST.NAME} Room temperature|<p>-</p>|`SNMP agent`|waterCoolUnitSensorValue.1<p>Update: 5m</p>|
|{HOST.NAME} alarmInternal|<p>-</p>|`SNMP trap`|snmptrap["alarmInternal"]<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Unknown trap received from {HOST.NAME}|<p>-</p>|average|
|{HOST.NAME} injoignable|<p>-</p>|high|
|{HOST.NAME} Internal Sensor alarm|<p>-</p>|average|
|{HOST.NAME} Internal Sensor config changed|<p>-</p>|information|
|{HOST.NAME} Internal Sensor error|<p>-</p>|average|
|{HOST.NAME} Internal Sensor not available|<p>-</p>|average|
|{HOST.NAME} Internal Sensor set off|<p>-</p>|warning|
|{HOST.NAME} Internal Sensor set on|<p>-</p>|warning|
|{HOST.NAME} Internal Sensor too high|<p>-</p>|average|
|{HOST.NAME} Internal Sensor too low|<p>-</p>|average|
|{HOST.NAME} Internal Sensor warning|<p>-</p>|average|
|{HOST.NAME} Internal Unit config changed|<p>-</p>|information|
|{HOST.NAME} Internal Unit detected|<p>-</p>|information|
|{HOST.NAME} Internal Unit error|<p>-</p>|average|
|{HOST.NAME} Internal Unit low power|<p>-</p>|average|
|{HOST.NAME} Internal Unit not available|<p>-</p>|average|
|{HOST.NAME} Internal Unit reset|<p>-</p>|average|
|{HOST.NAME} Internal Unit timeout|<p>-</p>|average|
|{HOST.NAME} no response|<p>-</p>|high|
|{HOST.NAME} Température de la salle supérieure à {$TEMP.CRITICAL}|<p>-</p>|high|
|{HOST.NAME} Température de la salle supérieure à {$TEMP.WARNING}|<p>-</p>|average|
|{HOST.NAME} Water cool unit config changed|<p>-</p>|information|
|{HOST.NAME} Water cool unit detected|<p>-</p>|information|
|{HOST.NAME} Water cool unit error|<p>-</p>|average|
|{HOST.NAME} Water cool unit low power|<p>-</p>|average|
|{HOST.NAME} Water cool unit not available|<p>-</p>|average|
|{HOST.NAME} Water cool unit reset|<p>-</p>|average|
|{HOST.NAME} Water Cool Unit Sensor alarm|<p>-</p>|average|
|{HOST.NAME} Water Cool Unit Sensor config changed|<p>-</p>|information|
|{HOST.NAME} Water Cool Unit Sensor error|<p>-</p>|average|
|{HOST.NAME} Water Cool Unit Sensor not available|<p>-</p>|average|
|{HOST.NAME} Water Cool Unit Sensor set off|<p>-</p>|warning|
|{HOST.NAME} Water Cool Unit Sensor set on|<p>-</p>|warning|
|{HOST.NAME} Water Cool Unit Sensor too high|<p>-</p>|average|
|{HOST.NAME} Water Cool Unit Sensor too low|<p>-</p>|average|
|{HOST.NAME} Water Cool Unit Sensor warning|<p>-</p>|average|
|{HOST.NAME} Water cool unit timeout|<p>-</p>|average|
