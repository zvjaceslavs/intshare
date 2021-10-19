# Template IPMI ASUS ASMB4

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
|VCORE2|<p>-</p>|`IPMI agent`|asmb4.vcore2<p>Update: 120</p>|
|FRNT_FAN7|<p>-</p>|`IPMI agent`|asmb4.frnt_fan7<p>Update: 120</p>|
|FRNT_FAN1|<p>-</p>|`IPMI agent`|asmb4.frnt_fan1<p>Update: 120</p>|
|FRNT_FAN2|<p>-</p>|`IPMI agent`|asmb4.frnt_fan2<p>Update: 120</p>|
|+3.3V|<p>-</p>|`IPMI agent`|asmb4.plus3.3v<p>Update: 120</p>|
|FRNT_FAN6|<p>-</p>|`IPMI agent`|asmb4.frnt_fan6<p>Update: 120</p>|
|TR1 Temperature|<p>-</p>|`IPMI agent`|asmb4.tr1_temperature<p>Update: 120</p>|
|+12V|<p>-</p>|`IPMI agent`|asmb4.plus12v<p>Update: 120</p>|
|VCORE1|<p>-</p>|`IPMI agent`|asmb4.vcore1<p>Update: 120</p>|
|FRNT_FAN3|<p>-</p>|`IPMI agent`|asmb4.frnt_fan3<p>Update: 120</p>|
|+5V|<p>-</p>|`IPMI agent`|asmb4.plus5v<p>Update: 120</p>|
|+5VSB|<p>-</p>|`IPMI agent`|asmb4.plus5vsb<p>Update: 120</p>|
|+3.3VSB|<p>-</p>|`IPMI agent`|asmb4.plus3.3vsb<p>Update: 120</p>|
|FRNT_FAN4|<p>-</p>|`IPMI agent`|asmb4.frnt_fan4<p>Update: 120</p>|
|CPU1 Temperature|<p>-</p>|`IPMI agent`|asmb4.cpu1_temperature<p>Update: 120</p>|
|CPU2 Temperature|<p>-</p>|`IPMI agent`|asmb4.cpu2_temperature<p>Update: 120</p>|
|TR2 Temperature|<p>-</p>|`IPMI agent`|asmb4.tr2_temperature<p>Update: 120</p>|
|VBAT|<p>-</p>|`IPMI agent`|asmb4.vbat<p>Update: 120</p>|
|FRNT_FAN5|<p>-</p>|`IPMI agent`|asmb4.frnt_fan5<p>Update: 120</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|CPU1 Tempereture Critical|<p>-</p>|high|
|CPU2 Tempereture Critical|<p>-</p>|high|
|TR1 Tempereture Critical|<p>-</p>|high|
|TR2 Tempereture Critical|<p>-</p>|high|
