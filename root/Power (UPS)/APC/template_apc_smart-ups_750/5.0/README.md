# Template APC Smart-UPS

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
|APC Time on Battery|<p>-</p>|`SNMP agent`|apc_battery.time<p>Update: 30s</p>|
|APC Output Current (Amperes)|<p>-</p>|`SNMP agent`|apc_output.amperes<p>Update: 30s</p>|
|APC Input Voltage|<p>-</p>|`SNMP agent`|apc_input.volt<p>Update: 30s</p>|
|APC Modell|<p>Modell der APC</p>|`SNMP agent`|apc_model<p>Update: 60s</p>|
|APC Battery Capacity|<p>-</p>|`SNMP agent`|apc_battery.capacity<p>Update: 30s</p>|
|APC Battery Replace Indicator|<p>-</p>|`SNMP agent`|apc_battery.replaceIndicator<p>Update: 30s</p>|
|APC Battery Status|<p>-</p>|`SNMP agent`|apc_battery.status<p>Update: 30s</p>|
|APC Output Frequency|<p>-</p>|`SNMP agent`|apc_output.frequency<p>Update: 30s</p>|
|APC Firmware Revision|<p>-</p>|`SNMP agent`|apc_firmware<p>Update: 60s</p>|
|APC Output Load|<p>-</p>|`SNMP agent`|apc_output.load<p>Update: 30s</p>|
|APC Output Status (basic)|<p>-</p>|`SNMP agent`|apc_output.status.basic<p>Update: 30s</p>|
|APC Input Phase|<p>-</p>|`SNMP agent`|apc_input.phase<p>Update: 30s</p>|
|APC Battery Voltage|<p>-</p>|`SNMP agent`|apc_battery.voltage<p>Update: 30s</p>|
|APC Output Voltage|<p>-</p>|`SNMP agent`|apc_output.volt<p>Update: 30s</p>|
|Test Last Diagnostics Results|<p>-</p>|`SNMP agent`|apc_diagnostics.testResults<p>Update: 30s</p>|
|APC Time on Battery remaining|<p>-</p>|`SNMP agent`|apc_battery.time.remaining<p>Update: 30s</p>|
|APC Input Frequency|<p>-</p>|`SNMP agent`|apc_input.frequency<p>Update: 30s</p>|
|APC Battery Temperature|<p>-</p>|`SNMP agent`|apc_battery.temperature<p>Update: 30s</p>|
|APC Output Phase|<p>-</p>|`SNMP agent`|apc_output.phase<p>Update: 30s</p>|
|APC Serial Number|<p>-</p>|`SNMP agent`|apc_serial<p>Update: 60s</p>|
|Test Last Diagnostics Date|<p>-</p>|`SNMP agent`|apc_diagnostics.testDate<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Battery should be replaced|<p>Please get a new Battery and replace it as soon as possible!</p>|average|
|Frequency is not 50 Hz|<p>-</p>|information|
|Input Fequency to high|<p>-</p>|average|
|Input Fequency to low|<p>-</p>|average|
|Load on this APC unit is to high|<p>The load on this unit is too high. Buy a stronger unit or decrease the number of devices on this UPC.</p>|warning|
|No Power Source|<p>The APC lost its power source.</p>|high|
|Remaining Time on Battery is lower than 5 Minutes|<p>-</p>|disaster|
|Test Failed|<p>The diagnostic Test failed.</p>|average|
|UPS Capacity lower than 10 Percent|<p>The Battery Capacity is lower than 10%. Check the Power source.</p>|disaster|
|UPS Capacity lower than 20 Percent|<p>The Battery Capacity is lower than 20%. Check the Power source.</p>|high|
|UPS Capacity lower than 30 Percent|<p>The Battery Capacity is lower than 30%. Check the Power source.</p>|average|
|UPS Capacity lower than 50 Percent|<p>The Battery Capacity is lower than 50%. Check the Power source.</p>|average|
|UPS Capacity lower than 70 Percent|<p>The Battery Capacity is lower than 70%. Check the Power source.</p>|warning|
|UPS Capacity lower than 90 Percent|<p>The Battery Capacity is lower than 90%. Run Diagnostics.</p>|information|
