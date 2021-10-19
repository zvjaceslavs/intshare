# Template_Kyocera FS-C8525MFP

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
|Cyan toner %|<p>-</p>|`Calculated`|cyan.percentage<p>Update: 180</p>|
|Magenta toner %|<p>-</p>|`Calculated`|magenta.percentage<p>Update: 180</p>|
|Cyan toner capacity|<p>-</p>|`SNMP agent`|cyan.capacity<p>Update: 6000</p>|
|Magenta toner capacity|<p>-</p>|`SNMP agent`|magenta.capacity<p>Update: 6000</p>|
|Magenta toner level|<p>-</p>|`SNMP agent`|magenta.level<p>Update: 180</p>|
|Yellow toner %|<p>-</p>|`Calculated`|yellow.percentage<p>Update: 180</p>|
|Cyan toner level|<p>-</p>|`SNMP agent`|cyan.level<p>Update: 180</p>|
|Model name|<p>-</p>|`SNMP agent`|printer.model<p>Update: 6000</p>|
|Yellow toner level|<p>-</p>|`SNMP agent`|yellow.level<p>Update: 180</p>|
|Yellow toner capacity|<p>-</p>|`SNMP agent`|yellow.capacity<p>Update: 6000</p>|
|Black toner capacity|<p>-</p>|`SNMP agent`|black.capacity<p>Update: 6000</p>|
|MAC address|<p>-</p>|`SNMP agent`|.1.3.6.1.2.1.2.2.1.6.1<p>Update: 6000</p>|
|Black toner level|<p>-</p>|`SNMP agent`|black.level<p>Update: 180</p>|
|Serial number|<p>-</p>|`SNMP agent`|printer.serial<p>Update: 6000</p>|
|Total prints|<p>-</p>|`SNMP agent`|nbr.prints.total<p>Update: 180</p>|
|Black toner %|<p>-</p>|`Calculated`|black.percentage<p>Update: 180</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Black toner level is below 10%|<p>-</p>|average|
|Cyan toner level is below 10%|<p>-</p>|average|
|Magenta toner level is below 10%|<p>-</p>|average|
|Yellow toner level is below 10%|<p>-</p>|average|
