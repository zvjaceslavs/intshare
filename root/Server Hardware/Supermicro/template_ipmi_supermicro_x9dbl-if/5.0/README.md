# Template IPMI Supermicro X9DBL

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
|P1-DIMMC1|<p>-</p>|`IPMI agent`|ipmi.system.p1_dimmc1<p>Update: 60</p>|
|FAN 5|<p>-</p>|`IPMI agent`|ipmi.system.fan_5<p>Update: 60</p>|
|CPU2 Temp|<p>-</p>|`IPMI agent`|impi.system.cpu2_temp<p>Update: 60</p>|
|P1-DIMMB1|<p>-</p>|`IPMI agent`|ipmi.system.p1_dimmb1<p>Update: 60</p>|
|FAN 3|<p>-</p>|`IPMI agent`|ipmi.system.fan_3<p>Update: 60</p>|
|P2-DIMMF1|<p>-</p>|`IPMI agent`|ipmi.system.p2_dimmf1<p>Update: 60</p>|
|CPU2 VDIMM|<p>-</p>|`IPMI agent`|ipmi.system.cpu2_vdimm<p>Update: 60</p>|
|CPU2 Vcore|<p>-</p>|`IPMI agent`|ipmi.system.cpu2_vcc<p>Update: 60</p>|
|FAN 2|<p>-</p>|`IPMI agent`|ipmi.system.fan_2<p>Update: 60</p>|
|5V|<p>-</p>|`IPMI agent`|ipmi.system.5v<p>Update: 60</p>|
|VBAT|<p>-</p>|`IPMI agent`|ipmi.system.vbat<p>Update: 60</p>|
|FAN 1|<p>-</p>|`IPMI agent`|ipmi.system.fan_1<p>Update: 60</p>|
|CPU1 VDIMM|<p>-</p>|`IPMI agent`|ipmi.system.cpu1_vdimm<p>Update: 60</p>|
|Peripheral Temp|<p>-</p>|`IPMI agent`|ipmi.peripheral.temp<p>Update: 60</p>|
|3.3V|<p>-</p>|`IPMI agent`|ipmi.system.3.3v<p>Update: 60</p>|
|P2-DIMMD1|<p>-</p>|`IPMI agent`|ipmi.system.p2_dimmd1<p>Update: 60</p>|
|CPU1 Temp|<p>-</p>|`IPMI agent`|ipmi.system.cpu1_temp<p>Update: 60</p>|
|PCH Temp|<p>-</p>|`IPMI agent`|ipmi.pch.temp<p>Update: 60</p>|
|VTT|<p>-</p>|`IPMI agent`|ipmi.system.vtt<p>Update: 60</p>|
|+5VSB|<p>-</p>|`IPMI agent`|ipmi.system.5vsb<p>Update: 60</p>|
|+3.3VSB|<p>-</p>|`IPMI agent`|ipmi.system.3.3vsb<p>Update: 60</p>|
|12V|<p>-</p>|`IPMI agent`|ipmi.system.12v<p>Update: 60</p>|
|P2-DIMME1|<p>-</p>|`IPMI agent`|ipmi.system.p2_dimme1<p>Update: 60</p>|
|System Temp|<p>-</p>|`IPMI agent`|ipmi.system.temp<p>Update: 60</p>|
|FAN 4|<p>-</p>|`IPMI agent`|ipmi.system.fan_4<p>Update: 60</p>|
|-12 V|<p>-</p>|`IPMI agent`|ipmi.system.m12v<p>Update: 60</p>|
|+1.5 V|<p>-</p>|`IPMI agent`|ipmi.system.1.5v<p>Update: 60</p>|
|P1-DIMMA1|<p>-</p>|`IPMI agent`|ipmi.system.p1_dimma1<p>Update: 60</p>|
|CPU1 Vcore|<p>-</p>|`IPMI agent`|ipmi.system.cpu1_vcc<p>Update: 60</p>|
|FAN A|<p>-</p>|`IPMI agent`|ipmi.system.fan_a<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|CPU1 Temp Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU1 Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|CPU1 Temp Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|CPU2 Temp Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU2 Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|CPU2 Temp Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|System Temp Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|System Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|System Temp Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|Peripheral Temp Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|Peripheral Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|Peripheral Temp Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|PCH Temp Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|PCH Temp Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|PCH Temp Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|P1-DIMMA1 Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|P1-DIMMA1 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|P1-DIMMA1 Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|P1-DIMMB1 Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|P1-DIMMB1 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|P1-DIMMB1 Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|P1-DIMMC1 Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|P1-DIMMC1 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|P1-DIMMC1 Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|P2-DIMMD1 Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|P2-DIMMD1 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|P2-DIMMD1 Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|P2-DIMME1 Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|P2-DIMME1 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|P2-DIMME1 Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|P2-DIMMD1 Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|P2-DIMMD1 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|P2-DIMMD1 Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|FAN 1 Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN 1 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|FAN 1 Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|FAN 2 Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN 2 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|FAN 2 Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|FAN 3 Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN 3 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|FAN 3 Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|FAN 4 Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN 4 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|FAN 4 Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|FAN 5 Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN 5 Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|FAN 5 Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|FAN A Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|FAN A Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|FAN A Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|VTT Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|VTT Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|VTT Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|CPU1 Vcore Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU1 Vcore Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|CPU1 Vcore Non-Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|CPU2 Vcore Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU2 Vcore Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|CPU2 Vcore Non-Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|CPU1 DIMM Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU1 DIMM Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|CPU1 DIMM Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|CPU1 DIMM Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU1 DIMM Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|CPU1 DIMM Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|+1.5 V Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|+1.5 V Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|+1.5 V Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|3.3V Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|3.3V Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|3.3V Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|+3.3VSB Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|+3.3VSB Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|+3.3VSB Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|5V Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|5V Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|5V Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|+5VSB Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|+5VSB Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|+5VSB Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|12V Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|12V Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|12V Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|VBAT Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|VBAT Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|VBAT Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
|-12 V Non-recoverable [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|-12 V Critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|high|
|-12 V Non-critical [{ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|average|
