# Template Printer Panasonic KX-MB2051RU

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
|Pages printed - total|<p>-</p>|`SNMP agent`|pages.printed.total<p>Update: 30s</p>|
|Максимальный Драм Юнит - black|<p>-</p>|`SNMP agent`|drum.black.max<p>Update: 30s</p>|
|Драм Юнит % - black|<p>-</p>|`Calculated`|black.drum<p>Update: 30s</p>|
|Модель МФУ|<p>-</p>|`SNMP agent`|model<p>Update: 1h</p>|
|Текущий Драм Юнит - black|<p>-</p>|`SNMP agent`|drum.black.now<p>Update: 30s</p>|
|Максимальный тонер картридж - black|<p>-</p>|`SNMP agent`|ink.black.max<p>Update: 30s</p>|
|Тонер картридж % - black|<p>-</p>|`Calculated`|black.cartridge.toner<p>Update: 30s</p>|
|Текущий Тонер картридж - black|<p>-</p>|`SNMP agent`|ink.black.now<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Empty cartridge toner - black|<p>-</p>|high|
|Empty Drum unit - black|<p>-</p>|high|
|Low cartridge toner - black|<p>-</p>|information|
|Low Drum unit - black|<p>-</p>|information|
