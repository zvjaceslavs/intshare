# HWg-STE

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SENSORID}|<p>-</p>|`>=1`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Temperature probe|<p>-</p>|`SNMP agent`|.3.1.4.1<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Critical temperature (> 33°C)|<p>-</p>|disaster|
|Temperature too high (> 29°C)|<p>-</p>|high|
|Temperature tolerance reached (> 23°C)|<p>-</p>|information|
|Temperature tolerance exceeded (> 25°C)|<p>-</p>|warning|
