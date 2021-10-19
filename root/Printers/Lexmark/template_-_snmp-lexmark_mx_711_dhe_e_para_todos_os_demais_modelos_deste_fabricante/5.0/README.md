# Template - SNMP - Lexmark MONO

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
|Toner print capacity|<p>-</p>|`SNMP agent`|prtMarkerSuppliesMaxCapacity<p>Update: 3600</p>|
|Maintenance Kit capacity|<p>-</p>|`SNMP agent`|MaintenanceKitMaxCapacity<p>Update: 3600</p>|
|Device Manufacturer|<p>The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|deviceManufacturer<p>Update: 3600</p>|
|Toner print level|<p>-</p>|`SNMP agent`|prtMarkerSuppliesLevel<p>Update: 80s</p>|
|Printer Status|<p>-</p>|`SNMP agent`|prtConsoleDescription<p>Update: 60</p>|
|Page Counter|<p>-</p>|`SNMP agent`|prtMarkerLifeCount<p>Update: 60</p>|
|Kit Rolo|<p>-</p>|`SNMP agent`|Kitrolo<p>Update: 30s</p>|
|KIT Manutencao|<p>-</p>|`SNMP agent`|Kitmanutencao<p>Update: 30s</p>|
|01 Device model|<p>-</p>|`SNMP agent`|deviceModel<p>Update: 30</p>|
|05 Device Serial Number|<p>-</p>|`SNMP agent`|serialNumber<p>Update: 3600</p>|
|Maintenance Kit level|<p>-</p>|`SNMP agent`|MaintenanceKitCurrentLevel<p>Update: 60s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Kit manutencao abaixo de 5%|<p>-</p>|average|
|Kit Rolo abaixo de 5%|<p>-</p>|average|
|Toner Abaixo de 5%|<p>-</p>|average|
|Toner esgotado|<p>-</p>|high|
|Unidade de Imagem abaixo de 9%|<p>-</p>|average|
