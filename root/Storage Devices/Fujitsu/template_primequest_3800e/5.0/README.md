# Fujitsu Primequest 3800E

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
|Discover FAN|<p>-</p>|`SNMP agent`|fans<p>Update: 1h</p>|
|Discover DIMM|<p>-</p>|`SNMP agent`|memoryModules<p>Update: 1h</p>|
|Discovety VOLTAGE|<p>-</p>|`SNMP agent`|voltages<p>Update: 1h</p>|
|Discover CPU|<p>-</p>|`SNMP agent`|cpus<p>Update: 1h</p>|
|Discovety SYSTEM BOARD|<p>-</p>|`SNMP agent`|systemBoard<p>Update: 1h</p>|
|Discover POWER SUPPLY|<p>-</p>|`SNMP agent`|powerSupply<p>Update: 1h</p>|
|Discover TEMPERATURE|<p>-</p>|`SNMP agent`|temperatureSensors<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|System exhaust airflow volume (m3/h)|<p>System exhaust airflow volume ('-1' if value not available)</p>|`SNMP agent`|afExhaustAirflowVolume<p>Update: 1m</p>|
|System Power Consumption (W)|<p>Current value of the system's power consumption (in Watts;4294967295(0xffffffff) if value not available)</p>|`SNMP agent`|pmCurrentPowerConsumption<p>Update: 60s</p>|
|System Name|<p>-</p>|`SNMP agent`|sysName.0<p>Update: 1h</p>|
|System Uptime|<p>-</p>|`SNMP agent`|sysUpTime.0<p>Update: 30s</p>|
|System Description|<p>-</p>|`SNMP agent`|sysDescr.0<p>Update: 1h</p>|
|Overall status|<p>Overall status of all monitored components in this agent ok(1):all subsystems and components working properly;no failure degraded(2):at least one component has a problem;system may still work properly error(3):severe problem;system will not work properly failed(4):one or more managed components have failed unknown(5):none of the subsystems had a valid status (e.g. during initialization)</p>|`SNMP agent`|agentStatus<p>Update: 15s</p>|
|{#SNMPVALUE} Status|<p>-</p>|`SNMP agent`|fans.5.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#SNMPVALUE} Current Speed|<p>-</p>|`SNMP agent`|fans.6.[{#SNMPINDEX}]<p>Update: 2m</p>|
|{#SNMPVALUE} Fail Reaction|<p>-</p>|`SNMP agent`|fans.8.[{#SNMPINDEX}]<p>Update: 10h</p>|
|{#SNMPVALUE} Status|<p>Memory module status Status mapping. SEL level MIB Value Warning failed-disabled(4) Warning warning(7) Error error(5) Error configuration-error(9)</p>|`SNMP agent`|memoryModules.4.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#SNMPVALUE} Capacity|<p>Memory module size (capacity in MBytes; -1 if unknown)</p>|`SNMP agent`|memoryModules.6.[{#SNMPINDEX}]<p>Update: 10h</p>|
|{#SNMPVALUE} Voltage Status|<p>Voltage status Status mapping. SEL level MIB Value Warning low-warning(7) Warning high-warning(8) Error too-low(4) Error too-high(5)</p>|`SNMP agent`|voltages.4.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#SNMPVALUE} Voltage Current Value|<p>Voltage current value. This object returns 0;if the agent can not get the value.(1/100V)</p>|`SNMP agent`|voltages.5.[{#SNMPINDEX}]<p>Update: 2m</p>|
|{#SNMPVALUE} Voltage Minimum Level|<p>Voltage minimum level (1/100V)</p>|`SNMP agent`|voltages.7.[{#SNMPINDEX}]<p>Update: 1h</p>|
|{#SNMPVALUE} Voltage Maximum Level|<p>Voltage maximum level (1/100V)</p>|`SNMP agent`|voltages.8.[{#SNMPINDEX}]<p>Update: 1h</p>|
|{#SNMPVALUE} Status|<p>CPU status Status mapping. SEL level MIB Value Warning disabled(4) Warning prefailed-warning(8) Error failed(6)</p>|`SNMP agent`|cpus.4.[{#SNMPINDEX}]<p>Update: 15s</p>|
|{#SNMPVALUE} Model Name|<p>CPU model name (e.g. Itanium2 Processor)</p>|`SNMP agent`|cpus.5.[{#SNMPINDEX}]<p>Update: 10h</p>|
|{#SNMPVALUE} Step|<p>CPU step / revision</p>|`SNMP agent`|cpus.7.[{#SNMPINDEX}]<p>Update: 10h</p>|
|{#SNMPVALUE} Current Speed|<p>CPU speed (frequency in MHz)</p>|`SNMP agent`|cpus.8.[{#SNMPINDEX}]<p>Update: 10m</p>|
|{#SNMPVALUE} Number of Cores|<p>Number of (physically available) cores within one physical CPU (for multi-core CPUs;platform dependent)</p>|`SNMP agent`|cpus.13.[{#SNMPINDEX}]<p>Update: 1h</p>|
|{#SNMPVALUE} Number of Enabled Cores|<p>Number of effectively enabled cores within one physical CPU (for multi-core CPUs;0 if unknown)</p>|`SNMP agent`|cpus.15.[{#SNMPINDEX}]<p>Update: 1h</p>|
|System Board ID#{#SNMPVALUE} Model Name|<p>Model name (e.g. 'System Board')</p>|`SNMP agent`|systemBoard.2.[{#SNMPINDEX}]<p>Update: 10h</p>|
|System Board ID#{#SNMPVALUE} Product Number|<p>Product number (may be identical to ModelName)</p>|`SNMP agent`|systemBoard.3.[{#SNMPINDEX}]<p>Update: 10h</p>|
|System Board ID#{#SNMPVALUE} Revision|<p>Revision string (e.g. 'WGS1 GS3')</p>|`SNMP agent`|systemBoard.4.[{#SNMPINDEX}]<p>Update: 10h</p>|
|System Board ID#{#SNMPVALUE} Serial Number|<p>Serial number (not available for all boards)</p>|`SNMP agent`|systemBoard.5.[{#SNMPINDEX}]<p>Update: 10h</p>|
|{#SNMPVALUE} Status|<p>Power supply status Status mapping. SEL level MIB Value Warning ac-fail(5) Warning predictive-fail(9) Error failed(4) Error not-manageable(8)</p>|`SNMP agent`|powerSupply.5.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#SNMPVALUE} Status|<p>-</p>|`SNMP agent`|temperatureSensors.5.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#SNMPVALUE} Current Temperature|<p>-</p>|`SNMP agent`|temperatureSensors.6.[{#SNMPINDEX}]<p>Update: 2m</p>|
|{#SNMPVALUE} Temperature Warning Level|<p>-</p>|`SNMP agent`|temperatureSensors.7.[{#SNMPINDEX}]<p>Update: 1h</p>|
|{#SNMPVALUE} Temperature Critical Level|<p>-</p>|`SNMP agent`|temperatureSensors.8.[{#SNMPINDEX}]<p>Update: 1h</p>|
|{#SNMPVALUE} Critical Reaction|<p>-</p>|`SNMP agent`|temperatureSensors.9.[{#SNMPINDEX}]<p>Update: 10h</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Overal status Degraded|<p>-</p>|warning|
|Overal status Error|<p>-</p>|average|
|Overal status Failed|<p>-</p>|high|
|Overal status Unknown|<p>-</p>|information|
|{#SNMPVALUE} Error|<p>-</p>|high|
|{#SNMPVALUE} Error|<p>-</p>|high|
|{#SNMPVALUE} Warning|<p>-</p>|average|
|{#SNMPVALUE} Error|<p>-</p>|high|
|{#SNMPVALUE} Warning|<p>-</p>|average|
|{#SNMPVALUE} Error|<p>-</p>|high|
|{#SNMPVALUE} Warning|<p>-</p>|average|
|{#SNMPVALUE} Status Error|<p>-</p>|high|
|{#SNMPVALUE} Status Warning|<p>-</p>|average|
|{#SNMPVALUE} Critical Temperature Level|<p>-</p>|high|
|{#SNMPVALUE} Status Error|<p>-</p>|high|
|{#SNMPVALUE} Status Warning|<p>-</p>|average|
|{#SNMPVALUE} Warning Temperature Level|<p>-</p>|average|
