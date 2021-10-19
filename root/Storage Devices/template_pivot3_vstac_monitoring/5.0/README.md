# Template SNMP Pivot3

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
|Drive Status - F00|<p>-</p>|`SNMP agent`|driveStatusf00<p>Update: 15m</p>|
|Temperature Status|<p>-</p>|`SNMP agent`|temperatureStatus<p>Update: 1h</p>|
|Drive Status - F02|<p>-</p>|`SNMP agent`|driveStatusf02<p>Update: 15m</p>|
|Drive Status - F11|<p>-</p>|`SNMP agent`|driveStatusf11<p>Update: 15m</p>|
|Drive Status - F05|<p>-</p>|`SNMP agent`|driveStatusf05<p>Update: 15m</p>|
|Fan Status|<p>-</p>|`SNMP agent`|fanStatus<p>Update: 1h</p>|
|Drive Status - F04|<p>-</p>|`SNMP agent`|driveStatusf04<p>Update: 15m</p>|
|Drive Status - F08|<p>-</p>|`SNMP agent`|driveStatusf08<p>Update: 15m</p>|
|Drive Status - F03|<p>-</p>|`SNMP agent`|driveStatusf03<p>Update: 15m</p>|
|Drive Status - R13 - Cache|<p>-</p>|`SNMP agent`|driveStatusr13<p>Update: 15m</p>|
|Drive Status - F09|<p>-</p>|`SNMP agent`|driveStatusf09<p>Update: 15m</p>|
|Drive Status - F10|<p>-</p>|`SNMP agent`|driveStatusf10<p>Update: 15m</p>|
|Drive Status - R12 - Cache|<p>-</p>|`SNMP agent`|driveStatusr12<p>Update: 15m</p>|
|Drive Status - F06|<p>-</p>|`SNMP agent`|driveStatusf06<p>Update: 15m</p>|
|Power Supply Status|<p>-</p>|`SNMP agent`|powerSupplyStatus<p>Update: 1h</p>|
|Drive Status - F01|<p>-</p>|`SNMP agent`|driveStatusf01<p>Update: 15m</p>|
|Drive Status - F07|<p>-</p>|`SNMP agent`|driveStatusf07<p>Update: 15m</p>|
|Node State|<p>-</p>|`SNMP agent`|state<p>Update: 1h</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Drive status for F00 has changed on {HOST.NAME}|<p>-</p>|information|
|Drive status for F01 has changed on {HOST.NAME}|<p>-</p>|information|
|Drive status for F02 has changed on {HOST.NAME}|<p>-</p>|information|
|Drive status for F03 has changed on {HOST.NAME}|<p>-</p>|information|
|Drive status for F04 has changed on {HOST.NAME}|<p>-</p>|information|
|Drive status for F05 has changed on {HOST.NAME}|<p>-</p>|information|
|Drive status for F06 has changed on {HOST.NAME}|<p>-</p>|information|
|Drive status for F07 has changed on {HOST.NAME}|<p>-</p>|information|
|Drive status for F08 has changed on {HOST.NAME}|<p>-</p>|information|
|Drive status for F09 has changed on {HOST.NAME}|<p>-</p>|information|
|Drive status for F10 has changed on {HOST.NAME}|<p>-</p>|information|
|Drive status for F11 has changed on {HOST.NAME}|<p>-</p>|information|
|Drive status for R12 (Cache) has changed on {HOST.NAME}|<p>-</p>|information|
|Drive status for R13 (Cache) has changed on {HOST.NAME}|<p>-</p>|information|
|Drive status is degraded for F00 on {HOST.NAME}|<p>-</p>|warning|
|Drive status is degraded for F01 on {HOST.NAME}|<p>-</p>|warning|
|Drive status is degraded for F02 on {HOST.NAME}|<p>-</p>|warning|
|Drive status is degraded for F03 on {HOST.NAME}|<p>-</p>|warning|
|Drive status is degraded for F04 on {HOST.NAME}|<p>-</p>|warning|
|Drive status is degraded for F05 on {HOST.NAME}|<p>-</p>|warning|
|Drive status is degraded for F06 on {HOST.NAME}|<p>-</p>|warning|
|Drive status is degraded for F07 on {HOST.NAME}|<p>-</p>|warning|
|Drive status is degraded for F08 on {HOST.NAME}|<p>-</p>|warning|
|Drive status is degraded for F09 on {HOST.NAME}|<p>-</p>|warning|
|Drive status is degraded for F10 on {HOST.NAME}|<p>-</p>|warning|
|Drive status is degraded for F11 on {HOST.NAME}|<p>-</p>|warning|
|Drive status is degraded for R12 on {HOST.NAME}|<p>-</p>|warning|
|Drive status is degraded for R13 on {HOST.NAME}|<p>-</p>|warning|
|Drive status is failed for F00 on {HOST.NAME}|<p>-</p>|high|
|Drive status is failed for F01 on {HOST.NAME}|<p>-</p>|high|
|Drive status is failed for F02 on {HOST.NAME}|<p>-</p>|high|
|Drive status is failed for F03 on {HOST.NAME}|<p>-</p>|high|
|Drive status is failed for F04 on {HOST.NAME}|<p>-</p>|high|
|Drive status is failed for F05 on {HOST.NAME}|<p>-</p>|high|
|Drive status is failed for F06 on {HOST.NAME}|<p>-</p>|high|
|Drive status is failed for F07 on {HOST.NAME}|<p>-</p>|high|
|Drive status is failed for F08 on {HOST.NAME}|<p>-</p>|high|
|Drive status is failed for F09 on {HOST.NAME}|<p>-</p>|high|
|Drive status is failed for F10 on {HOST.NAME}|<p>-</p>|high|
|Drive status is failed for F11 on {HOST.NAME}|<p>-</p>|high|
|Drive status is failed for R12 on {HOST.NAME}|<p>-</p>|high|
|Drive status is failed for R13 on {HOST.NAME}|<p>-</p>|high|
|Fan status on {HOST.NAME} has changed from normal|<p>-</p>|high|
|Node state on {HOST.NAME} has changed from normal|<p>-</p>|high|
|Power supply status on {HOST.NAME} has changed from normal|<p>-</p>|high|
|Temperature status on {HOST.NAME} has changed from normal|<p>-</p>|high|
