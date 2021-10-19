# Template Printer Xerox WorkCentre 5222

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
|Pages printed - black|<p>-</p>|`SNMP agent`|pages.printed.black<p>Update: 10800</p>|
|Max cartridge Toner level - black|<p>-</p>|`SNMP agent`|ink.black.max<p>Update: 30</p>|
|Pages printed - total|<p>-</p>|`SNMP agent`|pages.printed.total<p>Update: 10800</p>|
|Current cartridge Drum level - black|<p>-</p>|`SNMP agent`|drum.black.now<p>Update: 30</p>|
|Cartridge drum level % - black|<p>-</p>|`Calculated`|black.cartridge.drum<p>Update: 30</p>|
|Printer location|<p>-</p>|`SNMP agent`|printer.location<p>Update: 21600</p>|
|Max cartridge Drum level - black|<p>-</p>|`SNMP agent`|drum.black.max<p>Update: 30</p>|
|Type of cartridge - black|<p>-</p>|`SNMP agent`|black.cartridge.type<p>Update: 21600</p>|
|Cartridge toner level % - black|<p>-</p>|`Calculated`|black.cartridge.toner<p>Update: 30</p>|
|Serial number|<p>-</p>|`SNMP agent`|serial.number<p>Update: 21600</p>|
|Type of drum - black|<p>-</p>|`SNMP agent`|black.drum.type<p>Update: 21600</p>|
|Pages printed - color|<p>-</p>|`SNMP agent`|pages.printed.color<p>Update: 10800</p>|
|Printer model|<p>-</p>|`SNMP agent`|model<p>Update: 21600</p>|
|Current cartridge toner level - black|<p>-</p>|`SNMP agent`|ink.black.now<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Empty cartridge drum - black|<p>-</p>|high|
|Empty cartridge toner - black|<p>-</p>|high|
|Low cartridge drum - black|<p>-</p>|information|
|Low cartridge toner - black|<p>-</p>|information|
