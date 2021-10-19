# Template HP R5000 SNMP

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMMUNITY}|<p>-</p>|``|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Input Voltage|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.232.165.3.3.4.1.2.1<p>Update: 30s</p>|
|Bypass Power|<p>-</p>|`SNMP agent`|.1.3.6.1.2.1.33.1.5.3.1.4.1<p>Update: 30s</p>|
|System Uptime|<p>-</p>|`SNMP agent`|.1.3.6.1.2.1.1.3.0<p>Update: 1m</p>|
|Battery Current|<p>Battery Current as reported by the UPS metering. Current is positive when discharging, negative when recharging the battery.</p>|`SNMP agent`|.1.3.6.1.4.1.232.165.3.2.3.0<p>Update: 30s</p>|
|Battery Voltage|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.232.165.3.2.2.0<p>Update: 30s</p>|
|Battery Status|<p>Gives the status of the Advanced Battery Management; batteryFloating(3) status means that the charger is temporarily charging the battery to its float voltage; batteryResting(4) is the state when the battery is fully charged and none of the other actions (charging/discharging/floating) is being done.</p>|`SNMP agent`|.1.3.6.1.4.1.232.165.3.2.5.0<p>Update: 30s</p>|
|Bypass Current|<p>-</p>|`SNMP agent`|.1.3.6.1.2.1.33.1.5.3.1.3.1<p>Update: 30s</p>|
|Software Version|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.232.165.3.1.3.0<p>Update: 1d</p>|
|Input Line Bads|<p>The number of times the Input was out of tolerance in voltage or frequency.</p>|`SNMP agent`|.1.3.6.1.4.1.232.165.3.3.2.0<p>Update: 30s</p>|
|Output Current|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.232.165.3.4.4.1.3.1<p>Update: 30s</p>|
|Remaining Backup Time|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.232.165.3.2.1.0<p>Update: 30s</p>|
|Battery Temperature|<p>-</p>|`SNMP agent`|.1.3.6.1.2.1.33.1.2.7.0<p>Update: 1m</p>|
|P/N|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.232.165.1.2.6.0<p>Update: 1d</p>|
|Battery Capacity|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.232.165.3.2.4.0<p>Update: 30s</p>|
|Output Load|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.232.165.3.4.1.0<p>Update: 30s</p>|
|Bypass Voltage|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.232.165.3.5.3.1.2.1<p>Update: 30s</p>|
|Running On Battery|<p>-</p>|`SNMP agent`|.1.3.6.1.2.1.33.1.2.2.0<p>Update: 30s</p>|
|Output Power|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.232.165.3.4.4.1.4.1<p>Update: 30s</p>|
|Output Frequency|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.232.165.3.4.2.0<p>Update: 30s</p>|
|Battery Test Status|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.232.165.3.7.2.0<p>Update: 1m</p>|
|Output Voltage|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.232.165.3.4.4.1.2.1<p>Update: 30s</p>|
|S/N|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.232.165.1.2.7.0<p>Update: 1d</p>|
|Segment #1|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.232.165.3.10.2.1.2.1<p>Update: 30s</p>|
|Output Source|<p>The present source of output power. The enumeration none(2) indicates that there is no source of output power (and therefore no output power), for example, the system has opened the output breaker.</p>|`SNMP agent`|.1.3.6.1.4.1.232.165.3.4.5.0<p>Update: 30s</p>|
|Bypass Frequency|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.232.165.3.5.1.0<p>Update: 30s</p>|
|Segment #2|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.232.165.3.10.2.1.2.2<p>Update: 30s</p>|
|Model|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.232.165.1.1.5.0<p>Update: 1d</p>|
|Ambient Temperature|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.232.165.3.6.1.0<p>Update: 1m</p>|
|Test Start Time|<p>-</p>|`SNMP agent`|.1.3.6.1.2.1.33.1.7.5.0<p>Update: 30s</p>|
|MAC|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.232.165.1.2.8.0<p>Update: 1d</p>|
|Alarm Present|<p>-</p>|`SNMP agent`|.1.3.6.1.2.1.33.1.6.1.0<p>Update: 30s</p>|
|Input Frequency|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.232.165.3.3.1.0<p>Update: 30s</p>|
|Input Current|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.232.165.3.3.4.1.3.1<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOST.NAME} Allarm = {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} Ambinet Temperature = {ITEM.VALUE}|<p>-</p>|warning|
|{HOST.NAME} Battery Status = {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} Battery Test Status = {ITEM.VALUE}|<p>-</p>|warning|
|{HOST.NAME} Bypass is Activated I={ITEM.VALUE1}, P={ITEM.VALUE2}|<p>-</p>|high|
|{HOST.NAME} Danger Load Level  = {ITEM.VALUE}|<p>-</p>|average|
|{HOST.NAME} Higth Load Level = {ITEM.VALUE}|<p>-</p>|information|
|{HOST.NAME} Input Frequency  = {ITEM.VALUE}|<p>-</p>|information|
|{HOST.NAME} Input Voltage is OFF  = {ITEM.VALUE}|<p>Входное напряжение пропало, включить автомат питания, проверить напряжение вводов АВР</p>|disaster|
|{HOST.NAME} Output Frequency  = {ITEM.VALUE}|<p>-</p>|information|
|{HOST.NAME} Output Segment #1 = {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} Output Segment #2 = {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} Output Source = {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} Output Voltage is OFF  = {ITEM.VALUE}|<p>Выходное напряжение пропало, включить ИБП</p>|disaster|
|{HOST.NAME} VERY Higth Load Level = {ITEM.VALUE}|<p>-</p>|warning|
