# Stulz Climate

## Overview

Template for monitoring the Stulz WIB 8000 air conditioning system



## Author

Aleksandr Kalugin

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$MAX_RET_TEMP}|<p>Maximum return temperature</p>|`30`|Text macro|
|{$MAX_SUP_TEMP}|<p>Maximum supply temperature</p>|`20`|Text macro|
|{$MIN_RET_TEMP}|<p>Minimum return temperature</p>|`15`|Text macro|
|{$MIN_SUP_TEMP}|<p>Minimum supply temperature</p>|`5`|Text macro|
## Template links

|Name|
|----|
|ICMP Ping|
|Generic SNMP|
## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Module Data Discovery|<p>-</p>|`SNMP agent`|Module.Data.Discovery<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|{#MODULE_NAME}: Compressor Speed|<p>-</p>|`SNMP agent`|compressor.speed.[{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|{#MODULE_NAME}: Limit room temp max|<p>-</p>|`SNMP agent`|limit.room.temp.max.[{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|{#MODULE_NAME}: Supply air temperature 3|<p>-</p>|`SNMP agent`|supply.temperature.3.[{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|{#MODULE_NAME}: Supply air temperature 2|<p>-</p>|`SNMP agent`|supply.temperature.2.[{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|{#MODULE_NAME}: Supply air temperature 1|<p>-</p>|`SNMP agent`|supply.temperature.1.[{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|{#MODULE_NAME}: Сlimate control system status|<p>-</p>|`SNMP agent`|stulz.status.[{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|{#MODULE_NAME}: Return air temperature|<p>-</p>|`SNMP agent`|return.temperature.[{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|{#MODULE_NAME}: Return air temperature 3|<p>-</p>|`SNMP agent`|return.temperature.3.[{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|{#MODULE_NAME}: Return air temperature 2|<p>-</p>|`SNMP agent`|return.temperature.2.[{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|{#MODULE_NAME}: Return air temperature 1|<p>-</p>|`SNMP agent`|return.temperature.1.[{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|{#MODULE_NAME}: Low temperature alarm threshold|<p>-</p>|`SNMP agent`|low.temperature.alarm.threshold.[{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|{#MODULE_NAME}: Limit room temp min|<p>-</p>|`SNMP agent`|limit.room.temp.min.[{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|{#MODULE_NAME}: Inverter Status|<p>-</p>|`SNMP agent`|inberter.status.[{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|{#MODULE_NAME}: Compressor Status|<p>-</p>|`SNMP agent`|compressor.status.[{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|{#MODULE_NAME}: High temperature alarm threshold|<p>-</p>|`SNMP agent`|high.temperature.alarm.threshold.[{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|{#MODULE_NAME}: Fans Status|<p>-</p>|`SNMP agent`|fans.status.[{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|{#MODULE_NAME}: Fan 3 speed|<p>-</p>|`SNMP agent`|fan.3.speed.[{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|{#MODULE_NAME}: Fan 3 runtime|<p>-</p>|`SNMP agent`|fan.3.runtime.[{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|{#MODULE_NAME}: Fan 2 speed|<p>-</p>|`SNMP agent`|fan.2.speed.[{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|{#MODULE_NAME}: Fan 2 runtime|<p>-</p>|`SNMP agent`|fan.2.runtime.[{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|{#MODULE_NAME}: Fan 1 speed|<p>-</p>|`SNMP agent`|fan.1.speed.[{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|{#MODULE_NAME}: Fan 1 runtime|<p>-</p>|`SNMP agent`|fan.1.runtime.[{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|{#MODULE_NAME}: Evaporation pressure|<p>-</p>|`SNMP agent`|evaporation.pressure.[{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|{#MODULE_NAME}: Cooling Setpoint|<p>-</p>|`SNMP agent`|cooling.setpoint.[{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|{#MODULE_NAME}: Condensation pressure|<p>-</p>|`SNMP agent`|condensation.pressure.[{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|{#MODULE_NAME}: Supply air temperature|<p>-</p>|`SNMP agent`|supply.temperature.[{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|{HOST.NAME}: {#MODULE_NAME}: Compressor Stopped|<p>-</p>|<p>**Expression**: max(/Stulz Climate/compressor.status.[{#SNMPINDEX}],5m)<1</p><p>**Recovery expression**: </p>|information|
|{HOST.NAME}: {#MODULE_NAME}: Cooling set point has been changed to {ITEM.VALUE}|<p>-</p>|<p>**Expression**: (last(/Stulz Climate/cooling.setpoint.[{#SNMPINDEX}],#1)<>last(/Stulz Climate/cooling.setpoint.[{#SNMPINDEX}],#2))=1</p><p>**Recovery expression**: </p>|information|
|{HOST.NAME}: {#MODULE_NAME}: Fans Stopped|<p>-</p>|<p>**Expression**: max(/Stulz Climate/fans.status.[{#SNMPINDEX}],5m)<1</p><p>**Recovery expression**: </p>|information|
|{HOST.NAME}: {#MODULE_NAME}: Inverter NOT OK|<p>-</p>|<p>**Expression**: last(/Stulz Climate/inberter.status.[{#SNMPINDEX}])<>0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature 1 is too low (<{$MIN_RET_TEMP})|<p>-</p>|<p>**Expression**: max(/Stulz Climate/return.temperature.1.[{#SNMPINDEX}],5m)<15</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature 2 is too high (>{#MAX_RET_TEMP})|<p>-</p>|<p>**Expression**: min(/Stulz Climate/return.temperature.2.[{#SNMPINDEX}],5m)>{#MAX_RET_TEMP}</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature 2 is too low (<{$MIN_RET_TEMP})|<p>-</p>|<p>**Expression**: max(/Stulz Climate/return.temperature.2.[{#SNMPINDEX}],5m)<15</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature 3 is too high (>{#MAX_RET_TEMP})|<p>-</p>|<p>**Expression**: min(/Stulz Climate/return.temperature.3.[{#SNMPINDEX}],5m)>{#MAX_RET_TEMP}</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature 3 is too low (<{$MIN_RET_TEMP})|<p>-</p>|<p>**Expression**: max(/Stulz Climate/return.temperature.3.[{#SNMPINDEX}],5m)<15</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature is too high (>{#MAX_RET_TEMP})|<p>-</p>|<p>**Expression**: min(/Stulz Climate/return.temperature.[{#SNMPINDEX}],5m)>{#MAX_RET_TEMP}</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature is too low (<{$MIN_RET_TEMP})|<p>-</p>|<p>**Expression**: max(/Stulz Climate/return.temperature.[{#SNMPINDEX}],5m)<15</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Climate Control System NOT OK|<p>-</p>|<p>**Expression**: last(/Stulz Climate/stulz.status.[{#SNMPINDEX}])<>0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature 1 is too high (>{$MAX_SUP_TEMP})|<p>-</p>|<p>**Expression**: min(/Stulz Climate/supply.temperature.1.[{#SNMPINDEX}],5m)>20</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature 1 is too low (<{$MIN_SUP_TEMP})|<p>-</p>|<p>**Expression**: max(/Stulz Climate/supply.temperature.1.[{#SNMPINDEX}],5m)<5</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature 2 is too high (>{$MAX_SUP_TEMP})|<p>-</p>|<p>**Expression**: min(/Stulz Climate/supply.temperature.2.[{#SNMPINDEX}],5m)>20</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature 2 is too low (<{$MIN_SUP_TEMP})|<p>-</p>|<p>**Expression**: max(/Stulz Climate/supply.temperature.2.[{#SNMPINDEX}],5m)<5</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature 3 is too high (>{$MAX_SUP_TEMP})|<p>-</p>|<p>**Expression**: min(/Stulz Climate/supply.temperature.3.[{#SNMPINDEX}],5m)>20</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature 3 is too low (<{$MIN_SUP_TEMP})|<p>-</p>|<p>**Expression**: max(/Stulz Climate/supply.temperature.3.[{#SNMPINDEX}],5m)<5</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature is too high (>{$MAX_SUP_TEMP})|<p>-</p>|<p>**Expression**: min(/Stulz Climate/supply.temperature.[{#SNMPINDEX}],5m)>20</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature is too low (<{$MIN_SUP_TEMP})|<p>-</p>|<p>**Expression**: max(/Stulz Climate/supply.temperature.[{#SNMPINDEX}],5m)<5</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Compressor Stopped (LLD)|<p>-</p>|<p>**Expression**: max(/Stulz Climate/compressor.status.[{#SNMPINDEX}],5m)<1</p><p>**Recovery expression**: </p>|information|
|{HOST.NAME}: {#MODULE_NAME}: Cooling set point has been changed to {ITEM.VALUE} (LLD)|<p>-</p>|<p>**Expression**: (last(/Stulz Climate/cooling.setpoint.[{#SNMPINDEX}],#1)<>last(/Stulz Climate/cooling.setpoint.[{#SNMPINDEX}],#2))=1</p><p>**Recovery expression**: </p>|information|
|{HOST.NAME}: {#MODULE_NAME}: Fans Stopped (LLD)|<p>-</p>|<p>**Expression**: max(/Stulz Climate/fans.status.[{#SNMPINDEX}],5m)<1</p><p>**Recovery expression**: </p>|information|
|{HOST.NAME}: {#MODULE_NAME}: Inverter NOT OK (LLD)|<p>-</p>|<p>**Expression**: last(/Stulz Climate/inberter.status.[{#SNMPINDEX}])<>0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature 1 is too low (<{$MIN_RET_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: max(/Stulz Climate/return.temperature.1.[{#SNMPINDEX}],5m)<15</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature 2 is too high (>{#MAX_RET_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: min(/Stulz Climate/return.temperature.2.[{#SNMPINDEX}],5m)>{#MAX_RET_TEMP}</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature 2 is too low (<{$MIN_RET_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: max(/Stulz Climate/return.temperature.2.[{#SNMPINDEX}],5m)<15</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature 3 is too high (>{#MAX_RET_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: min(/Stulz Climate/return.temperature.3.[{#SNMPINDEX}],5m)>{#MAX_RET_TEMP}</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature 3 is too low (<{$MIN_RET_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: max(/Stulz Climate/return.temperature.3.[{#SNMPINDEX}],5m)<15</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature is too high (>{#MAX_RET_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: min(/Stulz Climate/return.temperature.[{#SNMPINDEX}],5m)>{#MAX_RET_TEMP}</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature is too low (<{$MIN_RET_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: max(/Stulz Climate/return.temperature.[{#SNMPINDEX}],5m)<15</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Climate Control System NOT OK (LLD)|<p>-</p>|<p>**Expression**: last(/Stulz Climate/stulz.status.[{#SNMPINDEX}])<>0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature 1 is too high (>{$MAX_SUP_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: min(/Stulz Climate/supply.temperature.1.[{#SNMPINDEX}],5m)>20</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature 1 is too low (<{$MIN_SUP_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: max(/Stulz Climate/supply.temperature.1.[{#SNMPINDEX}],5m)<5</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature 2 is too high (>{$MAX_SUP_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: min(/Stulz Climate/supply.temperature.2.[{#SNMPINDEX}],5m)>20</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature 2 is too low (<{$MIN_SUP_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: max(/Stulz Climate/supply.temperature.2.[{#SNMPINDEX}],5m)<5</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature 3 is too high (>{$MAX_SUP_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: min(/Stulz Climate/supply.temperature.3.[{#SNMPINDEX}],5m)>20</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature 3 is too low (<{$MIN_SUP_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: max(/Stulz Climate/supply.temperature.3.[{#SNMPINDEX}],5m)<5</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature is too high (>{$MAX_SUP_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: min(/Stulz Climate/supply.temperature.[{#SNMPINDEX}],5m)>20</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature is too low (<{$MIN_SUP_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: max(/Stulz Climate/supply.temperature.[{#SNMPINDEX}],5m)<5</p><p>**Recovery expression**: </p>|high|
