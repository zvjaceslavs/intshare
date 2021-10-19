# Template IPMI Supermicro X9DRL-7F-BO

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
|Peripheral Temp|<p>-</p>|`IPMI agent`|ipmi.system.temp_peripheral<p>Update: 60</p>|
|FAN1|<p>-</p>|`IPMI agent`|ipmi.system.fan1<p>Update: 60</p>|
|System Temp|<p>-</p>|`IPMI agent`|ipmi.system.temp<p>Update: 60</p>|
|CPU1 Vcore|<p>-</p>|`IPMI agent`|ipmi.system.processor_vcc1<p>Update: 60</p>|
|3.3V|<p>-</p>|`IPMI agent`|ipmi.system.3.3v<p>Update: 60</p>|
|5V|<p>-</p>|`IPMI agent`|ipmi.system.5v<p>Update: 60</p>|
|VBAT|<p>-</p>|`IPMI agent`|ipmi.system.vbat<p>Update: 60</p>|
|CPU2 Vcore|<p>-</p>|`IPMI agent`|ipmi.system.processor_vcc2<p>Update: 60</p>|
|FANB|<p>-</p>|`IPMI agent`|ipmi.system.fanb<p>Update: 60</p>|
|VTT|<p>-</p>|`IPMI agent`|impi.system.vtt<p>Update: 60</p>|
|FAN5|<p>-</p>|`IPMI agent`|ipmi.system.fan5<p>Update: 60</p>|
|VDIMM ABCD|<p>-</p>|`IPMI agent`|ipmi.system.vdimm_abcd<p>Update: 60</p>|
|12V|<p>-</p>|`IPMI agent`|ipmi.system.12v<p>Update: 60</p>|
|+1.5 V|<p>-</p>|`IPMI agent`|ipmi.system.1.5v<p>Update: 60</p>|
|CPU2 Temp|<p>-</p>|`IPMI agent`|ipmi.system.temp_cpu2<p>Update: 60</p>|
|FAN3|<p>-</p>|`IPMI agent`|ipmi.system.fan3<p>Update: 60</p>|
|+3.3VSB|<p>-</p>|`IPMI agent`|ipmi.system.3.3vsb<p>Update: 60</p>|
|FAN2|<p>-</p>|`IPMI agent`|ipmi.system.fan2<p>Update: 60</p>|
|VDIMM EFGH|<p>-</p>|`IPMI agent`|ipmi.system.vdimm_efgh<p>Update: 60</p>|
|FANA|<p>-</p>|`IPMI agent`|ipmi.system.fana<p>Update: 60</p>|
|CPU1 Temp|<p>-</p>|`IPMI agent`|ipmi.system.temp_cpu1<p>Update: 60</p>|
|+5VSB|<p>-</p>|`IPMI agent`|ipmi.system.5vsb<p>Update: 60</p>|
|+1.1 V|<p>-</p>|`IPMI agent`|ipmi.system.1.1v<p>Update: 60</p>|
|FAN4|<p>-</p>|`IPMI agent`|ipmi.system.fan4<p>Update: 60</p>|
|PCH Temp|<p>-</p>|`IPMI agent`|ipmi.system.temp_pch<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|+1.1 V Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|+1.5 V Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|+3.3VSB Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|+5VSB Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|3.3V Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|5V Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|12V Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU1 Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU1 Vcore Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU2 Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU2 Vcore Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN1 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN2 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN3 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN4 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN5 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FANA Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FANB Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|PCH Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|Peripheral Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|System Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|VBAT Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|VDIMM ABCD Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|VDIMM EFGH Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|VTT Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
