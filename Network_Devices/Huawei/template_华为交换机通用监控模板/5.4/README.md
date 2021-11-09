# 华为交换机监控模板

## Overview

华为交换机监控模板


已在S系列、CloudEngine系列设备完成验证


主要包括CPU利用率、内存利用率、端口状态、端口带宽利用率、端口报文速率、实体状态监控


将宏 {$CLOUD\_SNMP\_COMMUNITY} 替换为实际团体字即可


 



## Author

zhangzhefeng

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$BANDWIDTH_USAGE_IN_THRESHOLD}|<p>-</p>|`90`|Text macro|
|{$BANDWIDTH_USAGE_OUT_THRESHOLD}|<p>-</p>|`90`|Text macro|
|{$CLOUD_SNMP_COMMUNITY}|<p>-</p>|`public`|Text macro|
|{$CPU_USAGE_THRESHOLD}|<p>-</p>|`80`|Text macro|
|{$ERROR_PACKETS_IN_THRESHOLD}|<p>-</p>|`10`|Text macro|
|{$ERROR_PACKETS_OUT_THRESHOLD}|<p>-</p>|`10`|Text macro|
|{$ICMP_LOSS_WARN}|<p>-</p>|`0.1`|Text macro|
|{$ICMP_RESPONSE_TIME_WARN}|<p>-</p>|`30`|Text macro|
|{$MEMORY_USAGE_THRESHOLD}|<p>-</p>|`80`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|端口发现|<p>-</p>|`SNMP agent`|InterfaceDiscovery_traffic<p>Update: 12h</p>|
|板卡发现|<p>-</p>|`SNMP agent`|BoardDiscovery<p>Update: 12h</p>|
|端口发现|<p>You may also consider using IF-MIB::ifType or IF-MIB::ifAlias for discovery depending on your filtering needs. {$CLOUD_SNMP_COMMUNITY} is a global macro.</p>|`SNMP agent`|InterfaceDiscovery_status<p>Update: 12h</p>|
|实体发现|<p>-</p>|`SNMP agent`|EntityDiscovery<p>Update: 12h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ping丢包率|<p>-</p>|`Simple check`|icmppingloss[,10,,,]<p>Update: 5m</p>|
|ping时延|<p>-</p>|`Simple check`|icmppingsec[,10,,,,avg]<p>Update: 5m</p>|
|运行时间|<p>-</p>|`SNMP agent`|SystemUpTime<p>Update: 1h</p>|
|trap消息|<p>-</p>|`SNMP trap`|snmptrap[""]<p>Update: 0</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping[,5,,,]<p>Update: 1m</p>|
|系统信息|<p>-</p>|`SNMP agent`|SystemDescription<p>Update: 1h</p>|
|端口带宽 {#IFDESCR}({#IFALIAS})|<p>-</p>|`SNMP agent`|InterfaceBandwidth.[{#SNMPINDEX},{#IFDESCR}]<p>Update: 12h</p><p>LLD</p>|
|入方向带宽利用率 {#IFDESCR}({#IFALIAS})|<p>-</p>|`Calculated`|InterfaceInBandwidthUsage.[{#SNMPINDEX},{#IFDESCR}]<p>Update: 10m</p><p>LLD</p>|
|入方向广播报文速率 {#IFDESCR}({#IFALIAS})|<p>-</p>|`SNMP agent`|InterfaceInBroadcastPacketsTraffic.[{#SNMPINDEX},{#IFDESCR}]<p>Update: 10m</p><p>LLD</p>|
|入方向组播报文速率 {#IFDESCR}({#IFALIAS})|<p>-</p>|`SNMP agent`|InterfaceInMulticastPacketsTraffic.[{#SNMPINDEX},{#IFDESCR}]<p>Update: 10m</p><p>LLD</p>|
|入方向错包 {#IFDESCR}({#IFALIAS})|<p>-</p>|`SNMP agent`|InterfaceInPacketError.[{#SNMPINDEX},{#IFDESCR}]<p>Update: 30m</p><p>LLD</p>|
|入方向流量 {#IFDESCR}({#IFALIAS})|<p>-</p>|`SNMP agent`|InterfaceInTraffic.[{#SNMPINDEX},{#IFDESCR}]<p>Update: 10m</p><p>LLD</p>|
|入方向单播报文速率 {#IFDESCR}({#IFALIAS})|<p>-</p>|`SNMP agent`|InterfaceInUnicastPacketsTraffic.[{#SNMPINDEX},{#IFDESCR}]<p>Update: 10m</p><p>LLD</p>|
|出方向带宽利用率 {#IFDESCR}({#IFALIAS})|<p>-</p>|`Calculated`|InterfaceOutBandwidthUsage[{#SNMPINDEX},{#IFDESCR}]<p>Update: 10m</p><p>LLD</p>|
|出方向广播报文速率 {#IFDESCR}({#IFALIAS})|<p>-</p>|`SNMP agent`|InterfaceOutBroadcastPacketTraffic.[{#SNMPINDEX},{#IFDESCR}]<p>Update: 10m</p><p>LLD</p>|
|出方向组播报文速率 {#IFDESCR}({#IFALIAS})|<p>-</p>|`SNMP agent`|InterfaceOutMulticastPackestTraffic.[{#SNMPINDEX},{#IFDESCR}]<p>Update: 10m</p><p>LLD</p>|
|出方向错包 {#IFDESCR}({#IFALIAS})|<p>-</p>|`SNMP agent`|InterfaceOutPacketError.[{#SNMPINDEX},{#IFDESCR}]<p>Update: 30m</p><p>LLD</p>|
|出方向流量 {#IFDESCR}({#IFALIAS})|<p>-</p>|`SNMP agent`|InterfaceOutTraffic.[{#SNMPINDEX},{#IFDESCR}]<p>Update: 10m</p><p>LLD</p>|
|出方向单播报文速率 {#IFDESCR}({#IFALIAS})|<p>-</p>|`SNMP agent`|InterfaceOutUnicastPacketsTraffic.[{#SNMPINDEX},{#IFDESCR}]<p>Update: 10m</p><p>LLD</p>|
|CPU利用率 {#ENTITYDESCR}|<p>-</p>|`SNMP agent`|CPUUsage.[{#SNMPINDEX}]<p>Update: 5m</p><p>LLD</p>|
|温度 {#ENTITYDESCR}|<p>-</p>|`SNMP agent`|hwEntityTemperature.[{#SNMPINDEX}]<p>Update: 5m</p><p>LLD</p>|
|内存利用率 {#ENTITYDESCR}|<p>-</p>|`SNMP agent`|MemoryUsage.[{#SNMPINDEX}]<p>Update: 5m</p><p>LLD</p>|
|端口:{#IFDESCR}({#IFALIAS})状态|<p>The current operational state of the interface.</p>|`SNMP agent`|InterfaceOperationStatus.[{#SNMPINDEX}]<p>Update: 5m</p><p>LLD</p>|
|实体告警状态 {#ENTITYDESCR}|<p>-</p>|`SNMP agent`|EntityAlarmStatus.[{#SNMPINDEX}]<p>Update: 10m</p><p>LLD</p>|
|实体运行状态 {#ENTITYDESCR}|<p>-</p>|`SNMP agent`|EntityOperationStatus.[{#SNMPINDEX}]<p>Update: 10m</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|CPU利用率高|<p>2个周期CPU利用率均大于宏{$CPU_USAGE_THRESHOLD}</p>|<p>**Expression**: min(/monitor_Switch_Huawei/CPUUsage.[{#SNMPINDEX}],#2)>80</p><p>**Recovery expression**: </p>|high|
|内存利用率高|<p>-</p>|<p>**Expression**: min(/monitor_Switch_Huawei/MemoryUsage.[{#SNMPINDEX}],#2)>80</p><p>**Recovery expression**: </p>|high|
|{#ENTITYDESCR} 实体告警状态alarmOutstanding|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Huawei/EntityAlarmStatus.[{#SNMPINDEX}],#1)=5</p><p>**Recovery expression**: </p>|high|
|{#ENTITYDESCR} 实体告警状态critical|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Huawei/EntityAlarmStatus.[{#SNMPINDEX}],#1)=2</p><p>**Recovery expression**: </p>|high|
|{#ENTITYDESCR} 实体告警状态underRepair|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Huawei/EntityAlarmStatus.[{#SNMPINDEX}],#1)=1</p><p>**Recovery expression**: </p>|high|
|{#ENTITYDESCR} 实体运行状态disabled|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Huawei/EntityOperationStatus.[{#SNMPINDEX}],#1)=2</p><p>**Recovery expression**: </p>|high|
|{#ENTITYDESCR} 实体运行状态offline|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Huawei/EntityOperationStatus.[{#SNMPINDEX}],#1)=4</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 端口状态异常|<p>因2019年10月1日二长7楼163方向防火墙出现状态7的告警，特增加此触发器</p>|<p>**Expression**: last(/monitor_Switch_Huawei/InterfaceOperationStatus.[{#SNMPINDEX}],#2)=1 and last(/monitor_Switch_Huawei/InterfaceOperationStatus.[{#SNMPINDEX}],#1)<>1 and last(/monitor_Switch_Huawei/InterfaceOperationStatus.[{#SNMPINDEX}],#1)<>2</p><p>**Recovery expression**: last(/monitor_Switch_Huawei/InterfaceOperationStatus.[{#SNMPINDEX}],#2)=1 and last(/monitor_Switch_Huawei/InterfaceOperationStatus.[{#SNMPINDEX}],#1)=1</p>|average|
|端口:{#IFDESCR} down|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Huawei/InterfaceOperationStatus.[{#SNMPINDEX}],#2)=1 and last(/monitor_Switch_Huawei/InterfaceOperationStatus.[{#SNMPINDEX}],#1)=2</p><p>**Recovery expression**: last(/monitor_Switch_Huawei/InterfaceOperationStatus.[{#SNMPINDEX}],#2)=1 and last(/monitor_Switch_Huawei/InterfaceOperationStatus.[{#SNMPINDEX}],#1)=1</p>|high|
|{#IFDESCR} 入方向带宽利用率高|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Huawei/InterfaceInBandwidthUsage.[{#SNMPINDEX},{#IFDESCR}])>90</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 入方向错包率高|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Huawei/InterfaceInPacketError.[{#SNMPINDEX},{#IFDESCR}])>10</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 出方向带宽利用率高|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Huawei/InterfaceOutBandwidthUsage[{#SNMPINDEX},{#IFDESCR}])>90</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 出方向错包率高|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Huawei/InterfaceOutPacketError.[{#SNMPINDEX},{#IFDESCR}])>10</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 入方向带宽利用率高 (LLD)|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Huawei/InterfaceInBandwidthUsage.[{#SNMPINDEX},{#IFDESCR}])>90</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 入方向错包率高 (LLD)|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Huawei/InterfaceInPacketError.[{#SNMPINDEX},{#IFDESCR}])>10</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 出方向带宽利用率高 (LLD)|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Huawei/InterfaceOutBandwidthUsage[{#SNMPINDEX},{#IFDESCR}])>90</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 出方向错包率高 (LLD)|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Huawei/InterfaceOutPacketError.[{#SNMPINDEX},{#IFDESCR}])>10</p><p>**Recovery expression**: </p>|high|
|CPU利用率高 (LLD)|<p>2个周期CPU利用率均大于宏{$CPU_USAGE_THRESHOLD}</p>|<p>**Expression**: min(/monitor_Switch_Huawei/CPUUsage.[{#SNMPINDEX}],#2)>80</p><p>**Recovery expression**: </p>|high|
|内存利用率高 (LLD)|<p>-</p>|<p>**Expression**: min(/monitor_Switch_Huawei/MemoryUsage.[{#SNMPINDEX}],#2)>80</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 端口状态异常 (LLD)|<p>因2019年10月1日二长7楼163方向防火墙出现状态7的告警，特增加此触发器</p>|<p>**Expression**: last(/monitor_Switch_Huawei/InterfaceOperationStatus.[{#SNMPINDEX}],#2)=1 and last(/monitor_Switch_Huawei/InterfaceOperationStatus.[{#SNMPINDEX}],#1)<>1 and last(/monitor_Switch_Huawei/InterfaceOperationStatus.[{#SNMPINDEX}],#1)<>2</p><p>**Recovery expression**: last(/monitor_Switch_Huawei/InterfaceOperationStatus.[{#SNMPINDEX}],#2)=1 and last(/monitor_Switch_Huawei/InterfaceOperationStatus.[{#SNMPINDEX}],#1)=1</p>|average|
|端口:{#IFDESCR} down (LLD)|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Huawei/InterfaceOperationStatus.[{#SNMPINDEX}],#2)=1 and last(/monitor_Switch_Huawei/InterfaceOperationStatus.[{#SNMPINDEX}],#1)=2</p><p>**Recovery expression**: last(/monitor_Switch_Huawei/InterfaceOperationStatus.[{#SNMPINDEX}],#2)=1 and last(/monitor_Switch_Huawei/InterfaceOperationStatus.[{#SNMPINDEX}],#1)=1</p>|high|
|{#ENTITYDESCR} 实体告警状态alarmOutstanding (LLD)|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Huawei/EntityAlarmStatus.[{#SNMPINDEX}],#1)=5</p><p>**Recovery expression**: </p>|high|
|{#ENTITYDESCR} 实体告警状态critical (LLD)|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Huawei/EntityAlarmStatus.[{#SNMPINDEX}],#1)=2</p><p>**Recovery expression**: </p>|high|
|{#ENTITYDESCR} 实体告警状态underRepair (LLD)|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Huawei/EntityAlarmStatus.[{#SNMPINDEX}],#1)=1</p><p>**Recovery expression**: </p>|high|
|{#ENTITYDESCR} 实体运行状态disabled (LLD)|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Huawei/EntityOperationStatus.[{#SNMPINDEX}],#1)=2</p><p>**Recovery expression**: </p>|high|
|{#ENTITYDESCR} 实体运行状态offline (LLD)|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Huawei/EntityOperationStatus.[{#SNMPINDEX}],#1)=4</p><p>**Recovery expression**: </p>|high|
