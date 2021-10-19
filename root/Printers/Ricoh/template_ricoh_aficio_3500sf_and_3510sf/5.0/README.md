# Template Ricoh Aficio 3500SF e 3510SF

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
|Black Toner Level %|<p>-</p>|`SNMP agent`|blackTonerLevel<p>Update: 30</p>|
|Total Copy Pages|<p>-</p>|`SNMP agent`|pagecopytotal<p>Update: 30</p>|
|SimplePing|<p>-</p>|`Simple check`|icmpping<p>Update: 30;50/1-7,00:00-24:00</p>|
|Total Printed Pages|<p>-</p>|`SNMP agent`|pageprintedtotal<p>Update: 30</p>|
|Total Pages|<p>-</p>|`SNMP agent`|pagecountertotal<p>Update: 30</p>|
|DeviceName|<p>-</p>|`SNMP agent`|DeviceName<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Printer unavailable|<p>Can't ping printer 3 times in last 90 seconds</p>|average|
|Ricoh black toner near end|<p>Black toner level less than 20%</p>|warning|
