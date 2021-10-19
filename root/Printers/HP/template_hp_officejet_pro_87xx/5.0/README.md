# Template Printer HP OfficeJet Pro 8xxx

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
|Level Cyan %|<p>-</p>|`Calculated`|cyan<p>Update: 600</p>|
|Cardridge Type Magenta|<p>-</p>|`SNMP agent`|magenta.cartridge.type<p>Update: 21600</p>|
|Max cartridge ink level - Magenta|<p>-</p>|`SNMP agent`|ink.magenta.max<p>Update: 3600</p>|
|Current cartridge ink level - Yellow|<p>-</p>|`SNMP agent`|ink.yellow.now<p>Update: 3600</p>|
|Max cartridge ink level - Yellow|<p>-</p>|`SNMP agent`|ink.yellow.max<p>Update: 3600</p>|
|Current cartridge ink level - Magenta|<p>-</p>|`SNMP agent`|ink.magenta.now<p>Update: 3600</p>|
|Level Magenta in %|<p>-</p>|`Calculated`|magenta<p>Update: 600</p>|
|Cardridge Type Yellow|<p>-</p>|`SNMP agent`|yellow.cartridge.type<p>Update: 21600</p>|
|Printer model|<p>-</p>|`SNMP agent`|model<p>Update: 21600</p>|
|Level Black in %|<p>-</p>|`Calculated`|black<p>Update: 600</p>|
|Level Yellow in %|<p>-</p>|`Calculated`|yellow<p>Update: 600</p>|
|Max cartridge ink level - Black|<p>-</p>|`SNMP agent`|ink.black.max<p>Update: 3600</p>|
|Current cartridge ink level - Cyan|<p>-</p>|`SNMP agent`|ink.cyan.now<p>Update: 3600</p>|
|Current cartridge ink level - Black|<p>-</p>|`SNMP agent`|ink.black.now<p>Update: 3600</p>|
|Cardridge Type Cyan|<p>-</p>|`SNMP agent`|cyan.cartridge.type<p>Update: 21600</p>|
|Cardridge Type Black|<p>-</p>|`SNMP agent`|black.cartridge.type<p>Update: 21600</p>|
|Max cartridge ink level - Cyan|<p>-</p>|`SNMP agent`|ink.cyan.max<p>Update: 3600</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Empty Ink - Black|<p>-</p>|high|
|Empty Ink - Cyan|<p>-</p>|high|
|Empty Ink - Magenta|<p>-</p>|high|
|Empty Ink - Yellow|<p>-</p>|high|
|Ink low - Black ({ITEM.LASTVALUE})|<p>-</p>|information|
|Ink low - Cyan ({ITEM.LASTVALUE})|<p>-</p>|information|
|Ink low - Magenta ({ITEM.LASTVALUE})|<p>-</p>|information|
|Ink low - Yellow ({ITEM.LASTVALUE})|<p>-</p>|information|
