# Template Printer Xerox Phaser 4622

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
|Max cartridge toner level - black|<p>-</p>|`SNMP agent`|ink.black.max<p>Update: 30</p>|
|serial number|<p>-</p>|`SNMP agent`|serial.number<p>Update: 30</p>|
|Pages printed - total|<p>-</p>|`SNMP agent`|Pages_printed_total<p>Update: 30</p>|
|Cartridge toner level % - black|<p>-</p>|`Calculated`|black.cartridge.toner<p>Update: 30</p>|
|Current cartridge toner level - black|<p>-</p>|`SNMP agent`|ink.black.now<p>Update: 30</p>|
|Printer location|<p>-</p>|`SNMP agent`|printer.location<p>Update: 30</p>|
|Printer model|<p>-</p>|`SNMP agent`|model<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Empty cartridge toner - black|<p>-</p>|high|
|Low cartridge toner - black|<p>-</p>|information|
