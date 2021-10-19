# Template IPMI Supermicro H8DGT

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
|CPU1 DIMM VTT|<p>-</p>|`IPMI agent`|ipmi.system.cpu1_dimm_vtt<p>Update: 60</p>|
|FAN 1|<p>-</p>|`IPMI agent`|ipmi.system.fan_1<p>Update: 60</p>|
|CPU2 DIMM VTT|<p>-</p>|`IPMI agent`|ipmi.system.cpu2_dimm_vtt<p>Update: 60</p>|
|+12 V|<p>-</p>|`IPMI agent`|ipmi.system.12v<p>Update: 60</p>|
|CPU1 DIMM|<p>-</p>|`IPMI agent`|ipmi.system.cpu1_dimm<p>Update: 60</p>|
|+3.3V|<p>-</p>|`IPMI agent`|ipmi.system.3.3v<p>Update: 60</p>|
|PS Status|<p>-</p>|`IPMI agent`|ipmi.system.ps_status<p>Update: 60</p>|
|VBAT|<p>-</p>|`IPMI agent`|ipmi.system.vbat<p>Update: 60</p>|
|+3.3VSB|<p>-</p>|`IPMI agent`|ipmi.system.3.3vsb<p>Update: 60</p>|
|+1.1 V|<p>-</p>|`IPMI agent`|ipmi.system.1.1v<p>Update: 60</p>|
|CPU1 Vcore|<p>-</p>|`IPMI agent`|ipmi.system.processor_vcc1<p>Update: 60</p>|
|CPU1 Temp|<p>-</p>|`IPMI agent`|ipmi.system.cpu1_temp<p>Update: 60</p>|
|CPU2 DIMM|<p>-</p>|`IPMI agent`|ipmi.system.cpu2_dimm<p>Update: 60</p>|
|CPU2 Vcore|<p>-</p>|`IPMI agent`|ipmi.system.processor_vcc2<p>Update: 60</p>|
|System Temp|<p>-</p>|`IPMI agent`|ipmi.system.temp<p>Update: 60</p>|
|+5 V|<p>-</p>|`IPMI agent`|ipmi.system.5v<p>Update: 60</p>|
|CPU2 Temp|<p>-</p>|`IPMI agent`|impi.system.cpu2_temp<p>Update: 60</p>|
|+1.8 V|<p>-</p>|`IPMI agent`|ipmi.system.1.8v<p>Update: 60</p>|
|FAN 2|<p>-</p>|`IPMI agent`|ipmi.system.fan_2<p>Update: 60</p>|
|HT Voltage|<p>-</p>|`IPMI agent`|ipmi.system.ht_voltage<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|+1.1V Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|+1.8V Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|+3.3V Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|+3.3VSB Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|+5 V Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|+12V Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU1 DIMM Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU1 DIMM VTT Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU1 Temp [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|warning|
|CPU1 Temp [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|CPU1 Temp [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU1 Vcore Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU2 DIMM Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU2 DIMM VTT Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU2 Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU2 Temp [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|warning|
|CPU2 Temp [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|CPU2 Temp [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU2 Vcore Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN 1 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN 2 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|HT Voltage Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|PS Status [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|System Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|VBAT Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
