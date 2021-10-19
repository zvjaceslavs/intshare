# Template Sharp Printers

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

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Printer Paper Tray|<p>-</p>|`SNMP agent`|sharp.prt.snmp.tray<p>Update: 30</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Cyan Developer Usage|<p>-</p>|`SNMP agent`|sharp.printer.toner.cyan.dev.usage<p>Update: 30</p>|
|Magenta Developer Usage|<p>-</p>|`SNMP agent`|sharp.printer.toner.magenta.dev.usage<p>Update: 30</p>|
|Yellow Developer Usage|<p>-</p>|`SNMP agent`|sharp.printer.toner.yellow.dev.usage<p>Update: 30</p>|
|Waste Toner Usage|<p>-</p>|`SNMP agent`|sharp.printer.toner.waste.usage<p>Update: 30</p>|
|Cyan Toner Usage|<p>-</p>|`SNMP agent`|sharp.printer.toner.cyan.usage<p>Update: 30</p>|
|Yellow Photoconductive Drum Usage|<p>-</p>|`SNMP agent`|sharp.printer.toner.yellow.drum.usage<p>Update: 30</p>|
|Black Photoconductive Drum Usage|<p>-</p>|`SNMP agent`|sharp.printer.toner.black.drum.usage<p>Update: 30</p>|
|Fusing Unit Usage|<p>-</p>|`SNMP agent`|sharp.printer.fusing.unit.usage<p>Update: 30</p>|
|Magenta Photoconductive Drum Usage|<p>-</p>|`SNMP agent`|sharp.printer.toner.magenta.drum.usage<p>Update: 30</p>|
|Cyan Photoconductive Drum Usage|<p>-</p>|`SNMP agent`|sharp.printer.toner.cyan.drum.usage<p>Update: 30</p>|
|Yellow Toner Usage|<p>-</p>|`SNMP agent`|sharp.printer.toner.yellow.usage<p>Update: 30</p>|
|Black Toner Usage|<p>-</p>|`SNMP agent`|sharp.printer.toner.black.usage<p>Update: 30</p>|
|Black Developer Usage|<p>-</p>|`SNMP agent`|sharp.printer.toner.black.dev.usage<p>Update: 30</p>|
|Magenta Toner Usage|<p>-</p>|`SNMP agent`|sharp.printer.toner.magenta.usage<p>Update: 30</p>|
|Paper Trays $1|<p>-</p>|`SNMP agent`|sharp.prt.snmp.tray.["{#SNMPINDEX}"]<p>Update: 30</p>|
|Paper Trays $1 Level|<p>-</p>|`SNMP agent`|sharp.prt.snmp.tray.level.["{#SNMPINDEX}"]<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Black Toner Emtpy|<p>-</p>|warning|
|Black Toner Low|<p>-</p>|information|
|Cyan Toner Empty|<p>-</p>|warning|
|Cyan Toner Low|<p>-</p>|information|
|Magenta Toner Empty|<p>-</p>|warning|
|Magenta Toner Low|<p>-</p>|information|
|Yellow Toner Empty|<p>-</p>|warning|
|Yellow Toner Low|<p>-</p>|information|
|Paper Tray :: {#SNMPVALUE} is Empty|<p>-</p>|information|
