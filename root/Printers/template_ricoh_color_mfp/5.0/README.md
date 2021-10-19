# Template MFP Ricoh

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
|DeviceName|<p>-</p>|`SNMP agent`|DeviceName<p>Update: 30</p>|
|totalPrints|<p>-</p>|`SNMP agent`|totalPrints<p>Update: 30</p>|
|colorPrints|<p>-</p>|`SNMP agent`|colorPrints<p>Update: 30</p>|
|BWPrints|<p>-</p>|`SNMP agent`|BWPrints<p>Update: 30</p>|
|yellowTonerLevel|<p>-</p>|`SNMP agent`|yellowTonerLevel<p>Update: 30</p>|
|SimplePing|<p>-</p>|`Simple check`|icmpping<p>Update: 30;50/1-7,00:00-24:00</p>|
|cyanTonerLevel|<p>-</p>|`SNMP agent`|cyanTonerLevel<p>Update: 30</p>|
|blackTonerLevel|<p>-</p>|`SNMP agent`|blackTonerLevel<p>Update: 30</p>|
|magentaTonerLevel|<p>-</p>|`SNMP agent`|magentaTonerLevel<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Printer unavailable|<p>Can't ping printer 3 times in last 90 seconds</p>|average|
|Ricoh black toner near end|<p>Black toner level less than 20%</p>|warning|
|Ricoh cyan toner near end|<p>Cyan toner level less than 20%</p>|warning|
|Ricoh magenta toner near end|<p>Magenta toner level less than 20%</p>|warning|
|Ricoh yellow toner near end|<p>Yellow toner level less than 20%</p>|warning|
