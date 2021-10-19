# IPMI HP BL460c Gen8

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
|03-CPU 2|<p>-</p>|`IPMI agent`|03-CPU2<p>Update: 3600</p>|
|Memory Status|<p>-</p>|`IPMI agent`|MemoryStatus<p>Update: 3600</p>|
|System Board temp|<p>-</p>|`IPMI agent`|30-SystemBoard<p>Update: 3600</p>|
|01-Inlet Ambient|<p>-</p>|`IPMI agent`|01-InletAmbient<p>Update: 3600</p>|
|HDD temp|<p>-</p>|`IPMI agent`|12-HDMax<p>Update: 3600</p>|
|C1 P1I Bay 2|<p>-</p>|`IPMI agent`|C1P1IBay2<p>Update: 3600</p>|
|Enclosure Status|<p>-</p>|`IPMI agent`|EnclosureStatus<p>Update: 3600</p>|
|Power Meter|<p>-</p>|`IPMI agent`|PowerMeter<p>Update: 3600</p>|
|Sys Health LED|<p>-</p>|`IPMI agent`|SysHealthLED<p>Update: 60</p>|
|02-CPU 1|<p>-</p>|`IPMI agent`|02-CPU1<p>Update: 3600</p>|
|Virtual Fan|<p>-</p>|`IPMI agent`|VirtualFan<p>Update: 3600</p>|
|C1 P1I Bay 1|<p>-</p>|`IPMI agent`|C1P1IBay1<p>Update: 3600</p>|
|UIDLight|<p>-</p>|`IPMI agent`|UIDLight<p>Update: 50</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|01-InletAmbient temp very high|<p>-</p>|high|
|CPU temperature critical|<p>-</p>|high|
|CPU temperature critical|<p>-</p>|high|
|HDD temp very high|<p>-</p>|high|
|System board temp is very high|<p>-</p>|high|
|Error on drive {$ITEM.NAME}|<p>-</p>|high|
|Predictive Disk errors  on {$ITEM.NAME}|<p>-</p>|average|
|Error on drive {$ITEM.NAME}|<p>-</p>|high|
|Predictive Disk errors  on {$ITEM.NAME}|<p>-</p>|average|
|Enclosure Status error|<p>-</p>|high|
|Memory error|<p>-</p>|high|
|Power problem|<p>-</p>|high|
|Sys. Health LED error|<p>-</p>|high|
|6h with No data from IPMI interface|<p>-</p>|high|
|Fan low|<p>-</p>|high|
