# Template Sensors DN2800MT

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
|CPU core1 temp|<p>-</p>|`Zabbix agent`|sensor[coretemp-isa-0000,temp3]<p>Update: 60</p>|
|VR temp|<p>-</p>|`Zabbix agent`|sensor[w83627dhg-isa-0290,temp3]<p>Update: 60</p>|
|Vdimm Voltage|<p>-</p>|`Zabbix agent`|sensor[w83627dhg-isa-0290,in5]<p>Update: 60</p>|
|+5V Voltage|<p>-</p>|`Zabbix agent`|sensor[w83627dhg-isa-0290,in4]<p>Update: 60</p>|
|CPU core0 temp|<p>-</p>|`Zabbix agent`|sensor[coretemp-isa-0000,temp2]<p>Update: 60</p>|
|AVCC voltage|<p>-</p>|`Zabbix agent`|sensor[w83627dhg-isa-0290,in2]<p>Update: 60</p>|
|+3.3V Voltage|<p>-</p>|`Zabbix agent`|sensor[w83627dhg-isa-0290,in3]<p>Update: 60</p>|
|DIMM temp|<p>-</p>|`Zabbix agent`|sensor[w83627dhg-isa-0290,temp1]<p>Update: 60</p>|
|3VSB Voltage|<p>-</p>|`Zabbix agent`|sensor[w83627dhg-isa-0290,in7]<p>Update: 60</p>|
|PCH Voltage|<p>-</p>|`Zabbix agent`|sensor[w83627dhg-isa-0290,in6]<p>Update: 60</p>|
|+12V voltage|<p>-</p>|`Zabbix agent`|sensor[w83627dhg-isa-0290,in1]<p>Update: 60</p>|
|Vcore voltage|<p>-</p>|`Zabbix agent`|sensor[w83627dhg-isa-0290,in0]<p>Update: 60</p>|
|Vbat Voltage|<p>-</p>|`Zabbix agent`|sensor[w83627dhg-isa-0290,in8]<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|+3.3V Voltage Critical {ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|+5V Voltage Critical {ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|+12V Voltage Critical {ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|3VSB Voltage Critical {ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|AVCC Voltage Critical {ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU core0 temperature critical : {ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|CPU core1 temperature critical : {ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|DIMM Temp Critical {ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|PCH Voltage Critical {ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|Vbat Voltage Critical {ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|Vcore Voltage Critical {ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|Vdimm Voltage Critical {ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
|VR Temp Critical {ITEM.VALUE}] on {HOST.NAME}|<p>-</p>|disaster|
