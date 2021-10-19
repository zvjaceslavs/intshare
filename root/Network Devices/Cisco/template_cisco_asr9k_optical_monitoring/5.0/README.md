# ZBX-CISCO-ASR9001-OPTICAL-MONITORING

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
|Interface Sensor|<p>ENTITY-MIB::entPhysicalDescr (.1.3.6.1.2.1.47.1.1.1.1.2) ENTITY-MIB::entPhysicalName (.1.3.6.1.2.1.47.1.1.1.1.7) A textual description of physical entity. This object should contain a string that identifies the manufacturer's name for the physical entity, and should be set to a distinct value for each version or model of the physical entity.</p>|`SNMP agent`|entPhysicalName<p>Update: 300</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Thresholds::$1 | Warning High|<p>-</p>|`SNMP agent`|entSensorThresholdRxTxValueHighWarn[{#SNMPVALUE}]<p>Update: 300</p>|
|Thresholds::$1 | Alarm High|<p>This variable indicates the value of the threshold. To correctly display or interpret this variable's value, you must also know entSensorType, entSensorScale, and entSensorPrecision. However, you can directly compare entSensorValue with the threshold values given in entSensorThresholdTable without any semantic knowledge.</p>|`SNMP agent`|entSensorThresholdRxTxValueHigh[{#SNMPVALUE}]<p>Update: 300</p>|
|Thresholds::$1 | Warning Low|<p>-</p>|`SNMP agent`|entSensorThresholdRxTxValueLowWarn[{#SNMPVALUE}]<p>Update: 300</p>|
|Thresholds::$1 | Alarm Low|<p>-</p>|`SNMP agent`|entSensorThresholdRxTxValueLow[{#SNMPVALUE}]<p>Update: 300</p>|
|$1|<p>-</p>|`SNMP agent`|entSensorValue[{#SNMPVALUE}]<p>Update: 300</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|[10.001] High signal ALARM for {#SNMPVALUE}|<p>-</p>|high|
|[10.001] High signal WARNING for {#SNMPVALUE}|<p>-</p>|warning|
|[10.001] Low signal ALARM for {#SNMPVALUE}|<p>-</p>|high|
|[10.001] Low signal WARNING for {#SNMPVALUE}|<p>-</p>|warning|
