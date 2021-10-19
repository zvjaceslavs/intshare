# Template IPMI SuperMicro

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
|CPU temp|<p>-</p>|`IPMI agent`|ipmi.system.temp_cpu<p>Update: 300</p>|
|+12 V|<p>-</p>|`IPMI agent`|ipmi.system.12<p>Update: 300</p>|
|VBAT|<p>-</p>|`IPMI agent`|impi.system.vbat<p>Update: 300</p>|
|System Fan|<p>-</p>|`IPMI agent`|ipmi.system.sys_fan<p>Update: 300</p>|
|+3.3V|<p>-</p>|`IPMI agent`|impi.system.3v<p>Update: 300</p>|
|VDIMM|<p>-</p>|`IPMI agent`|impi.system.vdimm_vcc<p>Update: 300</p>|
|Power|<p>-</p>|`IPMI agent`|power<p>Update: 300</p>|
|CPU Vcore|<p>-</p>|`IPMI agent`|ipmi.system.processor_vcc<p>Update: 300</p>|
|+5 V|<p>-</p>|`IPMI agent`|ipmi.system.5<p>Update: 300</p>|
|Sys temp|<p>-</p>|`IPMI agent`|ipmi.system.temp<p>Update: 300</p>|
|CPU Fan|<p>-</p>|`IPMI agent`|ipmi.system.cpu_fan<p>Update: 300</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|+3.3VCC Critical [{ITEM.VALUE}]|<p>-</p>|disaster|
|+3.3VCC Non-Critical [{ITEM.VALUE}]|<p>-</p>|high|
|+5V Critical [{ITEM.VALUE}]|<p>-</p>|disaster|
|+5V Non-Critical [{ITEM.VALUE}]|<p>-</p>|high|
|+12V Critical [{ITEM.VALUE}]|<p>-</p>|disaster|
|+12V Non-Critical [{ITEM.VALUE}]|<p>-</p>|high|
|CPU FAN Critical [{ITEM.VALUE}]|<p>-</p>|disaster|
|CPU Temp Critical [{ITEM.VALUE}]|<p>-</p>|disaster|
|Power|<p>-</p>|warning|
|System FAN Critical [{ITEM.VALUE}]|<p>-</p>|disaster|
|System Temp Critical [{ITEM.VALUE}]|<p>-</p>|disaster|
