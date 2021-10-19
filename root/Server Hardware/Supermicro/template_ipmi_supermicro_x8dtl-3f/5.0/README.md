# Template IPMI Supermicro X8DTL-3F

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
|P1-DIMM3A|<p>-</p>|`IPMI agent`|ipmi.system.p1_dimm3a<p>Update: 60</p>|
|FAN 6|<p>-</p>|`IPMI agent`|ipmi.system.fan_6<p>Update: 60</p>|
|-12 V|<p>-</p>|`IPMI agent`|ipmi.system.m12v<p>Update: 60</p>|
|FAN 5|<p>-</p>|`IPMI agent`|ipmi.system.fan_5<p>Update: 60</p>|
|P1-DIMM1A|<p>-</p>|`IPMI agent`|ipmi.system.p1_dimm1a<p>Update: 60</p>|
|+5VSB|<p>-</p>|`IPMI agent`|ipmi.system.5vsb<p>Update: 60</p>|
|P2-DIMM2A|<p>-</p>|`IPMI agent`|ipmi.system.p2_dimm2a<p>Update: 60</p>|
|CPU1 DIMM|<p>-</p>|`IPMI agent`|ipmi.system.cpu1_dimm<p>Update: 60</p>|
|CPU2 Vcore|<p>-</p>|`IPMI agent`|ipmi.system.processor_vcc2<p>Update: 60</p>|
|+3.3VSB|<p>-</p>|`IPMI agent`|ipmi.system.3.3vsb<p>Update: 60</p>|
|P2-DIMM3A|<p>-</p>|`IPMI agent`|ipmi.system.p2_dimm3a<p>Update: 60</p>|
|CPU1 Temp|<p>-</p>|`IPMI agent`|ipmi.system.cpu1_temp<p>Update: 60</p>|
|CPU2 DIMM|<p>-</p>|`IPMI agent`|ipmi.system.cpu2_dimm<p>Update: 60</p>|
|CPU2 Temp|<p>-</p>|`IPMI agent`|impi.system.cpu2_temp<p>Update: 60</p>|
|FAN 2|<p>-</p>|`IPMI agent`|ipmi.system.fan_2<p>Update: 60</p>|
|FAN 1|<p>-</p>|`IPMI agent`|ipmi.system.fan_1<p>Update: 60</p>|
|FAN 4|<p>-</p>|`IPMI agent`|ipmi.system.fan_4<p>Update: 60</p>|
|CPU1 Vcore|<p>-</p>|`IPMI agent`|ipmi.system.processor_vcc1<p>Update: 60</p>|
|+12 V|<p>-</p>|`IPMI agent`|ipmi.system.12v<p>Update: 60</p>|
|P1-DIMM2A|<p>-</p>|`IPMI agent`|ipmi.system.p1_dimm2a<p>Update: 60</p>|
|FAN 3|<p>-</p>|`IPMI agent`|ipmi.system.fan_3<p>Update: 60</p>|
|VTT|<p>-</p>|`IPMI agent`|ipmi.system.vtt<p>Update: 60</p>|
|VBAT|<p>-</p>|`IPMI agent`|ipmi.system.vbat<p>Update: 60</p>|
|+3.3VCC|<p>-</p>|`IPMI agent`|ipmi.system.3.3vcc<p>Update: 60</p>|
|+5 V|<p>-</p>|`IPMI agent`|ipmi.system.5v<p>Update: 60</p>|
|P2-DIMM1A|<p>-</p>|`IPMI agent`|ipmi.system.p2_dimm1a<p>Update: 60</p>|
|System Temp|<p>-</p>|`IPMI agent`|ipmi.system.temp<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|+3.3VCC Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|+3.3VSB Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|+5 V Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|+5VSB Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|+12 V Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|-12 V Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU1 DIMM Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU1 Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU1 Vcore Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU2 DIMM Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU2 Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU2 Vcore Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN 1 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN 2 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN 3 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN 4 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN 5 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN 6 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|P1-DIMM1A Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|P1-DIMM2A Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|P1-DIMM3A Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|P2-DIMM1A Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|P2-DIMM2A Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|P2-DIMM3A Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|System Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|VBAT Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|VTT Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
