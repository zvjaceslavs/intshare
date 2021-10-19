# Konica C3110 SNMP

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
|Toner (Black) - REMAINS|<p>-</p>|`SNMP agent`|tonerblack.remains<p>Update: 30m</p>|
|Transfer Unit - REMAINS|<p>-</p>|`SNMP agent`|transferunit.remains<p>Update: 1h</p>|
|Toner (Magenta) - FULL|<p>-</p>|`SNMP agent`|tonermagenta.full<p>Update: 30m</p>|
|Toner (Black)|<p>-</p>|`Calculated`|tonerblack<p>Update: 30m</p>|
|Imaging Unit (Cyan) - REMAINS|<p>-</p>|`SNMP agent`|imagingcyan.remains<p>Update: 30m</p>|
|Toner (Yellow) - FULL|<p>-</p>|`SNMP agent`|toneryellow.full<p>Update: 30m</p>|
|Toner (Cyan) - FULL|<p>-</p>|`SNMP agent`|tonercyan.full<p>Update: 30m</p>|
|Imaging Unit (Magenta) - FULL|<p>-</p>|`SNMP agent`|imagingmagenta.full<p>Update: 30m</p>|
|Imaging Unit (Yellow) - REMAINS|<p>-</p>|`SNMP agent`|imagingyellow.remains<p>Update: 30m</p>|
|Toner (Cyan)|<p>-</p>|`Calculated`|tonercyan<p>Update: 30m</p>|
|Imaging Unit (Yellow)|<p>-</p>|`Calculated`|imagingyellow<p>Update: 30m</p>|
|Transfer Belt - FULL|<p>-</p>|`SNMP agent`|transferbelt.full<p>Update: 1h</p>|
|Fuser Unit|<p>-</p>|`Calculated`|fuserunit<p>Update: 1h</p>|
|Imaging Unit (Cyan)|<p>-</p>|`Calculated`|imagingcyan<p>Update: 30m</p>|
|Toner (Yellow)|<p>-</p>|`Calculated`|toneryellow<p>Update: 30m</p>|
|Fuser Unit - FULL|<p>-</p>|`SNMP agent`|fuserunit.full<p>Update: 1h</p>|
|Imaging Unit (Magenta)|<p>-</p>|`Calculated`|imagingmagenta<p>Update: 30m</p>|
|Serial|<p>-</p>|`SNMP agent`|printerserial<p>Update: 1h</p>|
|Transfer Belt - REMAINS|<p>-</p>|`SNMP agent`|transferbelt.remains<p>Update: 1h</p>|
|Fuser Unit - REMAINS|<p>-</p>|`SNMP agent`|fuserunit.remains<p>Update: 1h</p>|
|Imaging Unit (Cyan) - FULL|<p>-</p>|`SNMP agent`|imagingcyan.full<p>Update: 30m</p>|
|Imaging Unit (Yellow) - FULL|<p>-</p>|`SNMP agent`|imagingyellow.full<p>Update: 30m</p>|
|Imaging Unit (Black) - FULL|<p>-</p>|`SNMP agent`|imagingblack.full<p>Update: 30m</p>|
|Transfer Unit|<p>-</p>|`Calculated`|transferunit<p>Update: 1h</p>|
|Toner (Yellow) - REMAINS|<p>-</p>|`SNMP agent`|toneryellow.remains<p>Update: 30m</p>|
|Toner (Magenta)|<p>-</p>|`Calculated`|tonermagenta<p>Update: 30m</p>|
|Toner (Black) - FULL|<p>-</p>|`SNMP agent`|tonerblack.full<p>Update: 30m</p>|
|Transfer Belt|<p>-</p>|`Calculated`|transferbelt<p>Update: 1h</p>|
|Transfer Unit - FULL|<p>-</p>|`SNMP agent`|transferunit.full<p>Update: 1h</p>|
|Toner (Cyan) - REMAINS|<p>-</p>|`SNMP agent`|tonercyan.remains<p>Update: 30m</p>|
|Imaging Unit (Black)|<p>-</p>|`Calculated`|imagingblack<p>Update: 30m</p>|
|Imaging Unit (Black) - REMAINS|<p>-</p>|`SNMP agent`|imagingblack.remains<p>Update: 30m</p>|
|Waste Toner Bottle|<p>-</p>|`SNMP agent`|wastetoner<p>Update: 10m</p>|
|Model|<p>-</p>|`SNMP agent`|printermodel<p>Update: 1h</p>|
|Imaging Unit (Magenta) - REMAINS|<p>-</p>|`SNMP agent`|imagingmagenta.remains<p>Update: 30m</p>|
|Toner (Magenta) - REMAINS|<p>-</p>|`SNMP agent`|tonermagenta.remains<p>Update: 30m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOST.NAME} Fuser Unit|<p>-</p>|warning|
|{HOST.NAME} Imaging Unit Black < 5%|<p>-</p>|warning|
|{HOST.NAME} Imaging Unit Cyan < 5%|<p>-</p>|warning|
|{HOST.NAME} Imaging Unit Magenta < 5%|<p>-</p>|warning|
|{HOST.NAME} Imaging Unit Yellow < 5%|<p>-</p>|warning|
|Заканчивается черный тонер в МФУ {HOST.NAME} артикул для заказа нового тонера "XL303539579" - Наименование в 1С УПП "TNP51K Toner Cartridge К, картридж черный"|<p>-</p>|average|
|Заканчивается черный тонер в МФУ {HOST.NAME} артикул для заказа нового тонера "XL303539582" - Наименование в 1С УПП "TNP51C Toner Cartridge C, картридж синий"|<p>-</p>|average|
|Заканчивается черный тонер в МФУ {HOST.NAME} артикул для заказа нового тонера "XL303539581" - Наименование в 1С УПП "TNP51M Toner Cartridge M, картридж малиновый"|<p>-</p>|average|
|Заканчивается черный тонер в МФУ {HOST.NAME} артикул для заказа нового тонера "XL303539580" - Наименование в 1С УПП "TNP51Y Toner Cartridge Y, картридж желтый"|<p>-</p>|average|
|{HOST.NAME} Transfer Belt|<p>-</p>|warning|
|{HOST.NAME} Transfer Unit|<p>-</p>|warning|
|{HOST.NAME} Waste Toner Near Full|<p>-</p>|warning|
