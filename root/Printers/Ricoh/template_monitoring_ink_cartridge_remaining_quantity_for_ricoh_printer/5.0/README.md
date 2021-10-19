# Template Ricoh color printer

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
|all print|<p>-</p>|`SNMP agent`|allprint<p>Update: 600;3600/1-6,19:00-24:00;3600/1-6,00:00-08:00;3600/7,00:00-24:00</p>|
|Current volume of yellow ink|<p>-</p>|`SNMP agent`|prtMarkerSuppliesLevelyellow<p>Update: 180;3600/7,00:00-24:00</p>|
|Current capacity of black ink|<p>-</p>|`SNMP agent`|prtMarkerSuppliesLevelblack<p>Update: 180;3600/7,00:00-24:00</p>|
|Current capacity of blue ink|<p>-</p>|`SNMP agent`|prtMarkerSuppliesLevelcyan<p>Update: 180;3600/7,00:00-24:00</p>|
|mono color|<p>-</p>|`SNMP agent`|monoprint<p>Update: 600;3600/1-6,19:00-24:00;3600/1-6,00:00-08:00;3600/7,00:00-24:00</p>|
|Current volume of red ink|<p>-</p>|`SNMP agent`|prtMarkerSuppliesLevelmagen<p>Update: 180;3600/7,00:00-24:00</p>|
|Waste ink box free space|<p>Place where the waste ink at the ink head cleaning is discarded. If this becomes full, the printer will not be able to print, so please change it by then.</p>|`SNMP agent`|prtMarkerSuppliesLeveldustBOX<p>Update: 1800;3600/1-5,00:00-08:00;3600/6-7,00:00-24:00;3600/1-5,19:00-24:00</p>|
|Full color|<p>-</p>|`SNMP agent`|fullcolor<p>Update: 600;3600/1-6,19:00-24:00;3600/1-6,00:00-08:00;3600/7,00:00-24:00</p>|
|Save color|<p>-</p>|`SNMP agent`|saveprint<p>Update: 600;3600/1-6,19:00-24:00;3600/1-6,00:00-08:00;3600/7,00:00-24:00</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Red ink run out|<p>-</p>|average|
|Red ink a small amount|<p>-</p>|information|
|Blue ink run out|<p>-</p>|average|
|Small amount of blue ink|<p>-</p>|information|
|Yellow ink run out|<p>-</p>|average|
|Yellow ink a small amount|<p>-</p>|information|
|Black ink running out|<p>-</p>|average|
|Small amount of black ink|<p>-</p>|information|
