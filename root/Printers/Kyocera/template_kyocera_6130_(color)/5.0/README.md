# Color printers Kyocera

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
|Current cartridge toner level - cyan|<p>-</p>|`SNMP agent`|ink.cyan.now<p>Update: 10m</p>|
|Cartridge toner level % - magenta|<p>-</p>|`Calculated`|magenta.cartridge.toner<p>Update: 10m</p>|
|Current cartridge toner level - black|<p>-</p>|`SNMP agent`|ink.black.now<p>Update: 10m</p>|
|Тип картриджа - magenta|<p>-</p>|`SNMP agent`|type.magenta<p>Update: 12h</p>|
|Тип картриджа - cyan|<p>-</p>|`SNMP agent`|type.cyan<p>Update: 12h</p>|
|Тип картриджа - yellow|<p>-</p>|`SNMP agent`|type.yellow<p>Update: 12h</p>|
|Max cartridge toner level - magenta|<p>-</p>|`SNMP agent`|ink.magenta.max<p>Update: 10m</p>|
|Current cartridge toner level - yellow|<p>-</p>|`SNMP agent`|ink.yellow.now<p>Update: 10m</p>|
|Pages printed - total|<p>-</p>|`SNMP agent`|pages.printed.total<p>Update: 10m</p>|
|Cartridge toner level % - cyan|<p>-</p>|`Calculated`|cyan.cartridge.toner<p>Update: 10m</p>|
|Max cartridge toner level - yellow|<p>-</p>|`SNMP agent`|ink.yellow.max<p>Update: 10m</p>|
|Cartridge toner level % - yellow|<p>-</p>|`Calculated`|yellow.cartridge.toner<p>Update: 10m</p>|
|Printer model|<p>-</p>|`SNMP agent`|model<p>Update: 12h</p>|
|Serial number|<p>-</p>|`SNMP agent`|serial.number<p>Update: 12h</p>|
|Printer location|<p>-</p>|`SNMP agent`|printer.location<p>Update: 1h</p>|
|Current cartridge toner level - magenta|<p>-</p>|`SNMP agent`|ink.magenta.now<p>Update: 10m</p>|
|Cartridge toner level % - black|<p>-</p>|`Calculated`|black.cartridge.toner<p>Update: 10m</p>|
|Max cartridge toner level - cyan|<p>-</p>|`SNMP agent`|ink.cyan.max<p>Update: 10m</p>|
|Max cartridge toner level - black|<p>-</p>|`SNMP agent`|ink.black.max<p>Update: 10m</p>|
|Тип картриджа - black|<p>-</p>|`SNMP agent`|type.black<p>Update: 12h</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Заменить голубой картридж|<p>-</p>|high|
|Заменить желтый картридж|<p>-</p>|high|
|Заменить пурпурный картридж|<p>-</p>|high|
|Заменить черный картридж|<p>-</p>|high|
|Мало тонера: голубой картридж|<p>-</p>|warning|
|Мало тонера: желтый картридж|<p>-</p>|warning|
|Мало тонера: пурпурный картридж|<p>-</p>|warning|
|Мало тонера: черный картридж|<p>-</p>|warning|
