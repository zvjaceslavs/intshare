# Template IPMI Dell PowerEdge R510

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
|FAN MOD 5B RPM|<p>-</p>|`IPMI agent`|ipmi.sensor.FAN_MOD_5B_RPM<p>Update: 300</p>|
|Voltage|<p>电压</p>|`IPMI agent`|Voltage<p>Update: 300</p>|
|FAN MOD 3A RPM|<p>-</p>|`IPMI agent`|ipmi.sensor.FAN_MOD_3A_RPM<p>Update: 300</p>|
|FAN MOD 5A RPM|<p>-</p>|`IPMI agent`|ipmi.sensor.FAN_MOD_5A_RPM<p>Update: 300</p>|
|FAN MOD 2A RPM|<p>-</p>|`IPMI agent`|ipmi.sensor.FAN_MOD_2A_RPM<p>Update: 300</p>|
|FAN MOD 4B RPM|<p>-</p>|`IPMI agent`|ipmi.sensor.FAN_MOD_4B_RPM<p>Update: 300</p>|
|FAN MOD 3B RPM|<p>-</p>|`IPMI agent`|ipmi.sensor.FAN_MOD_3B_RPM<p>Update: 300</p>|
|FAN MOD 1A RPM|<p>-</p>|`IPMI agent`|ipmi.sensor.FAN_MOD_1A_RPM<p>Update: 300</p>|
|Power|<p>-</p>|`IPMI agent`|power<p>Update: 300</p>|
|FAN MOD 4A RPM|<p>-</p>|`IPMI agent`|ipmi.sensor.FAN_MOD_4A_RPM<p>Update: 300</p>|
|Ambient Temp|<p>-</p>|`IPMI agent`|ipmi.sensor.Ambient_Temp<p>Update: 300</p>|
|FAN MOD 2B RPM|<p>-</p>|`IPMI agent`|ipmi.sensor.FAN_MOD_2B_RPM<p>Update: 300</p>|
|FAN MOD 1B RPM|<p>-</p>|`IPMI agent`|ipmi.sensor.FAN_MOD_1B_RPM<p>Update: 300</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|服务器温度近超过40度|<p>-</p>|average|
