# Hitachi DiskArray Monitor Template

## Description

Hitachi_DiskArray_monitor_template Known Issues: device : G200，G400，G800

## Overview

Monitor Template of Hitachi DiskArray


Suitable for G200, G400, G800


Repalce macro {$CLOUD\_SNMP\_COMMUNITY} with your snmp community

## Author

zhangzhefeng

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$CLOUD_SNMP_COMMUNITY}|<p>-</p>|`public`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|DKC Discovery|<p>-</p>|`SNMP agent`|DKCDiscovery<p>Update: 12h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|DKC Battery Condition {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|DKCBatteryCondition.[{#SNMPINDEX}]<p>Update: 10m</p>|
|DKC Cache Condition {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|DKCCacheCondition.[{#SNMPINDEX}]<p>Update: 10m</p>|
|DKC Environment Condition {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|DKCEnvironmentCondition.[{#SNMPINDEX}]<p>Update: 10m</p>|
|DKC Fan Condition {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|DKCFanCondition.[{#SNMPINDEX}]<p>Update: 10m</p>|
|DKC Internal Bus Condition {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|DKCInternalBusCondition.[{#SNMPINDEX}]<p>Update: 10m</p>|
|DKC Power Supply Condition {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|DKCPowerSupplyCondition.[{#SNMPINDEX}]<p>Update: 10m</p>|
|DKC Processor Condition {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|DKCProcessorCondition.[{#SNMPINDEX}]<p>Update: 10m</p>|
|DKC Shared Memory Condition {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|DKCSharedMemoryCondition.[{#SNMPINDEX}]<p>Update: 10m</p>|
|DKU Drive Condition {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|DKUDriveCondition.[{#SNMPINDEX}]<p>Update: 10m</p>|
|DKU Environment Condition {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|DKUEnvironmentCondition.[{#SNMPINDEX}]<p>Update: 10m</p>|
|DKU Fan Condition {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|DKUFanCondition.[{#SNMPINDEX}]<p>Update: 10m</p>|
|DKU Power Supply Condition {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|DKUPowerSupplyCondition.[{#SNMPINDEX}]<p>Update: 10m</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|DKC Battery Abnormal|<p>-</p>|<p>**Expression**: {Hitachi_DiskArray_monitor_template:DKCBatteryCondition.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
|DKC Cache Abnormal|<p>-</p>|<p>**Expression**: {Hitachi_DiskArray_monitor_template:DKCCacheCondition.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
|DKC Environment Abnormal|<p>-</p>|<p>**Expression**: {Hitachi_DiskArray_monitor_template:DKCEnvironmentCondition.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
|DKC Fan Abnormal|<p>-</p>|<p>**Expression**: {Hitachi_DiskArray_monitor_template:DKCFanCondition.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
|DKC Internal Bus Abnormal|<p>-</p>|<p>**Expression**: {Hitachi_DiskArray_monitor_template:DKCInternalBusCondition.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
|DKC Power Supply Abnormal|<p>-</p>|<p>**Expression**: {Hitachi_DiskArray_monitor_template:DKCPowerSupplyCondition.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
|DKC Processor Abnormal|<p>-</p>|<p>**Expression**: {Hitachi_DiskArray_monitor_template:DKCProcessorCondition.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
|DKC Shared Memory Abnormal|<p>-</p>|<p>**Expression**: {Hitachi_DiskArray_monitor_template:DKCSharedMemoryCondition.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
|DKU Drive Abnormal|<p>-</p>|<p>**Expression**: {Hitachi_DiskArray_monitor_template:DKUDriveCondition.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
|DKU Environment Abnormal|<p>-</p>|<p>**Expression**: {Hitachi_DiskArray_monitor_template:DKUEnvironmentCondition.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
|DKU Fan Abnormal|<p>-</p>|<p>**Expression**: {Hitachi_DiskArray_monitor_template:DKUFanCondition.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
|DKU Power Supply Abnormal|<p>-</p>|<p>**Expression**: {Hitachi_DiskArray_monitor_template:DKUPowerSupplyCondition.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
|DKC Battery Abnormal (LLD)|<p>-</p>|<p>**Expression**: {Hitachi_DiskArray_monitor_template:DKCBatteryCondition.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
|DKC Cache Abnormal (LLD)|<p>-</p>|<p>**Expression**: {Hitachi_DiskArray_monitor_template:DKCCacheCondition.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
|DKC Environment Abnormal (LLD)|<p>-</p>|<p>**Expression**: {Hitachi_DiskArray_monitor_template:DKCEnvironmentCondition.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
|DKC Fan Abnormal (LLD)|<p>-</p>|<p>**Expression**: {Hitachi_DiskArray_monitor_template:DKCFanCondition.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
|DKC Internal Bus Abnormal (LLD)|<p>-</p>|<p>**Expression**: {Hitachi_DiskArray_monitor_template:DKCInternalBusCondition.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
|DKC Power Supply Abnormal (LLD)|<p>-</p>|<p>**Expression**: {Hitachi_DiskArray_monitor_template:DKCPowerSupplyCondition.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
|DKC Processor Abnormal (LLD)|<p>-</p>|<p>**Expression**: {Hitachi_DiskArray_monitor_template:DKCProcessorCondition.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
|DKC Shared Memory Abnormal (LLD)|<p>-</p>|<p>**Expression**: {Hitachi_DiskArray_monitor_template:DKCSharedMemoryCondition.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
|DKU Drive Abnormal (LLD)|<p>-</p>|<p>**Expression**: {Hitachi_DiskArray_monitor_template:DKUDriveCondition.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
|DKU Environment Abnormal (LLD)|<p>-</p>|<p>**Expression**: {Hitachi_DiskArray_monitor_template:DKUEnvironmentCondition.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
|DKU Fan Abnormal (LLD)|<p>-</p>|<p>**Expression**: {Hitachi_DiskArray_monitor_template:DKUFanCondition.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
|DKU Power Supply Abnormal (LLD)|<p>-</p>|<p>**Expression**: {Hitachi_DiskArray_monitor_template:DKUPowerSupplyCondition.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
