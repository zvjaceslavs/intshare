# Konica C3100P SNMP

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
|Toner (Black)|<p>-</p>|`SNMP agent`|tonerblack<p>Update: 30m</p>|
|Transfer Unit|<p>-</p>|`SNMP agent`|transferunit<p>Update: 1h</p>|
|Transfer Belt|<p>-</p>|`SNMP agent`|transferbelt<p>Update: 1h</p>|
|Imaging Unit (Magenta)|<p>-</p>|`SNMP agent`|imagingmagenta<p>Update: 30m</p>|
|Serial|<p>-</p>|`SNMP agent`|printerserial<p>Update: 1h</p>|
|Model|<p>-</p>|`SNMP agent`|printermodel<p>Update: 1h</p>|
|Toner (Cyan)|<p>-</p>|`SNMP agent`|tonercyan<p>Update: 30m</p>|
|Imaging Unit (Black)|<p>-</p>|`SNMP agent`|imagingblack<p>Update: 30m</p>|
|Imaging Unit (Yellow)|<p>-</p>|`SNMP agent`|imagingyellow<p>Update: 30m</p>|
|Toner (Magenta)|<p>-</p>|`SNMP agent`|tonermagenta<p>Update: 30m</p>|
|Toner (Yellow)|<p>-</p>|`SNMP agent`|toneryellow<p>Update: 30m</p>|
|Imaging Unit (Cyan)|<p>-</p>|`SNMP agent`|imagingcyan<p>Update: 30m</p>|
|Waste Toner Bottle|<p>-</p>|`SNMP agent`|wastetoner<p>Update: 10m</p>|
|Fuser Unit|<p>-</p>|`SNMP agent`|fuserunit<p>Update: 1h</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOST.NAME} Black 1%|<p>-</p>|high|
|{HOST.NAME} Black < 5%|<p>-</p>|warning|
|{HOST.NAME} Cyan 1%|<p>-</p>|high|
|{HOST.NAME} Cyan < 5%|<p>-</p>|warning|
|{HOST.NAME} Fuser Unit|<p>-</p>|warning|
|{HOST.NAME} Imaging Unit Black 1%|<p>-</p>|high|
|{HOST.NAME} Imaging Unit Black < 5%|<p>-</p>|warning|
|{HOST.NAME} Imaging Unit Cyan 1%|<p>-</p>|high|
|{HOST.NAME} Imaging Unit Cyan < 5%|<p>-</p>|warning|
|{HOST.NAME} Imaging Unit Magenta 1%|<p>-</p>|high|
|{HOST.NAME} Imaging Unit Magenta < 5%|<p>-</p>|warning|
|{HOST.NAME} Imaging Unit Yellow 1%|<p>-</p>|high|
|{HOST.NAME} Imaging Unit Yellow < 5%|<p>-</p>|warning|
|{HOST.NAME} Magenta 1%|<p>-</p>|high|
|{HOST.NAME} Magenta < 5%|<p>-</p>|warning|
|{HOST.NAME} Transfer Belt|<p>-</p>|warning|
|{HOST.NAME} Transfer Unit|<p>-</p>|warning|
|{HOST.NAME} Waste Toner Near Full|<p>-</p>|high|
|{HOST.NAME} Yellow 1%|<p>-</p>|high|
|{HOST.NAME} Yellow < 5%|<p>-</p>|warning|
