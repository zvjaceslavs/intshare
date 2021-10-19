# Template SNMP Minuteman UPS

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
|Runtime Remaining|<p>-</p>|`SNMP agent`|upsRuntimeRemaining<p>Update: 30s</p>|
|Ident|<p>-</p>|`SNMP agent`|upsBasicIdentName<p>Update: 86400</p>|
|Input Voltage|<p>-</p>|`SNMP agent`|upsInputVoltage<p>Update: 30</p>|
|Battery Temperature|<p>-</p>|`SNMP agent`|upsAdvBatteryTemperature<p>Update: 30</p>|
|Battery Test Results|<p>-</p>|`SNMP agent`|upsAdvReplaceBatteryIndicator<p>Update: 600</p>|
|Battery Charge|<p>-</p>|`SNMP agent`|upsBatteryCharge<p>Update: 30</p>|
|Output Load (%)|<p>-</p>|`SNMP agent`|upsAdvOutputLoad<p>Update: 30</p>|
|Battery Output Status|<p>-</p>|`SNMP agent`|upsBasicOutputStatus<p>Update: 60</p>|
|Battery Status|<p>-</p>|`SNMP agent`|upsBasicBatteryStatus<p>Update: 30</p>|
|Model Ident|<p>-</p>|`SNMP agent`|upsBasicIdentModel<p>Update: 86400</p>|
|Time On Battery|<p>-</p>|`SNMP agent`|upsBasicBatteryTimeOnBattery<p>Update: 30</p>|
|Input Freq|<p>Input frequency at CPS</p>|`SNMP agent`|upsInputFreq<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Abnormal Power Status, current state - {ITEM.LASTVALUE1}|<p>-</p>|information|
|Battery Charge < 25%: {ITEM.LASTVALUE1}|<p>-</p>|high|
|Battery Charge < 50 %: {ITEM.LASTVALUE1}|<p>-</p>|disaster|
|Battery Charge < 75%: {ITEM.LASTVALUE1}|<p>-</p>|warning|
|Battery Status Depleted|<p>-</p>|high|
|Battery Status Low|<p>-</p>|average|
|Battery Status Not Normal|<p>-</p>|high|
|Battery Temp High|<p>-</p>|average|
|Battery Test In Progress|<p>-</p>|information|
|Input Voltage High|<p>-</p>|warning|
|Input Voltage Low|<p>-</p>|warning|
|On Battery, current state - {ITEM.LASTVALUE1}|<p>-</p>|high|
|Output Load  High|<p>-</p>|average|
|Output Load Too High|<p>-</p>|high|
|Power Input Frequency out of range|<p>-</p>|warning|
|Replace Battery|<p>-</p>|high|
|Runtime less than 1 Minutes|<p>-</p>|disaster|
|Runtime less than 5 Minutes|<p>-</p>|high|
|Runtime less than 10 Minutes|<p>-</p>|warning|
