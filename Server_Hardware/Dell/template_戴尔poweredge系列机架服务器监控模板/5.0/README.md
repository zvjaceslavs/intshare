# 戴尔PowerEdge系列机架服务器监控模板

## Description

## Overview 戴尔PowerEdge系列机架服务器监控模板 包括CPU、内存、电源、硬盘、风扇、整体状态 将宏{$CLOUD _SNMP _COMMUNITY}替换为实际团体字即可 ## Author zhangzhefeng 

## Overview

戴尔PowerEdge系列机架服务器监控模板


包括CPU、内存、电源、硬盘、风扇、整体状态


将宏{$CLOUD\_SNMP\_COMMUNITY}替换为实际团体字即可



## Author

zhangzhefeng

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$CLOUD_SNMP_COMMUNITY}|<p>-</p>|`public`|Text macro|
|{$ICMP_LOSS_WARN}|<p>-</p>|`30`|Text macro|
|{$ICMP_RESPONSE_TIME_WARN}|<p>-</p>|`0.1`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|CPU发现|<p>-</p>|`SNMP agent`|CPUDiscovery<p>Update: 1d</p>|
|风扇发现|<p>-</p>|`SNMP agent`|FanDiscovery<p>Update: 1d</p>|
|内存发现|<p>-</p>|`SNMP agent`|MemoryDiscovery<p>Update: 1d</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ping时延|<p>-</p>|`Simple check`|icmppingsec[,10,,,,avg]<p>Update: 5m</p>|
|系统信息|<p>-</p>|`SNMP agent`|SystemDescription<p>Update: 1h</p>|
|电源状态|<p>-</p>|`SNMP agent`|SystemPowerStatus<p>Update: 10m</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping[,5,,,]<p>Update: 1m</p>|
|运行时间|<p>-</p>|`SNMP agent`|SystemUpTime<p>Update: 1h</p>|
|ping丢包率|<p>-</p>|`Simple check`|icmppingloss[,10,,,]<p>Update: 5m</p>|
|LCD状态|<p>-</p>|`SNMP agent`|SystemLCDStatus<p>Update: 10m</p>|
|系统健康状态|<p>-</p>|`SNMP agent`|GlobalSystemStatus<p>Update: 10m</p>|
|存储状态|<p>-</p>|`SNMP agent`|GlobalStorageStatus<p>Update: 10m</p>|
|CPU状态 [{#CPUNAME}]|<p>-</p>|`SNMP agent`|CPUStatus.[{#SNMPINDEX}]<p>Update: 1h</p><p>LLD</p>|
|风扇状态 {#FANNAME}|<p>-</p>|`SNMP agent`|FanStatus.[{#SNMPINDEX}]<p>Update: 1h</p><p>LLD</p>|
|内存状态 {#MEMORYNAME}|<p>-</p>|`SNMP agent`|MemoryStatus.[{#SNMPINDEX}]<p>Update: 1h</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|CPU异常|<p>-</p>|<p>**Expression**: {monitor_RackServer_Dell_PowerEdge:CPUStatus.[{#SNMPINDEX}].last()}>3</p><p>**Recovery expression**: </p>|high|
|风扇异常|<p>-</p>|<p>**Expression**: {monitor_RackServer_Dell_PowerEdge:FanStatus.[{#SNMPINDEX}].last()}>3</p><p>**Recovery expression**: </p>|high|
|内存异常|<p>-</p>|<p>**Expression**: {monitor_RackServer_Dell_PowerEdge:MemoryStatus.[{#SNMPINDEX}].last()}>3</p><p>**Recovery expression**: </p>|high|
|CPU异常 (LLD)|<p>-</p>|<p>**Expression**: {monitor_RackServer_Dell_PowerEdge:CPUStatus.[{#SNMPINDEX}].last()}>3</p><p>**Recovery expression**: </p>|high|
|风扇异常 (LLD)|<p>-</p>|<p>**Expression**: {monitor_RackServer_Dell_PowerEdge:FanStatus.[{#SNMPINDEX}].last()}>3</p><p>**Recovery expression**: </p>|high|
|内存异常 (LLD)|<p>-</p>|<p>**Expression**: {monitor_RackServer_Dell_PowerEdge:MemoryStatus.[{#SNMPINDEX}].last()}>3</p><p>**Recovery expression**: </p>|high|
