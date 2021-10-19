# DCM SW-11-DSP

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
|Temperatura|<p>-</p>|`SNMP agent`|temperatura<p>Update: 30</p>|
|Umidade|<p>-</p>|`SNMP agent`|umidade<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Temperatura local alta|<p>-</p>|high|
|Temperatura local crítica|<p>-</p>|disaster|
