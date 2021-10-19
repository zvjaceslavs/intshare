# Template IPMI Gigabyte 6PXSV4

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
|DIMM B1 Temp|<p>-</p>|`IPMI agent`|ipmi.system.cpu_dimm_b1<p>Update: 1m</p>|
|DIMM Group 2|<p>-</p>|`IPMI agent`|ipmi.system.dimm.group2<p>Update: 1m</p>|
|DIMM C0 Temp|<p>-</p>|`IPMI agent`|ipmi.system.cpu_dimm_c0<p>Update: 1m</p>|
|DIMM C1 Temp|<p>-</p>|`IPMI agent`|ipmi.system.cpu_dimm_c1<p>Update: 1m</p>|
|DIMM A0 Temp|<p>-</p>|`IPMI agent`|ipmi.system.cpu_dimm_a0<p>Update: 1m</p>|
|SYS_FAN 4|<p>-</p>|`IPMI agent`|ipmi.system.sys_fan_4<p>Update: 1m</p>|
|SIO Temp 2|<p>-</p>|`IPMI agent`|ipmi.sio.temp2<p>Update: 1m</p>|
|PCH Temp|<p>-</p>|`IPMI agent`|ipmi.pch.temp<p>Update: 1m</p>|
|+5 V|<p>-</p>|`IPMI agent`|ipmi.system.5v<p>Update: 1m</p>|
|SYS_FAN 2|<p>-</p>|`IPMI agent`|ipmi.system.sys_fan_2<p>Update: 1m</p>|
|DIMM D1 Temp|<p>-</p>|`IPMI agent`|ipmi.system.cpu_dimm_d1<p>Update: 1m</p>|
|SIO Temp 1|<p>-</p>|`IPMI agent`|ipmi.sio.temp1<p>Update: 1m</p>|
|CPU_FAN|<p>-</p>|`IPMI agent`|ipmi.system.cpu_fan<p>Update: 1m</p>|
|DIMM D0 Temp|<p>-</p>|`IPMI agent`|ipmi.system.cpu_dimm_d0<p>Update: 1m</p>|
|+3.3V|<p>-</p>|`IPMI agent`|ipmi.system.3.3v<p>Update: 1m</p>|
|DIMM Group 1|<p>-</p>|`IPMI agent`|ipmi.system.dimm.group1<p>Update: 1m</p>|
|SYS_FAN 3|<p>-</p>|`IPMI agent`|ipmi.system.sys_fan_3<p>Update: 1m</p>|
|SIO Temp 3|<p>-</p>|`IPMI agent`|ipmi.sio.temp3<p>Update: 1m</p>|
|DIMM B0 Temp|<p>-</p>|`IPMI agent`|ipmi.system.cpu_dimm_b0<p>Update: 1m</p>|
|CPU Core|<p>-</p>|`IPMI agent`|ipmi.system.cpu_vcore<p>Update: 1m</p>|
|DIMM A1 Temp|<p>-</p>|`IPMI agent`|ipmi.system.cpu_dimm_a1<p>Update: 1m</p>|
|+5 V Aux|<p>-</p>|`IPMI agent`|ipmi.system.5v.aux<p>Update: 1m</p>|
|Battery|<p>-</p>|`IPMI agent`|ipmi.system.vbat<p>Update: 1m</p>|
|CPU Temp|<p>-</p>|`IPMI agent`|ipmi.system.cpu_temp<p>Update: 1m</p>|
|+12 V|<p>-</p>|`IPMI agent`|ipmi.system.12v<p>Update: 1m</p>|
|SYS_FAN 1|<p>-</p>|`IPMI agent`|ipmi.system.sys_fan_1<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|+3.3 V Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|+5 V Aux Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|+5 V Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|+12 V Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU FAN Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|DIMM A0 Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|DIMM A1 Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|DIMM B0 Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|DIMM B1 Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|DIMM C0 Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|DIMM C1 Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|DIMM D0 Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|DIMM D1 Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|DIMM Group 1 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|DIMM Group 2 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN 1 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN 2 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN 3 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN 4 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|PCH Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|SIO Temp 1 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|SIO Temp 2 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|SIO Temp 3 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|VBAT Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|Vcore Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
