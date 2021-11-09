# 华三SecPath防火墙监控模板

## Description

## Overview 新华三SecPath系列防火墙监控模板 已在M9010、M9008完成验证 主要包括CPU利用率、内存利用率、端口状态、端口带宽利用率、端口报文速率、并发会话、新建会话、实体（电源、风扇、板卡）状态 将宏 {$CLOUD _SNMP _COMMUNITY} 替换为实际团体字即可 ## Author zhangzhefeng 

## Overview

新华三SecPath系列防火墙监控模板


已在M9010、M9008完成验证


主要包括CPU利用率、内存利用率、端口状态、端口带宽利用率、端口报文速率、并发会话、新建会话、实体（电源、风扇、板卡）状态


将宏 {$CLOUD\_SNMP\_COMMUNITY} 替换为实际团体字即可



## Author

zhangzhefeng

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$BANDWIDTH_USAGE_IN_THRESHOLD}|<p>-</p>|`90`|Text macro|
|{$BANDWIDTH_USAGE_OUT_THRESHOLD}|<p>-</p>|`90`|Text macro|
|{$CLOUD_SNMP_COMMUNITY}|<p>-</p>|`public`|Text macro|
|{$CPU_USAGE_THRESHOLD}|<p>-</p>|`60`|Text macro|
|{$ERROR_PACKETS_IN_THRESHOLD}|<p>-</p>|`10`|Text macro|
|{$ERROR_PACKETS_OUT_THRESHOLD}|<p>-</p>|`10`|Text macro|
|{$ICMP_LOSS_WARN}|<p>-</p>|`30`|Text macro|
|{$ICMP_RESPONSE_TIME_WARN}|<p>-</p>|`0.1`|Text macro|
|{$MEMORY_USAGE_THRESHOLD}|<p>-</p>|`60`|Text macro|
|{$TCP_SESSION_THRESHOLD}|<p>-</p>|`500000`|Text macro|
|{$UDP_SESSION_THRESHOLD}|<p>-</p>|`500000`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|端口发现|<p>-</p>|`SNMP agent`|InterfaceDiscovery_traffic<p>Update: 12h</p>|
|实体发现|<p>-</p>|`SNMP agent`|EntityDiscovery<p>Update: 12h</p>|
|端口发现|<p>You may also consider using IF-MIB::ifType or IF-MIB::ifAlias for discovery depending on your filtering needs. {$CLOUD_SNMP_COMMUNITY} is a global macro.</p>|`SNMP agent`|InterfaceDiscovery_status<p>Update: 12h</p>|
|CPU发现|<p>-</p>|`SNMP agent`|CPUDiscovery<p>Update: 1d</p>|
|板卡发现|<p>-</p>|`SNMP agent`|BoardDiscovery<p>Update: 12h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|运行时间|<p>-</p>|`SNMP agent`|SystemUpTime<p>Update: 1h</p>|
|ping时延|<p>-</p>|`Simple check`|icmppingsec[,10,,,,avg]<p>Update: 5m</p>|
|ping丢包率|<p>-</p>|`Simple check`|icmppingloss[,10,,,]<p>Update: 5m</p>|
|trap消息|<p>-</p>|`SNMP trap`|snmptrap[""]<p>Update: 0</p>|
|系统信息|<p>-</p>|`SNMP agent`|SystemDescription<p>Update: 1h</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping[,5,,,]<p>Update: 1m</p>|
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
|实体运行状态 {#ENTITYDESCR}|<p>-</p>|`SNMP agent`|EntityOperationStatus.[{#SNMPINDEX}]<p>Update: 10m</p><p>LLD</p>|
|端口 {#IFDESCR}({#IFALIAS})状态|<p>The current operational state of the interface.</p>|`SNMP agent`|InterfaceOperationStatus.[{#SNMPINDEX}]<p>Update: 5m</p><p>LLD</p>|
|并发会话数 CPU[{#SNMPINDEX}]|<p>-</p>|`SNMP agent`|CurrentSessionNumber.[{#SNMPINDEX}]<p>Update: 3m</p><p>LLD</p>|
|其他新建会话速率 CPU[{#SNMPINDEX}]|<p>-</p>|`SNMP agent`|OtherSessionCreatedRate.[{#SNMPINDEX}]<p>Update: 3m</p><p>LLD</p>|
|其他并发会话数 CPU[{#SNMPINDEX}]|<p>-</p>|`SNMP agent`|OtherSessionNumber.[{#SNMPINDEX}]<p>Update: 3m</p><p>LLD</p>|
|新建会话速率 CPU[{#SNMPINDEX}]|<p>-</p>|`SNMP agent`|SessionCreatedRate.[{#SNMPINDEX}]<p>Update: 3m</p><p>LLD</p>|
|TCP新建会话速率 CPU[{#SNMPINDEX}]|<p>-</p>|`SNMP agent`|TCPSessionCreatedRate[{#SNMPINDEX}]<p>Update: 3m</p><p>LLD</p>|
|TCP并发会话数 CPU[{#SNMPINDEX}]|<p>-</p>|`SNMP agent`|TCPSessionNumber.[{#SNMPINDEX}]<p>Update: 3m</p><p>LLD</p>|
|UDP新建会话速率 CPU[{#SNMPINDEX}]|<p>-</p>|`SNMP agent`|UDPSessionCreatedRate.[{#SNMPINDEX}]<p>Update: 3m</p><p>LLD</p>|
|UDP并发会话数 CPU[{#SNMPINDEX}]|<p>-</p>|`SNMP agent`|UDPSessionNumber.[{#SNMPINDEX}]<p>Update: 3m</p><p>LLD</p>|
|CPU利用率 {#ENTITYDESCR}|<p>-</p>|`SNMP agent`|MONITOR_CPUUsage.[{#SNMPINDEX},{#ENTITYDESCR}]<p>Update: 5m</p><p>LLD</p>|
|内存利用率 {#ENTITYDESCR}|<p>-</p>|`SNMP agent`|MONITOR_MemoryUsage.[{#SNMPINDEX},{#ENTITYDESCR}]<p>Update: 5m</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|CPU利用率高|<p>2个周期CPU利用率均大于宏{$CPU_USAGE_THRESHOLD}</p>|<p>**Expression**: {monitor_Firewall_H3C_SecPath:MONITOR_CPUUsage.[{#SNMPINDEX},{#ENTITYDESCR}].min(#2)}>60</p><p>**Recovery expression**: </p>|high|
|内存利用率高|<p>-</p>|<p>**Expression**: {monitor_Firewall_H3C_SecPath:MONITOR_MemoryUsage.[{#SNMPINDEX},{#ENTITYDESCR}].min(#2)}>60</p><p>**Recovery expression**: </p>|high|
|TCP并发会话数高|<p>-</p>|<p>**Expression**: {monitor_Firewall_H3C_SecPath:TCPSessionNumber.[{#SNMPINDEX}].min(#2)}>500000</p><p>**Recovery expression**: </p>|high|
|UDP并发会话数高|<p>-</p>|<p>**Expression**: {monitor_Firewall_H3C_SecPath:UDPSessionNumber.[{#SNMPINDEX}].min(#2)}>500000</p><p>**Recovery expression**: </p>|high|
|{#ENTITYDESCR} 实体失效|<p>-</p>|<p>**Expression**: {monitor_Firewall_H3C_SecPath:EntityOperationStatus.[{#SNMPINDEX}].last(#1)}=2</p><p>**Recovery expression**: </p>|high|
|{#ENTITYDESCR} 实体故障|<p>-</p>|<p>**Expression**: {monitor_Firewall_H3C_SecPath:EntityOperationStatus.[{#SNMPINDEX}].last(#1)}=4</p><p>**Recovery expression**: </p>|high|
|端口 {#IFDESCR} down|<p>-</p>|<p>**Expression**: {monitor_Firewall_H3C_SecPath:InterfaceOperationStatus.[{#SNMPINDEX}].last(#2)}=1 and {monitor_Firewall_H3C_SecPath:InterfaceOperationStatus.[{#SNMPINDEX}].last(#1)}=2</p><p>**Recovery expression**: {monitor_Firewall_H3C_SecPath:InterfaceOperationStatus.[{#SNMPINDEX}].last(#2)}=1 and {monitor_Firewall_H3C_SecPath:InterfaceOperationStatus.[{#SNMPINDEX}].last(#1)}=1</p>|high|
|{#IFDESCR} 入方向带宽利用率高|<p>-</p>|<p>**Expression**: {monitor_Firewall_H3C_SecPath:InterfaceInBandwidthUsage.[{#SNMPINDEX},{#IFDESCR}].last()}>90</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 入方向错包率高|<p>-</p>|<p>**Expression**: {monitor_Firewall_H3C_SecPath:InterfaceInPacketError.[{#SNMPINDEX},{#IFDESCR}].last()}>10</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 出方向带宽利用率高|<p>-</p>|<p>**Expression**: {monitor_Firewall_H3C_SecPath:InterfaceOutBandwidthUsage[{#SNMPINDEX},{#IFDESCR}].last()}>90</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 出方向错包率高|<p>-</p>|<p>**Expression**: {monitor_Firewall_H3C_SecPath:InterfaceOutPacketError.[{#SNMPINDEX},{#IFDESCR}].last()}>10</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 入方向带宽利用率高 (LLD)|<p>-</p>|<p>**Expression**: {monitor_Firewall_H3C_SecPath:InterfaceInBandwidthUsage.[{#SNMPINDEX},{#IFDESCR}].last()}>90</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 入方向错包率高 (LLD)|<p>-</p>|<p>**Expression**: {monitor_Firewall_H3C_SecPath:InterfaceInPacketError.[{#SNMPINDEX},{#IFDESCR}].last()}>10</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 出方向带宽利用率高 (LLD)|<p>-</p>|<p>**Expression**: {monitor_Firewall_H3C_SecPath:InterfaceOutBandwidthUsage[{#SNMPINDEX},{#IFDESCR}].last()}>90</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 出方向错包率高 (LLD)|<p>-</p>|<p>**Expression**: {monitor_Firewall_H3C_SecPath:InterfaceOutPacketError.[{#SNMPINDEX},{#IFDESCR}].last()}>10</p><p>**Recovery expression**: </p>|high|
|{#ENTITYDESCR} 实体失效 (LLD)|<p>-</p>|<p>**Expression**: {monitor_Firewall_H3C_SecPath:EntityOperationStatus.[{#SNMPINDEX}].last(#1)}=2</p><p>**Recovery expression**: </p>|high|
|{#ENTITYDESCR} 实体故障 (LLD)|<p>-</p>|<p>**Expression**: {monitor_Firewall_H3C_SecPath:EntityOperationStatus.[{#SNMPINDEX}].last(#1)}=4</p><p>**Recovery expression**: </p>|high|
|端口 {#IFDESCR} down (LLD)|<p>-</p>|<p>**Expression**: {monitor_Firewall_H3C_SecPath:InterfaceOperationStatus.[{#SNMPINDEX}].last(#2)}=1 and {monitor_Firewall_H3C_SecPath:InterfaceOperationStatus.[{#SNMPINDEX}].last(#1)}=2</p><p>**Recovery expression**: {monitor_Firewall_H3C_SecPath:InterfaceOperationStatus.[{#SNMPINDEX}].last(#2)}=1 and {monitor_Firewall_H3C_SecPath:InterfaceOperationStatus.[{#SNMPINDEX}].last(#1)}=1</p>|high|
|TCP并发会话数高 (LLD)|<p>-</p>|<p>**Expression**: {monitor_Firewall_H3C_SecPath:TCPSessionNumber.[{#SNMPINDEX}].min(#2)}>500000</p><p>**Recovery expression**: </p>|high|
|UDP并发会话数高 (LLD)|<p>-</p>|<p>**Expression**: {monitor_Firewall_H3C_SecPath:UDPSessionNumber.[{#SNMPINDEX}].min(#2)}>500000</p><p>**Recovery expression**: </p>|high|
|CPU利用率高 (LLD)|<p>2个周期CPU利用率均大于宏{$CPU_USAGE_THRESHOLD}</p>|<p>**Expression**: {monitor_Firewall_H3C_SecPath:MONITOR_CPUUsage.[{#SNMPINDEX},{#ENTITYDESCR}].min(#2)}>60</p><p>**Recovery expression**: </p>|high|
|内存利用率高 (LLD)|<p>-</p>|<p>**Expression**: {monitor_Firewall_H3C_SecPath:MONITOR_MemoryUsage.[{#SNMPINDEX},{#ENTITYDESCR}].min(#2)}>60</p><p>**Recovery expression**: </p>|high|
