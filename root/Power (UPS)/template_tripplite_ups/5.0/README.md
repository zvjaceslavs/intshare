# Template SNMP Tripplite

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
|upsIdentModel|<p>-</p>|`SNMP agent`|upsIdentModel<p>Update: 86400</p>|
|upsInputVoltage.1|<p>-</p>|`SNMP agent`|upsInputVoltage.1<p>Update: 30</p>|
|upsBypassCurrent.1|<p>-</p>|`SNMP agent`|upsBypassCurrent.1<p>Update: 30</p>|
|upsAlarmsPresent|<p>-</p>|`SNMP agent`|upsAlarmsPresent<p>Update: 30</p>|
|upsOutputPercentLoad.1|<p>-</p>|`SNMP agent`|upsOutputPercentLoad.1<p>Update: 30</p>|
|upsOutputSource|<p>-</p>|`SNMP agent`|upsOutputSource<p>Update: 30</p>|
|upsSecondsOnBattery|<p>-</p>|`SNMP agent`|upsSecondsOnBattery<p>Update: 30</p>|
|upsInputFrequency.1|<p>-</p>|`SNMP agent`|upsInputFrequency.1<p>Update: 30</p>|
|upsEstimatedMinutesRemaining|<p>-</p>|`SNMP agent`|upsEstimatedMinutesRemaining<p>Update: 30</p>|
|upsBatteryStatus|<p>-</p>|`SNMP agent`|upsBatteryStatus<p>Update: 30</p>|
|upsOutputVoltage.1|<p>-</p>|`SNMP agent`|upsOutputVoltage.1<p>Update: 30</p>|
|upsEstimatedChargeRemaining|<p>-</p>|`SNMP agent`|upsEstimatedChargeRemaining<p>Update: 60</p>|
|upsIdentUPSSoftwareVersion|<p>-</p>|`SNMP agent`|upsIdentUPSSoftwareVersion<p>Update: 600</p>|
|upsBatteryTemperature|<p>-</p>|`SNMP agent`|upsBatteryTemperature<p>Update: 60</p>|
|upsBypassFrequency|<p>-</p>|`SNMP agent`|upsBypassFrequency<p>Update: 30</p>|
|upsOutputFrequency|<p>-</p>|`SNMP agent`|upsOutputFrequency<p>Update: 30</p>|
|upsOutputCurrent.1|<p>-</p>|`SNMP agent`|upsOutputCurrent.1<p>Update: 30</p>|
|upsIdentAgentSoftwareVersion|<p>-</p>|`SNMP agent`|upsIdentAgentSoftwareVersion<p>Update: 600</p>|
|upsOutputPower.1|<p>-</p>|`SNMP agent`|upsOutputPower.1<p>Update: 30</p>|
|upsBatteryVoltage|<p>-</p>|`SNMP agent`|upsBatteryVoltage<p>Update: 60</p>|
|upsInputLineBads|<p>-</p>|`SNMP agent`|upsInputLineBads<p>Update: 30</p>|
|upsBypassPower.1|<p>-</p>|`SNMP agent`|upsBypassPower.1<p>Update: 30</p>|
|upsBypassVoltage.1|<p>-</p>|`SNMP agent`|upsBypassVoltage.1<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Battery Charge Depleated|<p>-</p>|high|
|Battery Charge Less Than 80%|<p>-</p>|warning|
|Battery Status Not Normal|<p>-</p>|high|
|Battery Temperature Over Nominal|<p>-</p>|high|
|Battery Time Remaining Below 10 Minutes|<p>-</p>|warning|
|UPS Alarm Present|<p>-</p>|warning|
|UPS Bypassed|<p>-</p>|warning|
|UPS Input Power Line Bad|<p>-</p>|disaster|
|UPS Load Changed|<p>-</p>|information|
|UPS Low Load|<p>-</p>|warning|
|UPS Output Source Not Normal|<p>-</p>|high|
|UPS Overloaded|<p>-</p>|high|
|UPS Power Voltage Outside Nominal|<p>-</p>|high|
|UPS Running On Battery|<p>-</p>|high|
