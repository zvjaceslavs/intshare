# Template IPMI Supermicro X9SRI-F

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
|PCH Temp|<p>-</p>|`IPMI agent`|ipmi.system.pch.temp<p>Update: 60s</p>|
|VBAT|<p>-</p>|`IPMI agent`|ipmi.system.vbat<p>Update: 60s</p>|
|FAN 1|<p>-</p>|`IPMI agent`|ipmi.system.fan_1<p>Update: 60s</p>|
|FAN A|<p>-</p>|`IPMI agent`|ipmi.system.fan_a<p>Update: 60s</p>|
|Vcore|<p>-</p>|`IPMI agent`|ipmi.system.vcore<p>Update: 60s</p>|
|Peripheral Temp|<p>-</p>|`IPMI agent`|ipmi.system.periph.temp<p>Update: 60s</p>|
|AVCC|<p>-</p>|`IPMI agent`|ipmi.system.avcc<p>Update: 60s</p>|
|12V|<p>-</p>|`IPMI agent`|ipmi.system.12v<p>Update: 60s</p>|
|3.3VCC|<p>-</p>|`IPMI agent`|ipmi.system.3.3vcc<p>Update: 60s</p>|
|CPU Temp|<p>-</p>|`IPMI agent`|ipmi.system.cpu.temp<p>Update: 60s</p>|
|VSB|<p>-</p>|`IPMI agent`|ipmi.system.vsb<p>Update: 60s</p>|
|5VCC|<p>-</p>|`IPMI agent`|ipmi.system.5vcc<p>Update: 60s</p>|
|FAN 3|<p>-</p>|`IPMI agent`|ipmi.system.fan_3<p>Update: 60s</p>|
|FAN 2|<p>-</p>|`IPMI agent`|ipmi.system.fan_2<p>Update: 60s</p>|
|System Temp|<p>-</p>|`IPMI agent`|ipmi.system.temp<p>Update: 60s</p>|
|FAN 4|<p>-</p>|`IPMI agent`|ipmi.system.fan_4<p>Update: 60s</p>|
|VDIMM|<p>-</p>|`IPMI agent`|ipmi.system.vdimm<p>Update: 60s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|+3.3 V Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|+5 V Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|+12 V Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|AVCC Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN 1 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN 2 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN 3 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN 4 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN A Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|PCH Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|Peripheral Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|System Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|VBAT Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|Vcore Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|VDIMM Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|VSB Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
