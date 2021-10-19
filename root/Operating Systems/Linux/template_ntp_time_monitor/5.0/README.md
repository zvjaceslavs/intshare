# Template Time Drift OS Linux

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$MAXTIMEDRIFT}|<p>-</p>|`20`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Time-Drift|<p>Units in the file /var/lib/ntp/drift are PPM. So, multiply PPM by 0.0864 to get seconds per day.</p>|`Zabbix agent`|time.drift<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Time: Drift  over  {$MAXTIMEDRIFT} sec/day on {HOST.NAME}|<p>-</p>|warning|
# Template Time Offset OS Linux

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$MAXTIMEOFFSET}|<p>-</p>|`1`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Time-Offset|<p>server 199.165.76.11, stratum 1, offset 0.018816, delay 0.02599 31 Aug 12:23:53 ntpdate[16741]: adjust time server 199.165.76.11 offset 0.018816 sec</p>|`Zabbix agent`|time.offset<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Time: Offset over {$MAXTIMEOFFSET} second on {HOST.NAME}|<p>-</p>|warning|
