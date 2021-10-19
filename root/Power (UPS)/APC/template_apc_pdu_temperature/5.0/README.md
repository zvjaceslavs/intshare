# Template APC PDU

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
|Temperatura sensor|<p>-</p>|`SNMP agent`|rPDU2SensorTempHumidityStatusTempC<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Temperatura alta|<p>-</p>|high|
|Temperatura baixa|<p>-</p>|average|
|Temperatura crítica|<p>-</p>|disaster|
