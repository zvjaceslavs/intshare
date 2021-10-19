# Template Printer Samsung M Series

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
|Model Black Cartridge|<p>-</p>|`SNMP agent`|samsung.black.type<p>Update: 3600</p>|
|Model Printer|<p>-</p>|`SNMP agent`|sams.clr.model<p>Update: 3600</p>|
|Serial Number|<p>-</p>|`SNMP agent`|sams.clr.sysname<p>Update: 3600</p>|
|Level Black Toner|<p>-</p>|`SNMP agent`|sams.clr.black.perc<p>Update: 1800</p>|
|Level Black Imaging Unit|<p>-</p>|`SNMP agent`|sams.clr.black.img<p>Update: 1800</p>|
|Page Counter|<p>-</p>|`SNMP agent`|sams.clr.counter<p>Update: 3600</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Printer Information - Replace Tonner|<p>-</p>|information|
|{ITEM.LASTVALUE2} - Replace Black Imaging Unit|<p>-</p>|information|
