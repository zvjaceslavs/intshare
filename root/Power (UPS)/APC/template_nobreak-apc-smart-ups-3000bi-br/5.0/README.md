# Nobreak-APC-SMART-UPS-3000BI-BR

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMMUNITY}|<p>-</p>|`public`|Text macro|
|{$SNMP_PORT}|<p>-</p>|`161`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|upsBatteryCurrent|<p>-</p>|`SNMP agent`|upsBatteryCurrent<p>Update: 10s</p>|
|upsBatteryVoltage|<p>-</p>|`SNMP agent`|upsBatteryVoltage<p>Update: 10s</p>|
|upsEstimatedMinutesRemaining|<p>-</p>|`SNMP agent`|upsEstimatedMinutesRemaining<p>Update: 10s</p>|
|Real Data at BatteryCurrent|<p>-</p>|`Calculated`|RealDataBatteryCurrent<p>Update: 10s</p>|
|upsOutputPower|<p>-</p>|`SNMP agent`|upsOutputPower<p>Update: 10s</p>|
|Real Data at InputCurrent|<p>-</p>|`Calculated`|RealDataInputCurrent<p>Update: 10s</p>|
|upsConfigInputVoltage|<p>-</p>|`SNMP agent`|upsConfigInputVoltage<p>Update: 30s</p>|
|upsInputVoltage|<p>-</p>|`SNMP agent`|upsInputVoltage<p>Update: 10s</p>|
|Real Data at OutputFrequency|<p>-</p>|`Calculated`|RealDataOutputFrequency<p>Update: 10s</p>|
|upsInputFrequency|<p>-</p>|`SNMP agent`|upsInputFrequency<p>Update: 10s</p>|
|upsBatteryTemperature|<p>-</p>|`SNMP agent`|upsBatteryTemperature<p>Update: 10s</p>|
|upsOutputCurrent|<p>-</p>|`SNMP agent`|upsOutputCurrent<p>Update: 10s</p>|
|Real Data at BatteryVoltage|<p>-</p>|`Calculated`|RealDataBatteryVoltage<p>Update: 10s</p>|
|Battery Status|<p>-</p>|`SNMP agent`|upsBatteryStatus<p>Update: 60s</p>|
|Real Data at InputFrequency|<p>-</p>|`Calculated`|RealDataInputFrequency<p>Update: 10s</p>|
|upsInputLineBads|<p>-</p>|`SNMP agent`|upsInputLineBads<p>Update: 30s</p>|
|upsOutputFrequency|<p>-</p>|`SNMP agent`|upsOutputFrequency<p>Update: 10s</p>|
|upsOutputPercentLoad|<p>-</p>|`SNMP agent`|upsOutputPercentLoad<p>Update: 10s</p>|
|upsInputCurrent|<p>-</p>|`SNMP agent`|upsInputCurrent<p>Update: 10s</p>|
|upsOutputVoltage|<p>-</p>|`SNMP agent`|upsOutputVoltage<p>Update: 10s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Battery Depleted at {HOSTNAME}|<p>-</p>|high|
|High Battery Temperature at {HOSTNAME}|<p>-</p>|warning|
|High Voltage Input > 127 V at {HOSTNAME}|<p>For 110V input voltage</p>|high|
|High Voltage Input > 245 V at {HOSTNAME}|<p>For 220V input voltage</p>|high|
|Low Battery at {HOSTNAME}|<p>-</p>|high|
|Low Voltage Input < 100 V at {HOSTNAME}|<p>For 110V input voltage</p>|high|
|Low Voltage Input < 190 V at {HOSTNAME}|<p>For 220V input voltage</p>|high|
|Power Input Failure at {HOSTNAME}|<p>-</p>|disaster|
|Power Overload at {HOSTNAME}|<p>-</p>|high|
