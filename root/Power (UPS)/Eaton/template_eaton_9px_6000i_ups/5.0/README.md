# EATON Mistral

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
|UPS-Location|<p>-</p>|`SNMP agent`|SNMP-UPS-Location<p>Update: 30</p>|
|UPS-Name|<p>-</p>|`SNMP agent`|SNMP-UPS-Name<p>Update: 30</p>|
|UPS-TemperatureLevel|<p>-</p>|`SNMP agent`|UPS-TemperatureLevel<p>Update: 30</p>|
|UPS-Temperature-High|<p>-</p>|`SNMP agent`|UPS-Temperature-High<p>Update: 30</p>|
|UPS-ACNormal-Voltage|<p>-</p>|`SNMP agent`|UPS-ACNormal-Voltage<p>Update: 30</p>|
|UPS-Humidity|<p>-</p>|`SNMP agent`|UPS-Humidity<p>Update: 30</p>|
|UPS-BatteryChargeStatus|<p>-</p>|`SNMP agent`|UPS-BatteryChargeStatus<p>Update: 30</p>|
|UPS-OutputPowerSource|<p>-</p>|`SNMP agent`|UPS-OutputPowerSource<p>Update: 30</p>|
|UPS-Humidity-Low|<p>-</p>|`SNMP agent`|UPS-Humidity-Low<p>Update: 30</p>|
|UPS-ConfigOutputVoltage|<p>-</p>|`SNMP agent`|UPS-ConfigOutputVoltage<p>Update: 30</p>|
|UPS-Temperature-Low|<p>-</p>|`SNMP agent`|UPS-Temperature-Low<p>Update: 30</p>|
|UPS-Manufacturer|<p>-</p>|`SNMP agent`|UPS-Manufacturer<p>Update: 30</p>|
|UPS-BatteryFaultBattery|<p>-</p>|`SNMP agent`|UPS-BatteryFaultBattery<p>Update: 30</p>|
|UPS-BatteryMinutesRemaining|<p>-</p>|`SNMP agent`|UPS-BatteryMinutesRemaining<p>Update: 30</p>|
|UPS-Humidity-High|<p>-</p>|`SNMP agent`|UPS-Humidity-High<p>Update: 30</p>|
|UPS-BatteryChargerFault|<p>-</p>|`SNMP agent`|UPS-BatteryChargerFault<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Humidity is to High on {HOST.NAME}|<p>Humidity is to High in Server room</p>|high|
|Humidity is to Low on {HOST.NAME}|<p>Humidity is to Low in server room</p>|average|
|LESS than 20 minutest battery remaining on {HOST.NAME}|<p>-</p>|disaster|
|LESS than 65 minutest battery remaining on {HOST.NAME}|<p>-</p>|information|
|NO ELECTRICITY on {HOST.NAME}|<p>-</p>|disaster|
|SERVER room is powered by UPS Battery on {HOST.NAME}|<p>-</p>|disaster|
|Temperature is above 28C on {HOST.NAME}|<p>-</p>|high|
|Temperature is below 15C on {HOST.NAME}|<p>-</p>|high|
|Temperature is to High|<p>Temperature is to High in server room</p>|high|
|Temperature is to Low|<p>Temperature is to Low in server room</p>|average|
|UPS Battery Charger Fault on {HOST.NAME}|<p>-</p>|high|
|UPS Battery Fault on {HOST.NAME}|<p>-</p>|high|
