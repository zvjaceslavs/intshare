# Template Huawei Storage OceanStor

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
|Detection Disk Domain|<p>-</p>|`SNMP agent`|hwInfoDiskDomain<p>Update: 1d</p>|
|Detection Storage Pool|<p>-</p>|`SNMP agent`|hwInfoPool<p>Update: 1d</p>|
|Detection LUN|<p>-</p>|`SNMP agent`|hwInfoLun<p>Update: 1d</p>|
|Detection Fan BP|<p>-</p>|`SNMP agent`|hwinfoFANPower<p>Update: 1d</p>|
|Detection Performance Port|<p>-</p>|`SNMP agent`|hwPortPerformance<p>Update: 1d</p>|
|Detection Performance LUN|<p>-</p>|`SNMP agent`|hwPerformanceLun<p>Update: 1d</p>|
|Controller Detection|<p>-</p>|`SNMP agent`|hwInfoController<p>Update: 1d</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|State of the system|<p>Huawei 15-level HEALTH STATUS E (SHD)</p>|`SNMP agent`|status.0<p>Update: 30s</p>|
|Condition Disk Domain: {#DISKDNAME}|<p>-</p>|`SNMP agent`|hwInfoDiskDomainHealthStatus.[{#SNMPINDEX}]<p>Update: 5m</p>|
|Running status Disk Domain: {#DISKDNAME}|<p>-</p>|`SNMP agent`|hwInfoDiskDomainRunningStatus.[{#SNMPINDEX}]<p>Update: 5m</p>|
|Storage Pool: {#POOLNAME} Allocated Capacity at %|<p>-</p>|`Calculated`|hwInfoStoragePoolCapacityProc.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Condition Storage Pool: {#POOLNAME}|<p>-</p>|`SNMP agent`|hwInfoStoragePoolHealthStatus.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Storage Pool: {#POOLNAME} Capacity in bytes|<p>-</p>|`SNMP agent`|hwInfoStoragePoolTotal.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Storage Pool: {#POOLNAME} Allocated Capacity in bytes|<p>-</p>|`SNMP agent`|hwInfoStoragePoolUsed.[{#SNMPINDEX}]<p>Update: 30s</p>|
|LUN {#LUNNAME} Capacity in bytes|<p>-</p>|`SNMP agent`|hwInfoLunCapacity.[{#SNMPINDEX}]<p>Update: 5m</p>|
|LUN {#LUNNAME} Allocated Capacity at %|<p>-</p>|`Calculated`|hwInfoLunCapacityProc.[{#SNMPINDEX}]<p>Update: 5m</p>|
|LUN Status {#LUNNAME}|<p>-</p>|`SNMP agent`|hwInfoLunHealthStatus.[{#SNMPINDEX}]<p>Update: 1m</p>|
|LUN {#LUNNAME} Allocated Capacity in bytes|<p>-</p>|`SNMP agent`|hwInfoLunSubscribedCapacity.[{#SNMPINDEX}]<p>Update: 5m</p>|
|Fan condition: {#FANLOCATION}|<p>-</p>|`SNMP agent`|hwInfoFanHealthStatus.[{#SNMPINDEX}]<p>Update: 5m</p>|
|Port: {#PORTLOCATION} I/O latancy|<p>-</p>|`SNMP agent`|hwPerfPortDelay.[{#SNMPINDEX}]<p>Update: 5m</p>|
|LUN {$LUNID{#LUNPID}} Read IOPS|<p>-</p>|`SNMP agent`|hwPerfLunReadIOPS.[{#SNMPINDEX}]<p>Update: 1m</p>|
|LUN {$LUNID{#LUNPID}} Read bandwidth MB/s|<p>-</p>|`SNMP agent`|hwPerfLunReadTraffic.[{#SNMPINDEX}]<p>Update: 1m</p>|
|LUN {$LUNID{#LUNPID}} Total IOPS|<p>-</p>|`SNMP agent`|hwPerfLunTotalIOPS.[{#SNMPINDEX}]<p>Update: 1m</p>|
|LUN {$LUNID{#LUNPID}} Total bandwidth MB/s|<p>-</p>|`SNMP agent`|hwPerfLunTotalTraffic.[{#SNMPINDEX}]<p>Update: 1m</p>|
|LUN {$LUNID{#LUNPID}} Write IOPS|<p>-</p>|`SNMP agent`|hwPerfLunWriteIOPS.[{#SNMPINDEX}]<p>Update: 1m</p>|
|LUN {$LUNID{#LUNPID}} Write bandwidth MB/s|<p>-</p>|`SNMP agent`|hwPerfLunWriteTraffic.[{#SNMPINDEX}]<p>Update: 1m</p>|
|Using the CPU controller: {#CONLOCATION} at %|<p>-</p>|`SNMP agent`|hwInfoControllerCPUUsage.[{#SNMPINDEX}]<p>Update: 1m</p>|
|Controller status: {#CONLOCATION}|<p>-</p>|`SNMP agent`|hwInfoControllerHealthStatus.[{#SNMPINDEX}]<p>Update: 1m</p>|
|Using the Memory Controller: {#CONLOCATION} at %|<p>-</p>|`SNMP agent`|hwInfoControllerMemoryUsage.[{#SNMPINDEX}]<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|No data from SNMP agent|<p>-</p>|average|
|Problem with SHD|<p>-</p>|average|
|Problem with Disk Domain : {#DISKDNAME}|<p>-</p>|average|
|Problem with Disk Domain: {#DISKDNAME}|<p>SNMP check received status is not Online. Check the status of SHD</p>|average|
|Issue with Storage Pool: {#POOLNAME}|<p>-</p>|average|
|{#POOLNAME} Allocated Capacity > 85%|<p>-</p>|average|
|{#POOLNAME} Allocated Capacity > 95%|<p>-</p>|high|
|LUN {#LUNNAME} Allocated Capacity > 85%|<p>-</p>|average|
|LUN {#LUNNAME} Allocated Capacity > 95%|<p>-</p>|high|
|Problem with LUN {#LUNNAME}|<p>-</p>|average|
|Problem with BP Fan: {#FANLOCATION}|<p>-</p>|average|
|I/O latancy Port: {#PORTLOCATION} > 40 ms|<p>-</p>|average|
|Controller {#CONLOCATION} uses > 90% CPU|<p>-</p>|average|
|Controller {#CONLOCATION} uses > 95% Memory|<p>-</p>|average|
|problem with the controller:{#CONLOCATION}|<p>-</p>|average|
