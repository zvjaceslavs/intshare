# 1wire Temperature Probe

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$GROUP}|<p>Default Group</p>|`0`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|1wire devices|<p>-</p>|`Zabbix agent`|system.run[find /sys/bus/w1/devices/28* -maxdepth 1 -type l -printf '%f\n' 2> /dev/null]<p>Update: 15m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Temperature reading of probe "{#DEVICE}" ({$PROBE:"{#DEVICE}"})|<p>-</p>|`Zabbix agent`|system.run[cat /sys/bus/w1/devices/{#DEVICE}/w1_slave | tail -n +2  | cut -d= -f2-]<p>Update: 15s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|No data received (>3m) from probe "{$PROBE:"{#DEVICE}"}"|<p>-</p>|not classified|
|Temperature critically high on probe "{$PROBE:"{#DEVICE}"}"|<p>-</p>|average|
|Temperature critically low on probe "{$PROBE:"{#DEVICE}"}"|<p>-</p>|average|
|Temperature disastrously high on probe "{$PROBE:"{#DEVICE}"}"|<p>-</p>|disaster|
|Temperature disastrously low on probe "{$PROBE:"{#DEVICE}"}"|<p>-</p>|disaster|
|Temperature high on probe "{$PROBE:"{#DEVICE}"}"|<p>-</p>|warning|
|Temperature low on probe "{$PROBE:"{#DEVICE}"}"|<p>-</p>|warning|
