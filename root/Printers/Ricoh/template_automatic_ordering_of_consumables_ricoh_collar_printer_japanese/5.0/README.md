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
|黄インクの現在容量|<p>-</p>|`SNMP agent`|prtMarkerSuppliesLevelyellow<p>Update: 180;3600/7,00:00-24:00</p>|
|黒インクの現在容量|<p>-</p>|`SNMP agent`|prtMarkerSuppliesLevelblack<p>Update: 180;3600/7,00:00-24:00</p>|
|青インクの現在容量|<p>-</p>|`SNMP agent`|prtMarkerSuppliesLevelcyan<p>Update: 180;3600/7,00:00-24:00</p>|
|mono color|<p>-</p>|`SNMP agent`|monoprint<p>Update: 600;3600/1-6,19:00-24:00;3600/1-6,00:00-08:00;3600/7,00:00-24:00</p>|
|赤インクの現在容量|<p>-</p>|`SNMP agent`|prtMarkerSuppliesLevelmagen<p>Update: 180;3600/7,00:00-24:00</p>|
|廃インクボックス 空き容量|<p>インク洗浄時の廃インクを捨てる場所。 これが満杯になるとプリンターが印刷出来なくなるので、確実な交換をして下さい。</p>|`SNMP agent`|prtMarkerSuppliesLeveldustBOX<p>Update: 1800;3600/1-5,00:00-08:00;3600/6-7,00:00-24:00;3600/1-5,19:00-24:00</p>|
|Full color|<p>-</p>|`SNMP agent`|fullcolor<p>Update: 600;3600/1-6,19:00-24:00;3600/1-6,00:00-08:00;3600/7,00:00-24:00</p>|
|Save color|<p>-</p>|`SNMP agent`|saveprint<p>Update: 600;3600/1-6,19:00-24:00;3600/1-6,00:00-08:00;3600/7,00:00-24:00</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|赤インク切れ|<p>-</p>|average|
|赤インク少量|<p>-</p>|information|
|青インク切れ|<p>-</p>|average|
|青インク少量|<p>-</p>|information|
|黄インク切れ|<p>-</p>|average|
|黄インク少量|<p>-</p>|information|
|黒インク切れ|<p>-</p>|average|
|黒インク少量|<p>-</p>|information|
