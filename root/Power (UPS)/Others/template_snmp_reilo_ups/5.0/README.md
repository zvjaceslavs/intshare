# Template SNMP Reillo UPS

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$NOMINAL_FREQUENCY}|<p>-</p>|`50`|Text macro|
|{$NOMINAL_VOLTAGE}|<p>-</p>|`230`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Output lines|<p>-</p>|`SNMP agent`|upsOutputLineIndex<p>Update: 15s</p>|
|Input Lines|<p>-</p>|`SNMP agent`|upsInputLineIndex<p>Update: 15s</p>|
|Bypass lines|<p>-</p>|`SNMP agent`|upsBypassNumLines<p>Update: 15s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Alarms Present|<p>-</p>|`SNMP agent`|upsAlarmsPresent<p>Update: 60s</p>|
|Estimated Charge Remaining|<p>-</p>|`SNMP agent`|upsEstimatedChargeRemaining<p>Update: 60s</p>|
|Output source|<p>-</p>|`SNMP agent`|upsOutputSource<p>Update: 60s</p>|
|Battery Temperature|<p>-</p>|`SNMP agent`|upsBatteryTemperature<p>Update: 60s</p>|
|Battery Current|<p>-</p>|`SNMP agent`|upsBatteryCurrent<p>Update: 60s</p>|
|Seconds on Battery|<p>-</p>|`SNMP agent`|upsSecondsOnBattery<p>Update: 60s</p>|
|Ups Agent Version|<p>-</p>|`SNMP agent`|upsIdentAgentSoftwareVersion<p>Update: 86400</p>|
|Agent availability|<p>The agent always returns 1 for this item. It could be used in combination with nodata() for availability check.</p>|`Zabbix internal`|zabbix[host,snmp,available]<p>Update: 30s</p>|
|Software version|<p>-</p>|`SNMP agent`|upsIdentUPSSoftwareVersion<p>Update: 86400</p>|
|Model name|<p>-</p>|`SNMP agent`|upsIdentModel<p>Update: 86400</p>|
|Bypass frequency|<p>-</p>|`SNMP agent`|upsBypassFrequency<p>Update: 60s</p>|
|Battery Voltage|<p>-</p>|`SNMP agent`|upsBatteryVoltage<p>Update: 60s</p>|
|Input Line Bads|<p>-</p>|`SNMP agent`|upsInputLineBads<p>Update: 60s</p>|
|Battery Status|<p>-</p>|`SNMP agent`|upsBatteryStatus<p>Update: 60s</p>|
|Output frequency|<p>-</p>|`SNMP agent`|upsOutputFrequency<p>Update: 60s</p>|
|Estimated Minutes Remaining|<p>-</p>|`SNMP agent`|upsEstimatedMinutesRemaining<p>Update: 60s</p>|
|Line {#SNMPVALUE} Output Current|<p>-</p>|`SNMP agent`|upsOutputCurrent[{#SNMPVALUE}]<p>Update: 60s</p>|
|Line {#SNMPVALUE} Load|<p>-</p>|`SNMP agent`|upsOutputPercentLoad[{#SNMPVALUE}]<p>Update: 60s</p>|
|Line {#SNMPVALUE} Output Power|<p>-</p>|`SNMP agent`|upsOutputPower[{#SNMPVALUE}]<p>Update: 60s</p>|
|Line {#SNMPVALUE} Output Voltage|<p>-</p>|`SNMP agent`|upsOutputVoltage[{#SNMPVALUE}]<p>Update: 60s</p>|
|Line {#SNMPVALUE} Input Current|<p>-</p>|`SNMP agent`|upsInputCurrent[{#SNMPVALUE}]<p>Update: 60s</p>|
|Line {#SNMPVALUE} Input Frequency|<p>-</p>|`SNMP agent`|upsInputFrequency[{#SNMPVALUE}]<p>Update: 60s</p>|
|Line {#SNMPVALUE} True Power|<p>-</p>|`SNMP agent`|upsInputTruePower[{#SNMPVALUE}]<p>Update: 60s</p>|
|Line {#SNMPVALUE} Input Voltage|<p>-</p>|`SNMP agent`|upsInputVoltage[{#SNMPVALUE}]<p>Update: 60s</p>|
|Line {#SNMPVALUE} Bypass Current|<p>-</p>|`SNMP agent`|upsBypassCurrent[{#SNMPVALUE}]<p>Update: 60s</p>|
|Line {#SNMPVALUE} Bypass Power|<p>-</p>|`SNMP agent`|upsBypassPower[{#SNMPVALUE}]<p>Update: 60s</p>|
|Line {#SNMPVALUE} Bypass Voltage|<p>-</p>|`SNMP agent`|upsBypassVoltage[{#SNMPVALUE}]<p>Update: 60s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Alarm present!|<p>-</p>|high|
|Batteries are charging|<p>-</p>|information|
|Batteries are discharging|<p>-</p>|warning|
|Battery status has changed!|<p>-</p>|average|
|Battery voltage under {$NOMINAL_VOLTAGE}|<p>-</p>|high|
|Bypass frecuency is not {$NOMINAL_FREQUENCY}|<p>-</p>|high|
|Estimated battery minutes remaining < 5|<p>-</p>|average|
|Input Line Bads detected|<p>-</p>|warning|
|Output frecuency is not {$NOMINAL_FREQUENCY}|<p>-</p>|high|
|Output source has changed!|<p>-</p>|average|
|Temperature of batteries above 22ºC|<p>-</p>|warning|
|Temperature of batteries above 25ºC|<p>All batteries have a rated capacity which is determined based on specified conditions. The rated capacity of a UPS battery is based on an ambient temperature of 25°C (77°F). Operating the UPS under these conditions will maximize the life of the UPS and result in optimal performance. While a UPS will continue to operate in varying temperatures, it is important to note that this will likely result in diminishing the performance and lifespan of your battery. A general rule to remember is that for every 8.3°C (15°F) above the ambient temperature of 25°C (77°F), the life of the battery will be reduced by 50 percent. Therefore, keeping a UPS at a comfortable temperature is crucial to maximizing UPS life and capabilities.</p>|high|
|Temperature of batteries below 19ºC|<p>Under 19º battery capacity will get reduced although life will be extended</p>|average|
|Load of output line {#SNMPVALUE} is over 80%|<p>-</p>|warning|
|Load of output line {#SNMPVALUE} is over 90%|<p>-</p>|average|
|Load of output line {#SNMPVALUE} is over 95%|<p>-</p>|high|
|Output line {#SNMPVALUE} voltage below {$NOMINAL_VOLTAGE}|<p>-</p>|high|
|Input line {#SNMPVALUE} frequency not {$NOMINAL_FREQUENCY}|<p>-</p>|high|
|Input line {#SNMPVALUE} voltage below {$NOMINAL_VOLTAGE}|<p>-</p>|high|
|Bypass voltage on line {#SNMPVALUE} below {$NOMINAL_VOLTAGE}|<p>-</p>|high|
