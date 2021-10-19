# Emerson_Liebert

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
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|UPS Load Output|<p>Output Load Discovery</p>|`SNMP agent`|upsOutputPercentLoad<p>Update: 30s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|System Description|<p>-</p>|`SNMP agent`|sysDescr<p>Update: 1m</p>|
|Battery Voltage|<p>-</p>|`SNMP agent`|upsBatteryVoltage<p>Update: 30s</p>|
|Ups Auto Restart|<p>-</p>|`SNMP agent`|upsAutoRestart<p>Update: 30s</p>|
|Ups Output Voltage|<p>-</p>|`SNMP agent`|upsConfigOutputVoltage<p>Update: 30s</p>|
|System Network Card Model|<p>-</p>|`SNMP agent`|lgpAgentIdenModel<p>Update: 1m</p>|
|System Name|<p>-</p>|`SNMP agent`|sysName<p>Update: 1m</p>|
|Ups Input Voltage|<p>-</p>|`SNMP agent`|upsConfigInputVoltage<p>Update: 30s</p>|
|System Manufacturer|<p>-</p>|`SNMP agent`|lgpAgentIdenManufacturer<p>Update: 1m</p>|
|Battery Status|<p>-</p>|`SNMP agent`|upsBatteryStatus<p>Update: 30s</p>|
|System Uptime|<p>-</p>|`SNMP agent`|sysUpTime<p>Update: 1m</p>|
|System Serial Number|<p>-</p>|`SNMP agent`|lgpAgentIdenSerialNumber<p>Update: 1m</p>|
|Output Source|<p>-</p>|`SNMP agent`|upsOutputSource<p>Update: 30s</p>|
|System Firmware Version|<p>-</p>|`SNMP agent`|lgpAgentIdenFirmwareVersion<p>Update: 1m</p>|
|System Model|<p>-</p>|`SNMP agent`|upsIdenModel<p>Update: 1m</p>|
|Battery Charge Remaining|<p>-</p>|`SNMP agent`|upsEstimatedChargeRemaining<p>Update: 1m</p>|
|System Location|<p>-</p>|`SNMP agent`|sysLocation<p>Update: 1m</p>|
|System Contact|<p>-</p>|`SNMP agent`|sysContact<p>Update: 1m</p>|
|Battery Time Remaining|<p>-</p>|`SNMP agent`|upsEstimatedMinutesRemaining<p>Update: 1m</p>|
|Output Load at Line {#SNMPINDEX}|<p>Discovered Output Load Percentual</p>|`SNMP agent`|ups.Output.Percentload.[{#SNMPINDEX}]<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Auto Restart is disabled on {HOST.NAME}|<p>-</p>|information|
|UPS Battery is not optimal|<p>-</p>|average|
|UPS Output is not normal|<p>Warn if voltage output is not optimal (3 -Normal)</p>|average|
|{HOST.NAME} Battery has las than 10 Minutes Remaining|<p>-</p>|high|
|{HOST.NAME} Battery has less than 20% charge|<p>-</p>|high|
