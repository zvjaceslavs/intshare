# Unifi Switch 16 POE-150W Temperature

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
|Temperature 1|<p>Sensor TEMP-1</p>|`SNMP agent`|system.temperature.1<p>Update: 30s</p>|
|Temperature PoE 3|<p>Sensor PoE-03</p>|`SNMP agent`|system.temperature.poe3<p>Update: 30s</p>|
|Temperature PoE 4|<p>Sensor PoE-04</p>|`SNMP agent`|system.temperature.poe4<p>Update: 30s</p>|
|Temperature PoE 1|<p>Sensor PoE-01</p>|`SNMP agent`|system.temperature.poe1<p>Update: 30s</p>|
|Temperature 2|<p>Sensor TEMP-2</p>|`SNMP agent`|system.temperature.2<p>Update: 30s</p>|
|Temperature PoE 2|<p>Sensor PoE-02</p>|`SNMP agent`|system.temperature.poe2<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Temperatur 1 Information|<p>-</p>|information|
|Temperatur 1 Warning|<p>-</p>|warning|
|Temperatur 2 Information|<p>-</p>|information|
|Temperatur 2 Warning|<p>-</p>|warning|
|PoE-01 Information|<p>-</p>|information|
|PoE-01 Warning|<p>-</p>|warning|
|PoE-02 Information|<p>-</p>|information|
|PoE-02 Warning|<p>-</p>|warning|
|PoE-03 Information|<p>-</p>|information|
|PoE-03 Warning|<p>-</p>|warning|
|PoE-04 Information|<p>-</p>|information|
|PoE-04 Warning|<p>-</p>|warning|
