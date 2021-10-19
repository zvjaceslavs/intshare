# Template IPMI Intel RMM3

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
|BB +1.1V P1 Vccp|<p>-</p>|`IPMI agent`|rmm3.BB_plus1.1V_P1_Vccp<p>Update: 30</p>|
|Sys Fan Tach 3B|<p>-</p>|`IPMI agent`|rmm3.Sys_Fan_Tach_3B<p>Update: 30</p>|
|Front Panel Temp|<p>-</p>|`IPMI agent`|rmm3.Front_Panel_Temp<p>Update: 30</p>|
|Sys Fan Tach 1B|<p>-</p>|`IPMI agent`|rmm3.Sys_Fan_Tach_1B<p>Update: 30</p>|
|Sys Fan Tach 3A|<p>-</p>|`IPMI agent`|rmm3.Sys_Fan_Tach_3A<p>Update: 30</p>|
|BB +3.3V STBY|<p>-</p>|`IPMI agent`|rmm3.BB_plus3.3V_STBY<p>Update: 30</p>|
|Sys Fan Tach 2B|<p>-</p>|`IPMI agent`|rmm3.Sys_Fan_Tach_2B<p>Update: 30</p>|
|BB +1.5V P1 DDR3|<p>-</p>|`IPMI agent`|rmm3.BB_plus1.5V_P1_DDR3<p>Update: 30</p>|
|BB +3.3V|<p>-</p>|`IPMI agent`|rmm3.BB_plus3.3V<p>Update: 30</p>|
|PS Power In|<p>-</p>|`IPMI agent`|rmm3.PS_Power_In<p>Update: 30</p>|
|Baseboard Temp2|<p>-</p>|`IPMI agent`|rmm3.Baseboard_Temp2<p>Update: 30</p>|
|BB +5.0V|<p>-</p>|`IPMI agent`|rmm3.B_plus5.0V<p>Update: 30</p>|
|Sys Fan Tach 2A|<p>-</p>|`IPMI agent`|rmm3.Sys_Fan_Tach_2A<p>Update: 30</p>|
|Baseboard Temp1|<p>-</p>|`IPMI agent`|rmm3.Baseboard_Temp1<p>Update: 30</p>|
|Sys Fan Tach 1A|<p>-</p>|`IPMI agent`|rmm3.Sys_Fan_Tach_1A<p>Update: 30</p>|
|BB +1.05V PCH|<p>-</p>|`IPMI agent`|rmm3.BB_plus1.05V_PCH<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Baseboard Temp1 [{ITEM.VALUE}]|<p>-</p>|high|
|Baseboard Temp2 [{ITEM.VALUE}]|<p>-</p>|high|
|Low fan speed on {HOST.NAME}|<p>-</p>|warning|
|Power is off on {HOST.NAME}|<p>-</p>|average|
