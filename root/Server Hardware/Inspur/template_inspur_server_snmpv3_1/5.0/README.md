# Template Server Inspur BMC SNMPv3

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMPV3_AUTHPASSPHRASE}|<p>-</p>|`rootuser`|Text macro|
|{$SNMPV3_PRIVPASSPHRASE}|<p>-</p>|`rootuser`|Text macro|
|{$SNMPV3_SECURITYNAME}|<p>-</p>|`sysadmin`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|TEMPERATURE Discovery|<p>-</p>|`SNMP agent`|inspur.server.temperature.dicovery<p>Update: 300</p>|
|DISK Discovery|<p>-</p>|`SNMP agent`|inspur.server.disk.dicovery<p>Update: 300</p>|
|FRU Discovery|<p>-</p>|`SNMP agent`|inspur.server.fru.dicovery<p>Update: 300</p>|
|WATCHDOG Discovery|<p>-</p>|`SNMP agent`|inspur.server.watchdog.dicovery<p>Update: 300</p>|
|FAN Discovery|<p>-</p>|`SNMP agent`|inspur.server.fan.dicovery<p>Update: 300</p>|
|POWER SUPPLY Discovery|<p>-</p>|`SNMP agent`|inspur.server.power.supply.dicovery<p>Update: 300</p>|
|MICROCONTROLLER  Discovery|<p>-</p>|`SNMP agent`|inspur.server.microcontroller.dicovery<p>Update: 300</p>|
|MEMORY Discovery|<p>-</p>|`SNMP agent`|inspur.server.memory.dicovery<p>Update: 300</p>|
|VOLTAGE Discovery|<p>-</p>|`SNMP agent`|inspur.server.voltage.dicovery<p>Update: 300</p>|
|MANAGEMENT SUBSYSTEM HEALTH  Discovery|<p>-</p>|`SNMP agent`|inspur.server.management.subsystem.health.dicovery<p>Update: 300</p>|
|PROCESSOR Discovery|<p>-</p>|`SNMP agent`|inspur.server.processor.dicovery<p>Update: 300</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|TEMPERATURE STATUS: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|inspur.server.temperature.status.[{#SNMPVALUE}]<p>Update: 300</p>|
|TEMPERATURE VALUE: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|inspur.server.temperature.value.[{#SNMPVALUE}]<p>Update: 300</p>|
|DISK STATUS: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|inspur.server.disk.status.[{#SNMPVALUE}]<p>Update: 300</p>|
|FRU INFO: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|inspur.server.fru.info.[{#SNMPVALUE}]<p>Update: 300</p>|
|WATCHDOG STATUS: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|inspur.server.watchdog.status.[{#SNMPVALUE}]<p>Update: 300</p>|
|FAN SPEED VALUE: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|inspur.server.fan.speed.value.[{#SNMPVALUE}]<p>Update: 300</p>|
|FAN STATUS: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|inspur.server.fan.status.[{#SNMPVALUE}]<p>Update: 300</p>|
|POWER SUPPLY STATUS: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|inspur.server.power.supply.status.[{#SNMPVALUE}]<p>Update: 300</p>|
|POWER SUPPLY VALUE: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|inspur.server.power.supply.value.[{#SNMPVALUE}]<p>Update: 300</p>|
|MICROCONTROLLER STATUS: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|inspur.server.microcontroller.status.[{#SNMPVALUE}]<p>Update: 300</p>|
|MEMORY STATUS: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|inspur.server.memory.status.[{#SNMPVALUE}]<p>Update: 300</p>|
|VOLTAGE STATUS: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|inspur.server.voltage.status.[{#SNMPVALUE}]<p>Update: 300</p>|
|VOLTAGE VALUE: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|inspur.server.voltage.value.[{#SNMPVALUE}]<p>Update: 300</p>|
|MANAGEMENT SUBSYSTEM HEALTH STATUS: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|inspur.server.management.subsystem.health.status.[{#SNMPVALUE}]<p>Update: 300</p>|
|PROCESSOR STATUS: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|inspur.server.processor.status.[{#SNMPVALUE}]<p>Update: 300</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|INSPUR_SERVER_TEMPERATURE_STATUS_ALARM|<p>-</p>|warning|
|INSPUR_SERVER_DISK_STATUS_ALARM|<p>-</p>|high|
|INSPUR_SERVER_WATCHDOG_STATUS_ALARM|<p>-</p>|average|
|INSPUR_SERVER_FAN_STATUS_ALARM|<p>-</p>|warning|
|INSPUR_SERVER_POWER_SUPPLY_STATUS_ALARM|<p>-</p>|high|
|INSPUR_SERVER_MICROCONTROLLER_STATUS_ALARM|<p>-</p>|average|
|INSPUR_SERVER_MEMORY_STATUS_ALARM|<p>-</p>|high|
|INSPUR_SERVER_VOLTAGE_STATUS_ALARM|<p>-</p>|average|
|INSPUR_SERVER_MANAGEMENT_SUBSYSTEM_HEALTH_STATUS_ALARM|<p>-</p>|average|
|INSPUR_SERVER_PROCESSOR_STATUS_ALARM|<p>-</p>|disaster|
