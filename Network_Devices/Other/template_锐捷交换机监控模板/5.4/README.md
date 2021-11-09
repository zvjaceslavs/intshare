# 锐捷交换机监控模板

## Description

## Overview 锐捷（Ruijie）RGOS系列交换机通用监控模板 主要包括CPU利用率、内存利用率、端口状态、端口带宽利用率、端口报文速率、电源风扇状态 将宏 {$CLOUD _SNMP _COMMUNITY} 替换为实际团体字即可 ## Author zhangzhefeng 

## Overview

锐捷（Ruijie）RGOS系列交换机通用监控模板


主要包括CPU利用率、内存利用率、端口状态、端口带宽利用率、端口报文速率、电源风扇状态


将宏 {$CLOUD\_SNMP\_COMMUNITY} 替换为实际团体字即可



## Author

zhangzhefeng

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$BANDWIDTH_USAGE_IN_THRESHOLD}|<p>-</p>|`90`|Text macro|
|{$BANDWIDTH_USAGE_OUT_THRESHOLD}|<p>-</p>|`90`|Text macro|
|{$CLOUD_SNMP_COMMUNITY}|<p>-</p>|`public`|Text macro|
|{$CPU_USAGE_THRESHOLD}|<p>-</p>|`90`|Text macro|
|{$ERROR_PACKETS_IN_THRESHOLD}|<p>-</p>|`10`|Text macro|
|{$ERROR_PACKETS_OUT_THRESHOLD}|<p>-</p>|`10`|Text macro|
|{$ICMP_LOSS_WARN}|<p>-</p>|`30`|Text macro|
|{$ICMP_RESPONSE_TIME_WARN}|<p>-</p>|`0.1`|Text macro|
|{$MEMORY_USAGE_THRESHOLD}|<p>-</p>|`90`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|端口发现|<p>You may also consider using IF-MIB::ifType or IF-MIB::ifAlias for discovery depending on your filtering needs. {$CLOUD_SNMP_COMMUNITY} is a global macro.</p>|`SNMP agent`|InterfaceDiscovery_status<p>Update: 12h</p>|
|电源发现|<p>-</p>|`SNMP agent`|PowerDiscovery<p>Update: 1h</p>|
|端口发现|<p>-</p>|`SNMP agent`|InterfaceDiscovery_traffic<p>Update: 12h</p>|
|内存发现|<p>-</p>|`SNMP agent`|MemoryDiscovery<p>Update: 1h</p>|
|风扇发现|<p>-</p>|`SNMP agent`|FanDiscovery<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ICMP ping|<p>-</p>|`Simple check`|icmpping[,5,,,]<p>Update: 1m</p>|
|系统信息|<p>-</p>|`SNMP agent`|SystemDescription<p>Update: 1h</p>|
|ping时延|<p>-</p>|`Simple check`|icmppingsec[,10,,,,avg]<p>Update: 5m</p>|
|CPU 5分钟利用率|<p>-</p>|`SNMP agent`|CPUUsageIn5Min<p>Update: 10m</p>|
|运行时间|<p>-</p>|`SNMP agent`|SystemUpTime<p>Update: 1h</p>|
|ping丢包率|<p>-</p>|`Simple check`|icmppingloss[,10,,,]<p>Update: 5m</p>|
|端口 {#IFDESCR}({#IFALIAS})状态|<p>The current operational state of the interface.</p>|`SNMP agent`|InterfaceOperationStatus.[{#SNMPINDEX}]<p>Update: 5m</p><p>LLD</p>|
|电源运行状态 {#SNMPVALUE}|<p>-</p>|`SNMP agent`|PowerSupplyStatus.[{#SNMPINDEX}]<p>Update: 30m</p><p>LLD</p>|
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
|内存利用率 {#SNMPVALUE}|<p>-</p>|`SNMP agent`|MemoryUsage.[{#SNMPINDEX}]<p>Update: 10m</p><p>LLD</p>|
|风扇运行状态 {#SNMPVALUE}|<p>-</p>|`SNMP agent`|FanOperationStatus.[{#SNMPINDEX}]<p>Update: 30m</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|风扇运行异常|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Ruijie/FanOperationStatus.[{#SNMPINDEX}],#1)<>4</p><p>**Recovery expression**: </p>|high|
|端口:{#IFDESCR} down|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Ruijie/InterfaceOperationStatus.[{#SNMPINDEX}],#2)=1 and last(/monitor_Switch_Ruijie/InterfaceOperationStatus.[{#SNMPINDEX}],#1)=2</p><p>**Recovery expression**: last(/monitor_Switch_Ruijie/InterfaceOperationStatus.[{#SNMPINDEX}],#2)=1 and last(/monitor_Switch_Ruijie/InterfaceOperationStatus.[{#SNMPINDEX}],#1)=1</p>|high|
|{#IFDESCR} 入方向带宽利用率高|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Ruijie/InterfaceInBandwidthUsage.[{#SNMPINDEX},{#IFDESCR}])>90</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 入方向错包率高|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Ruijie/InterfaceInPacketError.[{#SNMPINDEX},{#IFDESCR}])>10</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 出方向带宽利用率高|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Ruijie/InterfaceOutBandwidthUsage[{#SNMPINDEX},{#IFDESCR}])>90</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 出方向错包率高|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Ruijie/InterfaceOutPacketError.[{#SNMPINDEX},{#IFDESCR}])>10</p><p>**Recovery expression**: </p>|high|
|内存利用率高|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Ruijie/MemoryUsage.[{#SNMPINDEX}])>90</p><p>**Recovery expression**: </p>|high|
|电源运行异常|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Ruijie/PowerSupplyStatus.[{#SNMPINDEX}],#1)<>4</p><p>**Recovery expression**: </p>|high|
|端口:{#IFDESCR} down (LLD)|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Ruijie/InterfaceOperationStatus.[{#SNMPINDEX}],#2)=1 and last(/monitor_Switch_Ruijie/InterfaceOperationStatus.[{#SNMPINDEX}],#1)=2</p><p>**Recovery expression**: last(/monitor_Switch_Ruijie/InterfaceOperationStatus.[{#SNMPINDEX}],#2)=1 and last(/monitor_Switch_Ruijie/InterfaceOperationStatus.[{#SNMPINDEX}],#1)=1</p>|high|
|电源运行异常 (LLD)|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Ruijie/PowerSupplyStatus.[{#SNMPINDEX}],#1)<>4</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 入方向带宽利用率高 (LLD)|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Ruijie/InterfaceInBandwidthUsage.[{#SNMPINDEX},{#IFDESCR}])>90</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 入方向错包率高 (LLD)|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Ruijie/InterfaceInPacketError.[{#SNMPINDEX},{#IFDESCR}])>10</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 出方向带宽利用率高 (LLD)|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Ruijie/InterfaceOutBandwidthUsage[{#SNMPINDEX},{#IFDESCR}])>90</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 出方向错包率高 (LLD)|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Ruijie/InterfaceOutPacketError.[{#SNMPINDEX},{#IFDESCR}])>10</p><p>**Recovery expression**: </p>|high|
|内存利用率高 (LLD)|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Ruijie/MemoryUsage.[{#SNMPINDEX}])>90</p><p>**Recovery expression**: </p>|high|
|风扇运行异常 (LLD)|<p>-</p>|<p>**Expression**: last(/monitor_Switch_Ruijie/FanOperationStatus.[{#SNMPINDEX}],#1)<>4</p><p>**Recovery expression**: </p>|high|
