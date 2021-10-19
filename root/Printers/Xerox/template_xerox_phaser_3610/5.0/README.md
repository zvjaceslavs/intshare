# Template Printer Xerox Phaser 3610

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
|Current cartridge toner level - black|<p>-</p>|`SNMP agent`|ink.black.now<p>Update: 10m</p>|
|Printer location|<p>-</p>|`SNMP agent`|printer.location<p>Update: 1h</p>|
|Serial number|<p>-</p>|`SNMP agent`|serial.number<p>Update: 1h</p>|
|Printer model|<p>-</p>|`SNMP agent`|model<p>Update: 1h</p>|
|Max cartridge toner level - black|<p>-</p>|`SNMP agent`|ink.black.max<p>Update: 10m</p>|
|Type of cartridge - black|<p>-</p>|`SNMP agent`|black.cartridge.type<p>Update: 1h</p>|
|Pages printed - total|<p>-</p>|`SNMP agent`|pages.printed.total<p>Update: 30s</p>|
|Cartridge toner level % - black|<p>-</p>|`Calculated`|black.cartridge.toner<p>Update: 10m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Empty cartridge toner - black|<p>-</p>|high|
|Low cartridge toner - black|<p>-</p>|information|
