# Template SNMP ReadyNAS

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$FAN_MINIMUM_RPM}|<p>-</p>|`800`|Text macro|
|{$TEMPERATURE_LIMIT}|<p>-</p>|`85`|Text macro|
|{$TEMPERATURE_MAXIMUM}|<p>-</p>|`60`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|volumeSize|<p>-</p>|`SNMP agent`|volumeSize<p>Update: 60</p>|
|diskState.6|<p>-</p>|`SNMP agent`|diskState.6<p>Update: 30</p>|
|diskState.2|<p>-</p>|`SNMP agent`|diskState.2<p>Update: 30</p>|
|diskState.5|<p>-</p>|`SNMP agent`|diskState.5<p>Update: 30</p>|
|diskTemperature.4|<p>-</p>|`SNMP agent`|diskTemperature.4<p>Update: 60</p>|
|diskTemperature.6|<p>-</p>|`SNMP agent`|diskTemperature.6<p>Update: 60</p>|
|diskState.3|<p>-</p>|`SNMP agent`|diskState.3<p>Update: 30</p>|
|fanStatus|<p>-</p>|`SNMP agent`|fanStatus<p>Update: 60</p>|
|diskTemperature.5|<p>-</p>|`SNMP agent`|diskTemperature.5<p>Update: 60</p>|
|diskTemperature.1|<p>-</p>|`SNMP agent`|diskTemperature.1<p>Update: 60</p>|
|diskTemperature.3|<p>-</p>|`SNMP agent`|diskTemperature.3<p>Update: 60</p>|
|volumeFreeSpace|<p>-</p>|`SNMP agent`|volumeFreeSpace<p>Update: 60</p>|
|volumeStatus|<p>-</p>|`SNMP agent`|volumeStatus<p>Update: 30</p>|
|diskState.1|<p>-</p>|`SNMP agent`|diskState.1<p>Update: 30</p>|
|diskState.4|<p>-</p>|`SNMP agent`|diskState.4<p>Update: 30</p>|
|diskTemperature.2|<p>-</p>|`SNMP agent`|diskTemperature.2<p>Update: 60</p>|
|fanRPM|<p>-</p>|`SNMP agent`|fanRPM<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|ReadyNAS: Disk 1 has FAILED on {HOST.NAME}|<p>-</p>|high|
|ReadyNAS: Disk 1 is >{$TEMPERATURE_LIMIT}°C on {HOST.NAME}|<p>-</p>|average|
|ReadyNAS: Disk 1 is >{$TEMPERATURE_MAXIMUM}°C on {HOST.NAME}|<p>-</p>|warning|
|ReadyNAS: Disk 2 has FAILED on {HOST.NAME}|<p>-</p>|high|
|ReadyNAS: Disk 2 is >{$TEMPERATURE_LIMIT}°C on {HOST.NAME}|<p>-</p>|average|
|ReadyNAS: Disk 2 is >{$TEMPERATURE_MAXIMUM}°C on {HOST.NAME}|<p>-</p>|warning|
|ReadyNAS: Disk 3 has FAILED on {HOST.NAME}|<p>-</p>|high|
|ReadyNAS: Disk 3 is >{$TEMPERATURE_LIMIT}°C on {HOST.NAME}|<p>-</p>|average|
|ReadyNAS: Disk 3 is >{$TEMPERATURE_MAXIMUM}°C on {HOST.NAME}|<p>-</p>|warning|
|ReadyNAS: Disk 4 has FAILED on {HOST.NAME}|<p>-</p>|high|
|ReadyNAS: Disk 4 is >{$TEMPERATURE_LIMIT}°C on {HOST.NAME}|<p>-</p>|average|
|ReadyNAS: Disk 4 is >{$TEMPERATURE_MAXIMUM}°C on {HOST.NAME}|<p>-</p>|warning|
|ReadyNAS: Disk 5 has FAILED on {HOST.NAME}|<p>-</p>|high|
|ReadyNAS: Disk 5 is >{$TEMPERATURE_LIMIT}°C on {HOST.NAME}|<p>-</p>|average|
|ReadyNAS: Disk 5 is >{$TEMPERATURE_MAXIMUM}°C on {HOST.NAME}|<p>-</p>|warning|
|ReadyNAS: Disk 6 has FAILED on {HOST.NAME}|<p>-</p>|high|
|ReadyNAS: Disk 6 is >{$TEMPERATURE_LIMIT}°C on {HOST.NAME}|<p>-</p>|average|
|ReadyNAS: Disk 6 is >{$TEMPERATURE_MAXIMUM}°C on {HOST.NAME}|<p>-</p>|warning|
|ReadyNAS: Fan is not OK on {HOST.NAME}|<p>-</p>|warning|
|ReadyNAS: Fan is too slow (<{$FAN_MINIMUM_RPM}RPM) on {HOST.NAME}|<p>-</p>|warning|
|ReadyNAS: FreeSpace is less than 10% on {HOST.NAME}|<p>Trigger is only 10% is free.</p>|information|
|ReadyNAS: Volume is DEAD on {HOST.NAME}|<p>-</p>|disaster|
|ReadyNAS: Volume is DEGRADED on {HOST.NAME}|<p>Trigger is volume status is "DEGRADED".</p>|average|
|ReadyNAS: Volume is INACTIVE on {HOST.NAME}|<p>-</p>|information|
|ReadyNAS: Volume is REDUNDANT on {HOST.NAME}|<p>-</p>|warning|
|ReadyNAS: Volume is UNKNOWN on {HOST.NAME}|<p>-</p>|warning|
|ReadyNAS: Volume is UNPROTECTED on {HOST.NAME}|<p>-</p>|warning|
