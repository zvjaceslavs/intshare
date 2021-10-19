# Basic HUAWEI SNMP with traps AR161 and S2220E

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

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Power Supply detect|<p>Searches the CISCO-ENVMON-MIB for the Fan sensors, use ciscoEnvMonSupplyStatusDescr as key.</p>|`SNMP agent`|ciscoEnvMonSupplyStatusDescr<p>Update: 60</p>|
|Huawei chassis component|<p>Searches the Cisco MIB for the chassis model and blades.</p>|`SNMP agent`|ceAssetOrderablePartNumber<p>Update: 60</p>|
|Fan Sensors detect|<p>Searches the CISCO-ENVMON-MIB for the Fan sensors, use ciscoEnvMonFanStatusDescr as key.</p>|`SNMP agent`|ciscoEnvMonFanStatusDescr<p>Update: 60</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Temperature|<p>-</p>|`SNMP agent`|tempofhuawei<p>Update: 300</p>|
|MIB-trap-LOGIN|<p>-</p>|`SNMP trap`|snmptrap["(CISCO.*MIB)((.|[[:space:]])*)(LOGIN)"]<p>Update: 0</p>|
|CONFIG-MAN-MIB-trap|<p>-</p>|`SNMP trap`|snmptrap["CISCO-CONFIG-MAN-MIB"]<p>Update: 0</p>|
|MIB-trap-BGP|<p>-</p>|`SNMP trap`|snmptrap["(CISCO.*MIB)((.|[[:space:]])*)(BGP)"]<p>Update: 0</p>|
|Memory usage|<p>-</p>|`SNMP agent`|MemoryPoolUsed<p>Update: 300</p>|
|CPU Usage|<p>-</p>|`SNMP agent`|cpmCPUTotal5min<p>Update: 300</p>|
|uptime|<p>-</p>|`SNMP agent`|uptime<p>Update: 30</p>|
|MIB-trap-SLA|<p>-</p>|`SNMP trap`|snmptrap["(CISCO.*MIB)((.|[[:space:]])*)(SLA)"]<p>Update: 0</p>|
|State of "$1"|<p>-</p>|`SNMP agent`|ciscoEnvMonSupplyState[{#SNMPVALUE}]<p>Update: 300</p>|
|Cisco P/N: "$1"|<p>-</p>|`SNMP agent`|ceAssetOrderablePartNumber[{#SNMPVALUE}]<p>Update: 86400</p>|
|State of "$1"|<p>-</p>|`SNMP agent`|ciscoEnvMonFanState[{#SNMPVALUE}]<p>Update: 300</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|"Show run" executed on {HOST.NAME}|<p>WORK! events.php?triggerid={TRIGGER.ID} events.php?triggerid={TRIGGER.ID}&period=3600</p>|not classified|
|BGP hold time expired on {HOST.NAME}|<p>-</p>|high|
|Enter to config mode on {HOST.NAME}|<p>-</p>|not classified|
|High CPU load on {HOST.NAME}|<p>-</p>|high|
|IP SLA restored on {HOST.NAME}|<p>-</p>|information|
|IP SLA violated on {HOST.NAME}|<p>-</p>|average|
|Login Auth Error on {HOST.NAME}|<p>-</p>|warning|
|Login Auth Success on {HOST.NAME}|<p>-</p>|not classified|
|startup config changed on {HOST.NAME}|<p>-</p>|not classified|
|Temperature to high on: {HOST.NAME}:{#SNMPVALUE}|<p>-</p>|disaster|
|Problem with: {HOST.NAME}:{#SNMPVALUE}|<p>-</p>|information|
|Problem with: {HOST.NAME}:{#SNMPVALUE}|<p>-</p>|high|
