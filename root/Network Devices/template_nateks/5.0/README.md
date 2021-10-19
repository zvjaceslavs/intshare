# Template Nateks FG-ACE-CON-VF

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMMUNITY}|<p>-</p>|`private`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Netradio discovery|<p>-</p>|`SNMP agent`|Radio<p>Update: 60s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|DeviceModel|<p>-</p>|`SNMP agent`|DevModel<p>Update: 60s</p>|
|DeviceLocation|<p>-</p>|`SNMP agent`|DevLocation<p>Update: 60s</p>|
|Channel[{#CHANNUM}][{#CHANIP}]Status|<p>-</p>|`SNMP agent`|ChanStatus[{#CHANNUM}]<p>Update: 60s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|RadioChannel [{#CHANNUM}] Status is not connected|<p>-</p>|warning|
