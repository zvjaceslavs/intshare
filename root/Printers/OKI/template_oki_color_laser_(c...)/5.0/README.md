# OKI

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
|Fuser max level|<p>-</p>|`SNMP agent`|usageFuserMaxLevel.1<p>Update: 300</p>|
|Belt max level|<p>-</p>|`SNMP agent`|usageBeltMaxLevel.1<p>Update: 300</p>|
|Total pages printed|<p>-</p>|`SNMP agent`|usagePrinterUnitCounter.1<p>Update: 300</p>|
|Yellow Toner Level %|<p>-</p>|`SNMP agent`|usageTonerCurrentLevel.4<p>Update: 300</p>|
|Cyan Drum count|<p>-</p>|`SNMP agent`|usageDrumCurrentLevel.2<p>Update: 300</p>|
|Yellow Drum count|<p>-</p>|`SNMP agent`|usageDrumCurrentLevel.4<p>Update: 300</p>|
|Magenta Drum level %|<p>-</p>|`Calculated`|magentaDrumLevelPercCalc<p>Update: 300</p>|
|Black Drum max|<p>-</p>|`SNMP agent`|usageDrumMaxLevel.1<p>Update: 300</p>|
|Fuser count|<p>-</p>|`SNMP agent`|usageFuserCurrentLevel.1<p>Update: 300</p>|
|Fuser level %|<p>-</p>|`Calculated`|FuserLevelPercCalc<p>Update: 300</p>|
|Belt count|<p>-</p>|`SNMP agent`|usageBeltCurrentLevel.1<p>Update: 300</p>|
|Black Drum count|<p>-</p>|`SNMP agent`|usageDrumCurrentLevel.1<p>Update: 300</p>|
|Black Toner Level %|<p>-</p>|`SNMP agent`|usageTonerCurrentLevel.1<p>Update: 300</p>|
|Cyan Drum max|<p>-</p>|`SNMP agent`|usageDrumMaxLevel.2<p>Update: 300</p>|
|Cyan Toner Level %|<p>-</p>|`SNMP agent`|usageTonerCurrentLevel.2<p>Update: 300</p>|
|Cyan Drum level %|<p>-</p>|`Calculated`|cyanDrumLevelPercCalc<p>Update: 300</p>|
|Yellow Drum level %|<p>-</p>|`Calculated`|yellowDrumLevelPercCalc<p>Update: 300</p>|
|Magenta Toner Level %|<p>-</p>|`SNMP agent`|usageTonerCurrentLevel.3<p>Update: 300</p>|
|Black Drum level %|<p>-</p>|`Calculated`|blackDrumLevelPercCalc<p>Update: 300</p>|
|Magenta Drum max|<p>-</p>|`SNMP agent`|usageDrumMaxLevel.3<p>Update: 300</p>|
|Magenta Drum count|<p>-</p>|`SNMP agent`|usageDrumCurrentLevel.3<p>Update: 300</p>|
|Belt level %|<p>-</p>|`Calculated`|BeltLevelPercCalc<p>Update: 300</p>|
|Yellow Drum max|<p>-</p>|`SNMP agent`|usageDrumMaxLevel.4<p>Update: 300</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Order belt for {HOST.NAME}|<p>-</p>|warning|
|Order black image drum for {HOST.NAME}|<p>-</p>|warning|
|Order black toner for {HOST.NAME}|<p>-</p>|warning|
|Order cyan image drum for {HOST.NAME}|<p>-</p>|warning|
|Order cyan toner for {HOST.NAME}|<p>-</p>|warning|
|Order fuser for {HOST.NAME}|<p>-</p>|warning|
|Order magenta image drum for {HOST.NAME}|<p>-</p>|warning|
|Order magenta toner for {HOST.NAME}|<p>-</p>|warning|
|Order yellow image drum for {HOST.NAME}|<p>-</p>|warning|
|Order yellow toner for {HOST.NAME}|<p>-</p>|warning|
