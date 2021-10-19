# IPMI HP DL380p Gen9 without Drives

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
|Fan 3|<p>-</p>|`IPMI agent`|Fan3<p>Update: 3600</p>|
|PwrMeter Output|<p>-</p>|`IPMI agent`|PwrMeterOutput<p>Update: 3600</p>|
|Megacell Status|<p>-</p>|`IPMI agent`|MegacellStatus<p>Update: 3600</p>|
|Sys Health LED|<p>-</p>|`IPMI agent`|SysHealthLED<p>Update: 3600</p>|
|Power Supply 1|<p>-</p>|`IPMI agent`|PowerSupply1<p>Update: 3600</p>|
|Fans|<p>-</p>|`IPMI agent`|Fans<p>Update: 3600</p>|
|01-Inlet Ambient|<p>-</p>|`IPMI agent`|01-InletAmbient<p>Update: 3600</p>|
|Fan 6|<p>-</p>|`IPMI agent`|Fan6<p>Update: 3600</p>|
|40-Battery Zone|<p>-</p>|`IPMI agent`|40-BatteryZone<p>Update: 3600</p>|
|Fan 2|<p>-</p>|`IPMI agent`|Fan2<p>Update: 3600</p>|
|Fan 5|<p>-</p>|`IPMI agent`|Fan5<p>Update: 3600</p>|
|10-Chipset|<p>-</p>|`IPMI agent`|10-Chipset<p>Update: 3600</p>|
|Fan 4|<p>-</p>|`IPMI agent`|Fan4<p>Update: 3600</p>|
|02-CPU 1|<p>-</p>|`IPMI agent`|02-CPU1<p>Update: 3600</p>|
|UID|<p>-</p>|`IPMI agent`|UID<p>Update: 3600</p>|
|Fan 1|<p>-</p>|`IPMI agent`|Fan1<p>Update: 3600</p>|
|Power Supply 2|<p>-</p>|`IPMI agent`|PowerSupply2<p>Update: 3600</p>|
|Memory Status|<p>-</p>|`IPMI agent`|MemoryStatus<p>Update: 3600</p>|
|03-CPU 2|<p>-</p>|`IPMI agent`|03-CPU2<p>Update: 3600</p>|
|08-HD Max|<p>-</p>|`IPMI agent`|08-HDMax<p>Update: 3600</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Error Power|<p>-</p>|high|
|Error Temp CPU|<p>-</p>|high|
|Inlet Temperature is High!|<p>-</p>|high|
|HD Temp very High!|<p>-</p>|high|
|Chipset Temp is very High!|<p>-</p>|high|
|Battery zone Temp is very High!|<p>-</p>|high|
|Fans not Fully redundant|<p>-</p>|high|
|Megacell Status Battery Error|<p>please check Battry state at ilo</p>|high|
|Memory status error|<p>please check memory state at ilo</p>|high|
|Error Sys. Health LED|<p>-</p>|high|
|3h with No data from IPMI interface|<p>-</p>|high|
