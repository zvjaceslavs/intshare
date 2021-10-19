# 华三交换机监控模板

## Overview

华三交换机通用监控模板。


适用于当前主流（使用New Style mib库）交换机，包括端口状态、端口流量、实体（电源、风扇）、板卡CPU内存等监控项，已在12500、6900等多种型号上调试成功。


华三交换机的官方模板已经十分齐全，变动基本为汉化、过滤器、监控项优化。


可能遇到无法导入问题，供参考。


将宏{$CLOUD\_SNMP\_COMMUNITY}替换为实际团体字。

## Author

zhangzhefeng

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$BANDWIDTH_USAGE_IN_THRESHOLD}|<p>-</p>|`95`|Text macro|
|{$BANDWIDTH_USAGE_OUT_THRESHOLD}|<p>-</p>|`95`|Text macro|
|{$CLOUD_SNMP_COMMUNITY}|<p>-</p>|`public`|Text macro|
|{$CPU_USAGE_THRESHOLD}|<p>-</p>|`80`|Text macro|
|{$ERROR_PACKETS_IN_THRESHOLD}|<p>-</p>|`50`|Text macro|
|{$ERROR_PACKETS_OUT_THRESHOLD}|<p>-</p>|`50`|Text macro|
|{$ICMP_LOSS_WARN}|<p>-</p>|`20`|Text macro|
|{$ICMP_RESPONSE_TIME_WARN}|<p>-</p>|`0.5`|Text macro|
|{$MEMORY_USAGE_THRESHOLD}|<p>-</p>|`80`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|实体发现|<p>-</p>|`SNMP agent`|EntityDiscovery<p>Update: 12h</p>|
|板卡发现|<p>-</p>|`SNMP agent`|BoardDiscovery<p>Update: 12h</p>|
|端口发现|<p>-</p>|`SNMP agent`|InterfaceDiscovery_traffic<p>Update: 12h</p>|
|端口发现|<p>-</p>|`SNMP agent`|InterfaceDiscovery_status<p>Update: 12h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ICMP ping|<p>-</p>|`Simple check`|icmpping[,5,,,]<p>Update: 1m</p>|
|ping丢包率|<p>-</p>|`Simple check`|icmppingloss[,10,,,]<p>Update: 3m</p>|
|ping时延|<p>-</p>|`Simple check`|icmppingsec[,10,,,,avg]<p>Update: 3m</p>|
|trap消息|<p>-</p>|`SNMP trap`|snmptrap[""]<p>Update: 0</p>|
|系统信息|<p>-</p>|`SNMP agent`|SystemDescription<p>Update: 1h</p>|
|运行时间|<p>-</p>|`SNMP agent`|SystemUpTime<p>Update: 1h</p>|
|实体运行状态 {#ENTITYDESCR} (LLD)|<p>-</p>|`SNMP agent`|EntityOperationStatus.[{#SNMPINDEX}]<p>Update: 10m</p>|
|CPU利用率 {#ENTITYDESCR} (LLD)|<p>-</p>|`SNMP agent`|MONITOR_CPUUsage.[{#SNMPINDEX},{#ENTITYDESCR}]<p>Update: 5m</p>|
|内存利用率 {#ENTITYDESCR} (LLD)|<p>-</p>|`SNMP agent`|MONITOR_MemoryUsage.[{#SNMPINDEX},{#ENTITYDESCR}]<p>Update: 5m</p>|
|端口带宽 {#IFDESCR}({#IFALIAS}) (LLD)|<p>-</p>|`SNMP agent`|InterfaceBandwidth.[{#SNMPINDEX},{#IFDESCR}]<p>Update: 12h</p>|
|入方向带宽利用率 {#IFDESCR}({#IFALIAS}) (LLD)|<p>-</p>|`Calculated`|InterfaceInBandwidthUsage.[{#SNMPINDEX},{#IFDESCR}]<p>Update: 10m</p>|
|入方向广播报文速率 {#IFDESCR}({#IFALIAS}) (LLD)|<p>-</p>|`SNMP agent`|InterfaceInBroadcastPacketsTraffic.[{#SNMPINDEX},{#IFDESCR}]<p>Update: 10m</p>|
|入方向组播报文速率 {#IFDESCR}({#IFALIAS}) (LLD)|<p>-</p>|`SNMP agent`|InterfaceInMulticastPacketsTraffic.[{#SNMPINDEX},{#IFDESCR}]<p>Update: 10m</p>|
|入方向错包 {#IFDESCR}({#IFALIAS}) (LLD)|<p>-</p>|`SNMP agent`|InterfaceInPacketError.[{#SNMPINDEX},{#IFDESCR}]<p>Update: 10m</p>|
|入方向流量 {#IFDESCR}({#IFALIAS}) (LLD)|<p>-</p>|`SNMP agent`|InterfaceInTraffic.[{#SNMPINDEX},{#IFDESCR}]<p>Update: 10m</p>|
|入方向单播报文速率 {#IFDESCR}({#IFALIAS}) (LLD)|<p>-</p>|`SNMP agent`|InterfaceInUnicastPacketsTraffic.[{#SNMPINDEX},{#IFDESCR}]<p>Update: 10m</p>|
|出方向带宽利用率 {#IFDESCR}({#IFALIAS}) (LLD)|<p>-</p>|`Calculated`|InterfaceOutBandwidthUsage[{#SNMPINDEX},{#IFDESCR}]<p>Update: 10m</p>|
|出方向广播报文速率 {#IFDESCR}({#IFALIAS}) (LLD)|<p>-</p>|`SNMP agent`|InterfaceOutBroadcastPacketTraffic.[{#SNMPINDEX},{#IFDESCR}]<p>Update: 10m</p>|
|出方向组播报文速率 {#IFDESCR}({#IFALIAS}) (LLD)|<p>-</p>|`SNMP agent`|InterfaceOutMulticastPackestTraffic.[{#SNMPINDEX},{#IFDESCR}]<p>Update: 10m</p>|
|出方向错包 {#IFDESCR}({#IFALIAS}) (LLD)|<p>-</p>|`SNMP agent`|InterfaceOutPacketError.[{#SNMPINDEX},{#IFDESCR}]<p>Update: 10m</p>|
|出方向流量 {#IFDESCR}({#IFALIAS}) (LLD)|<p>-</p>|`SNMP agent`|InterfaceOutTraffic.[{#SNMPINDEX},{#IFDESCR}]<p>Update: 10m</p>|
|出方向单播报文速率 {#IFDESCR}({#IFALIAS}) (LLD)|<p>-</p>|`SNMP agent`|InterfaceOutUnicastPacketsTraffic.[{#SNMPINDEX},{#IFDESCR}]<p>Update: 10m</p>|
|端口:{#IFDESCR}({#IFALIAS})状态 (LLD)|<p>The current operational state of the interface.</p>|`SNMP agent`|InterfaceOperationStatus.[{#SNMPINDEX}]<p>Update: 5m</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|CPU利用率高|<p>2个周期CPU利用率均大于宏{$CPU_USAGE_THRESHOLD}</p>|<p>**Expression**: {H3C_Switch Monitor Template:MONITOR_CPUUsage.[{#SNMPINDEX},{#ENTITYDESCR}].min(#2)}>80</p><p>**Recovery expression**: </p>|high|
|内存利用率高|<p>-</p>|<p>**Expression**: {H3C_Switch Monitor Template:MONITOR_MemoryUsage.[{#SNMPINDEX},{#ENTITYDESCR}].min(#2)}>80</p><p>**Recovery expression**: </p>|high|
|{#ENTITYDESCR} 实体失效|<p>-</p>|<p>**Expression**: {H3C_Switch Monitor Template:EntityOperationStatus.[{#SNMPINDEX}].last(#1)}=2</p><p>**Recovery expression**: </p>|high|
|{#ENTITYDESCR} 实体故障|<p>-</p>|<p>**Expression**: {H3C_Switch Monitor Template:EntityOperationStatus.[{#SNMPINDEX}].last(#1)}=4</p><p>**Recovery expression**: </p>|high|
|端口:{#IFDESCR} down|<p>-</p>|<p>**Expression**: {H3C_Switch Monitor Template:InterfaceOperationStatus.[{#SNMPINDEX}].last(#2)}=1 and {H3C_Switch Monitor Template:InterfaceOperationStatus.[{#SNMPINDEX}].last(#1)}=2</p><p>**Recovery expression**: {H3C_Switch Monitor Template:InterfaceOperationStatus.[{#SNMPINDEX}].last(#1)}=1</p>|high|
|{#IFDESCR} 入方向带宽利用率高|<p>-</p>|<p>**Expression**: {H3C_Switch Monitor Template:InterfaceInBandwidthUsage.[{#SNMPINDEX},{#IFDESCR}].last()}>95</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 入方向错包率高|<p>-</p>|<p>**Expression**: {H3C_Switch Monitor Template:InterfaceInPacketError.[{#SNMPINDEX},{#IFDESCR}].last()}>50</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 出方向带宽利用率高|<p>-</p>|<p>**Expression**: {H3C_Switch Monitor Template:InterfaceOutBandwidthUsage[{#SNMPINDEX},{#IFDESCR}].last()}>95</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 出方向错包率高|<p>-</p>|<p>**Expression**: {H3C_Switch Monitor Template:InterfaceOutPacketError.[{#SNMPINDEX},{#IFDESCR}].last()}>50</p><p>**Recovery expression**: </p>|high|
|{#ENTITYDESCR} 实体失效 (LLD)|<p>-</p>|<p>**Expression**: {H3C_Switch Monitor Template:EntityOperationStatus.[{#SNMPINDEX}].last(#1)}=2</p><p>**Recovery expression**: </p>|high|
|{#ENTITYDESCR} 实体故障 (LLD)|<p>-</p>|<p>**Expression**: {H3C_Switch Monitor Template:EntityOperationStatus.[{#SNMPINDEX}].last(#1)}=4</p><p>**Recovery expression**: </p>|high|
|CPU利用率高 (LLD)|<p>2个周期CPU利用率均大于宏{$CPU_USAGE_THRESHOLD}</p>|<p>**Expression**: {H3C_Switch Monitor Template:MONITOR_CPUUsage.[{#SNMPINDEX},{#ENTITYDESCR}].min(#2)}>80</p><p>**Recovery expression**: </p>|high|
|内存利用率高 (LLD)|<p>-</p>|<p>**Expression**: {H3C_Switch Monitor Template:MONITOR_MemoryUsage.[{#SNMPINDEX},{#ENTITYDESCR}].min(#2)}>80</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 入方向带宽利用率高 (LLD)|<p>-</p>|<p>**Expression**: {H3C_Switch Monitor Template:InterfaceInBandwidthUsage.[{#SNMPINDEX},{#IFDESCR}].last()}>95</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 入方向错包率高 (LLD)|<p>-</p>|<p>**Expression**: {H3C_Switch Monitor Template:InterfaceInPacketError.[{#SNMPINDEX},{#IFDESCR}].last()}>50</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 出方向带宽利用率高 (LLD)|<p>-</p>|<p>**Expression**: {H3C_Switch Monitor Template:InterfaceOutBandwidthUsage[{#SNMPINDEX},{#IFDESCR}].last()}>95</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 出方向错包率高 (LLD)|<p>-</p>|<p>**Expression**: {H3C_Switch Monitor Template:InterfaceOutPacketError.[{#SNMPINDEX},{#IFDESCR}].last()}>50</p><p>**Recovery expression**: </p>|high|
|端口:{#IFDESCR} down (LLD)|<p>-</p>|<p>**Expression**: {H3C_Switch Monitor Template:InterfaceOperationStatus.[{#SNMPINDEX}].last(#2)}=1 and {H3C_Switch Monitor Template:InterfaceOperationStatus.[{#SNMPINDEX}].last(#1)}=2</p><p>**Recovery expression**: {H3C_Switch Monitor Template:InterfaceOperationStatus.[{#SNMPINDEX}].last(#1)}=1</p>|high|
