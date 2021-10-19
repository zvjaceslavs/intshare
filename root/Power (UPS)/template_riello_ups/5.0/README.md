# Template SNMP Riello UPS

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$NOMINAL_FREQUENCY}|<p>-</p>|`60`|Text macro|
|{$NOMINAL_VOLTAGE}|<p>-</p>|`230`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Input Lines|<p>-</p>|`SNMP agent`|InputLinesD<p>Update: 30s</p>|
|Bypass Lines|<p>-</p>|`SNMP agent`|BypassLinesD<p>Update: 30s</p>|
|Output Lines|<p>-</p>|`SNMP agent`|OutputLinesD<p>Update: 30s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Battery Current|<p>-</p>|`SNMP agent`|rupsBatteryCurrent.0<p>Update: 60s</p>|
|Output frequency|<p>-</p>|`SNMP agent`|rupsOutputFrequency.0<p>Update: 60s</p>|
|Output source|<p>-</p>|`SNMP agent`|rupsOutputSource.0<p>Update: 60s</p>|
|Agent availability|<p>The agent always returns 1 for this item. It could be used in combination with nodata() for availability check.</p>|`Zabbix internal`|zabbix[host,snmp,available]<p>Update: 30s</p>|
|Battery Status|<p>-</p>|`SNMP agent`|rupsBatteryStatus.0<p>Update: 60s</p>|
|Bypass frequency|<p>-</p>|`SNMP agent`|rupsBypassFrequency.0<p>Update: 60s</p>|
|Model name|<p>-</p>|`SNMP agent`|rupsIdentModel.0<p>Update: 1d</p>|
|Estimated Minutes Remaining|<p>-</p>|`SNMP agent`|rupsEstimatedMinutesRemaining.0<p>Update: 60s</p>|
|Ups Agent Version|<p>-</p>|`SNMP agent`|rupsIdentAgentSoftwareVersion.0<p>Update: 1d</p>|
|Software version|<p>-</p>|`SNMP agent`|rupsIdentUPSSoftwareVersion.0<p>Update: 1d</p>|
|Battery Temperature|<p>-</p>|`SNMP agent`|rupsBatteryTemperature.0<p>Update: 60s</p>|
|Alarms Present|<p>-</p>|`SNMP agent`|upsAlarmsPresent.0<p>Update: 60s</p>|
|Battery Voltage|<p>-</p>|`SNMP agent`|rupsBatteryVoltage.0<p>Update: 60s</p>|
|System Temperature|<p>-</p>|`SNMP agent`|rupsSystemTemperature.0<p>Update: 30s</p>|
|Estimated Charge Remaining|<p>-</p>|`SNMP agent`|rupsEstimatedChargeRemaining.0<p>Update: 60s</p>|
|Seconds on Battery|<p>-</p>|`SNMP agent`|rupsSecondsOnBattery.0<p>Update: 60s</p>|
|Input Line Bads|<p>-</p>|`SNMP agent`|rupsInputLineBads.0<p>Update: 60s</p>|
|Line {#SNMPINDEX} Input Current|<p>-</p>|`SNMP agent`|rupsInputCurrent.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Line {#SNMPINDEX} Input Frequency|<p>-</p>|`SNMP agent`|rupsInputFrequency.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Line {#SNMPINDEX} Input  True Power|<p>-</p>|`SNMP agent`|rupsInputTruePower.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Line {#SNMPINDEX} Input  Voltage|<p>-</p>|`SNMP agent`|rupsInputVolage.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Line {#SNMPINDEX} Bypass Current|<p>-</p>|`SNMP agent`|rupsBypassCurrent[{#SNMPINDEX}]<p>Update: 30s</p>|
|Line {#SNMPINDEX} Bypass Power|<p>-</p>|`SNMP agent`|rupsBypassPower[{#SNMPINDEX}]<p>Update: 30s</p>|
|Line {#SNMPINDEX} Bypass Voltage|<p>-</p>|`SNMP agent`|rupsBypassVoltage[{#SNMPINDEX}]<p>Update: 30s</p>|
|Line {#SNMPINDEX} Output Current|<p>-</p>|`SNMP agent`|rupsOutputCurrent.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Line {#SNMPINDEX} Output Peak Current|<p>-</p>|`SNMP agent`|rupsOutputPeakCurrent.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Line {#SNMPINDEX} Output % Load|<p>-</p>|`SNMP agent`|rupsOutputPercetLoad.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Line {#SNMPINDEX} Output Power|<p>-</p>|`SNMP agent`|rupsOutputPower.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Line {#SNMPINDEX} Output Voltage|<p>-</p>|`SNMP agent`|rupsOutputVoltage.[{#SNMPINDEX}]<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Temperature of batteries above 45ºC|<p>-</p>|warning|
|Temperature of batteries above 55ºC|<p>All batteries have a rated capacity which is determined based on specified conditions. The rated capacity of a UPS battery is based on an ambient temperature of 25°C (77°F). Operating the UPS under these conditions will maximize the life of the UPS and result in optimal performance. While a UPS will continue to operate in varying temperatures, it is important to note that this will likely result in diminishing the performance and lifespan of your battery. A general rule to remember is that for every 8.3°C (15°F) above the ambient temperature of 25°C (77°F), the life of the battery will be reduced by 50 percent. Therefore, keeping a UPS at a comfortable temperature is crucial to maximizing UPS life and capabilities.</p>|high|
|Temperature of batteries below 15ºC|<p>Under 19º battery capacity will get reduced although life will be extended</p>|average|
|Battery voltage under {$NOMINAL_VOLTAGE}|<p>-</p>|high|
|Bypass frecuency is not {$NOMINAL_FREQUENCY}|<p>-</p>|high|
|Batteries are charging|<p>-</p>|information|
|Batteries are discharging|<p>-</p>|warning|
|Estimated battery minutes remaining < 5|<p>-</p>|average|
|Input Line Bads detected|<p>-</p>|warning|
|Output frecuency is not {$NOMINAL_FREQUENCY}|<p>-</p>|high|
|Output source has changed!|<p>-</p>|average|
|Alarm present!|<p>-</p>|high|
|Bypass voltage on line {#SNMPINDEX} below {$NOMINAL_VOLTAGE}|<p>-</p>|high|
