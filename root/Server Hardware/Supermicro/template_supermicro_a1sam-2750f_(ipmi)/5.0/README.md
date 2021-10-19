# Template IPMI Supermicro A1SAM-2750F

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
|5V Dual|<p>-</p>|`IPMI agent`|ipmi.system.5vdual<p>Update: 300</p>|
|VBAT|<p>-</p>|`IPMI agent`|ipmi.system.vbat<p>Update: 300</p>|
|CPU Temp|<p>-</p>|`IPMI agent`|ipmi.system.cpu_temp<p>Update: 300</p>|
|FAN 3|<p>-</p>|`IPMI agent`|ipmi.system.fan_3<p>Update: 300</p>|
|3.3VCC|<p>-</p>|`IPMI agent`|ipmi.system.3.3vcc<p>Update: 300</p>|
|Peripheral Temp|<p>-</p>|`IPMI agent`|ipmi.system.peripheral_temp<p>Update: 300</p>|
|3.3V AUX|<p>-</p>|`IPMI agent`|ipmi.system.3.3aux<p>Update: 300</p>|
|12 V|<p>-</p>|`IPMI agent`|ipmi.system.12v<p>Update: 300</p>|
|VDIMM|<p>-</p>|`IPMI agent`|ipmi.system.VDIMM<p>Update: 300</p>|
|VCCP|<p>-</p>|`IPMI agent`|ipmi.system.VCCP<p>Update: 300</p>|
|5 VCC|<p>-</p>|`IPMI agent`|ipmi.system.5VCC<p>Update: 300</p>|
|FAN 2|<p>-</p>|`IPMI agent`|ipmi.system.fan_2<p>Update: 300</p>|
|System Temp|<p>-</p>|`IPMI agent`|ipmi.system.system_temp<p>Update: 300</p>|
|FAN 1|<p>-</p>|`IPMI agent`|ipmi.system.fan_1<p>Update: 300</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|+3.3V Aux Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|+3.3VCC Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|+5 VCC Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|+5V Dual Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|+12 V Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN 1 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN 2 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN 3 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|IPMI agent on {HOST.NAME} is unreachable for 10 minutes|<p>Check based on ipmi 12v sensor Is IPMI down ?</p>|average|
|Peripheral Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|System Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|VBAT Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|VCCP Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|VDIMM Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
