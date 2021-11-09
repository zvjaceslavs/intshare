# 瞻博SRX防火墙监控模板

## Overview

瞻博（Juniper）SRX系列防火墙监控模板


已在SRX3600，SRX650完成验证


主要包括CPU利用率、内存利用率、端口状态、端口带宽利用率、端口报文速率、CP会话、flow会话、新建会话


将宏 {$CLOUD\_SNMP\_COMMUNITY} 替换为实际团体字即可



## Author

zhangzhefeng

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$BANDWIDTH_USAGE_IN_THRESHOLD}|<p>-</p>|`90`|Text macro|
|{$BANDWIDTH_USAGE_OUT_THRESHOLD}|<p>-</p>|`90`|Text macro|
|{$CLOUD_SNMP_COMMUNITY}|<p>-</p>|`public`|Text macro|
|{$CP_SESSION_USAGE_THRESHOLD}|<p>-</p>|`80`|Text macro|
|{$CPU_USAGE_THRESHOLD}|<p>-</p>|`80`|Text macro|
|{$ERROR_PACKETS_IN_THRESHOLD}|<p>-</p>|`10`|Text macro|
|{$ERROR_PACKETS_OUT_THRESHOLD}|<p>-</p>|`10`|Text macro|
|{$FLOW_SESSION_USAGE_THRESHOLD}|<p>-</p>|`80`|Text macro|
|{$ICMP_LOSS_WARN}|<p>-</p>|`30`|Text macro|
|{$ICMP_RESPONSE_TIME_WARN}|<p>-</p>|`0.1`|Text macro|
|{$MEMORY_USAGE_THRESHOLD}|<p>-</p>|`80`|Text macro|
|{$SESSION_CREATEDRATE_THRESHOLD}|<p>-</p>|`2000`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|端口发现|<p>-</p>|`SNMP agent`|InterfaceDiscovery_traffic<p>Update: 12h</p>|
|端口发现|<p>You may also consider using IF-MIB::ifType or IF-MIB::ifAlias for discovery depending on your filtering needs. {$CLOUD_SNMP_COMMUNITY} is a global macro.</p>|`SNMP agent`|InterfaceDiscovery_status<p>Update: 12h</p>|
|FPC板卡发现|<p>-</p>|`SNMP agent`|FPCBoardDiscovery<p>Update: 12h</p>|
|节点发现|<p>-</p>|`SNMP agent`|NodeDiscovery<p>Update: 12h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|运行时间|<p>-</p>|`SNMP agent`|SystemUpTime<p>Update: 1h</p>|
|系统信息|<p>-</p>|`SNMP agent`|SystemDescription<p>Update: 1h</p>|
|ping时延|<p>-</p>|`Simple check`|icmppingsec[,10,,,,avg]<p>Update: 5m</p>|
|trap消息|<p>-</p>|`SNMP trap`|snmptrap[""]<p>Update: 0</p>|
|ping丢包率|<p>-</p>|`Simple check`|icmppingloss[,10,,,]<p>Update: 5m</p>|
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
|端口:{#IFDESCR}({#IFALIAS})状态|<p>The current operational state of the interface.</p>|`SNMP agent`|InterfaceOperationStatus.[{#SNMPINDEX}]<p>Update: 5m</p><p>LLD</p>|
|node{#SNMPVALUE} {#SNMPINDEX}号FPC板卡CP会话|<p>-</p>|`SNMP agent`|CPSession.[{#SNMPVALUE},{#SNMPINDEX}]<p>Update: 5m</p><p>LLD</p>|
|node{#SNMPVALUE} {#SNMPINDEX}号FPC板卡CP会话利用率|<p>-</p>|`Calculated`|CPSessionUsage.[{#SNMPVALUE},{#SNMPINDEX}]<p>Update: 5m</p><p>LLD</p>|
|node{#SNMPVALUE} {#SNMPINDEX}号FPC板卡CPU利用率|<p>-</p>|`SNMP agent`|CPUUsage.[{#SNMPVALUE},{#SNMPINDEX}]<p>Update: 5m</p><p>LLD</p>|
|node{#SNMPVALUE} {#SNMPINDEX}号FPC板卡flow会话|<p>-</p>|`SNMP agent`|FlowSession.[{#SNMPVALUE},{#SNMPINDEX}]<p>Update: 5m</p><p>LLD</p>|
|node{#SNMPVALUE} {#SNMPINDEX}号FPC板卡flow会话利用率|<p>-</p>|`Calculated`|FlowSessionUsage.[{#SNMPVALUE},{#SNMPINDEX}]<p>Update: 5m</p><p>LLD</p>|
|node{#SNMPVALUE} {#SNMPINDEX}号FPC板卡最大CP会话|<p>-</p>|`SNMP agent`|MaxCPSession.[{#SNMPVALUE},{#SNMPINDEX}]<p>Update: 12h</p><p>LLD</p>|
|node{#SNMPVALUE} {#SNMPINDEX}号FPC板卡最大flow会话|<p>-</p>|`SNMP agent`|MaxFlowSession.[{#SNMPVALUE},{#SNMPINDEX}]<p>Update: 12h</p><p>LLD</p>|
|node{#SNMPVALUE} {#SNMPINDEX}号FPC板卡内存利用率|<p>-</p>|`SNMP agent`|MemUsage.[{#SNMPVALUE},{#SNMPINDEX}]<p>Update: 5m</p><p>LLD</p>|
|node {#SNMPVALUE} 新建会话速率|<p>-</p>|`SNMP agent`|SessionCreatedRate.[{#SNMPINDEX},{#SNMPVALUE}]<p>Update: 3m</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|CPU利用率高|<p>-</p>|<p>**Expression**: {monitor_Firewall_Juniper_SRX:CPUUsage.[{#SNMPVALUE},{#SNMPINDEX}].min(#2)}>80</p><p>**Recovery expression**: </p>|high|
|CP会话利用率高|<p>-</p>|<p>**Expression**: {monitor_Firewall_Juniper_SRX:CPSessionUsage.[{#SNMPVALUE},{#SNMPINDEX}].min(#2)}>80</p><p>**Recovery expression**: </p>|high|
|flow会话利用率高|<p>-</p>|<p>**Expression**: {monitor_Firewall_Juniper_SRX:FlowSessionUsage.[{#SNMPVALUE},{#SNMPINDEX}].min(#2)}>80</p><p>**Recovery expression**: </p>|high|
|内存利用率高|<p>-</p>|<p>**Expression**: {monitor_Firewall_Juniper_SRX:MemUsage.[{#SNMPVALUE},{#SNMPINDEX}].min(#2)}>80</p><p>**Recovery expression**: </p>|high|
|端口 {#IFDESCR} down|<p>-</p>|<p>**Expression**: {monitor_Firewall_Juniper_SRX:InterfaceOperationStatus.[{#SNMPINDEX}].last(#2)}=1 and {monitor_Firewall_Juniper_SRX:InterfaceOperationStatus.[{#SNMPINDEX}].last(#1)}=2</p><p>**Recovery expression**: {monitor_Firewall_Juniper_SRX:InterfaceOperationStatus.[{#SNMPINDEX}].last(#2)}=1 and {monitor_Firewall_Juniper_SRX:InterfaceOperationStatus.[{#SNMPINDEX}].last(#1)}=1</p>|high|
|端口 {#IFDESCR} 入方向带宽利用率高|<p>-</p>|<p>**Expression**: {monitor_Firewall_Juniper_SRX:InterfaceInBandwidthUsage.[{#SNMPINDEX},{#IFDESCR}].last()}>90</p><p>**Recovery expression**: </p>|high|
|端口 {#IFDESCR} 入方向错包率高|<p>-</p>|<p>**Expression**: {monitor_Firewall_Juniper_SRX:InterfaceInPacketError.[{#SNMPINDEX},{#IFDESCR}].last()}>10</p><p>**Recovery expression**: </p>|high|
|端口 {#IFDESCR} 出方向带宽利用率高|<p>-</p>|<p>**Expression**: {monitor_Firewall_Juniper_SRX:InterfaceOutBandwidthUsage[{#SNMPINDEX},{#IFDESCR}].last()}>90</p><p>**Recovery expression**: </p>|high|
|端口 {#IFDESCR} 出方向错包率高|<p>-</p>|<p>**Expression**: {monitor_Firewall_Juniper_SRX:InterfaceOutPacketError.[{#SNMPINDEX},{#IFDESCR}].last()}>10</p><p>**Recovery expression**: </p>|high|
|新建会话数高|<p>-</p>|<p>**Expression**: {monitor_Firewall_Juniper_SRX:SessionCreatedRate.[{#SNMPINDEX},{#SNMPVALUE}].last()}>2000</p><p>**Recovery expression**: </p>|high|
|端口 {#IFDESCR} 入方向带宽利用率高 (LLD)|<p>-</p>|<p>**Expression**: {monitor_Firewall_Juniper_SRX:InterfaceInBandwidthUsage.[{#SNMPINDEX},{#IFDESCR}].last()}>90</p><p>**Recovery expression**: </p>|high|
|端口 {#IFDESCR} 入方向错包率高 (LLD)|<p>-</p>|<p>**Expression**: {monitor_Firewall_Juniper_SRX:InterfaceInPacketError.[{#SNMPINDEX},{#IFDESCR}].last()}>10</p><p>**Recovery expression**: </p>|high|
|端口 {#IFDESCR} 出方向带宽利用率高 (LLD)|<p>-</p>|<p>**Expression**: {monitor_Firewall_Juniper_SRX:InterfaceOutBandwidthUsage[{#SNMPINDEX},{#IFDESCR}].last()}>90</p><p>**Recovery expression**: </p>|high|
|端口 {#IFDESCR} 出方向错包率高 (LLD)|<p>-</p>|<p>**Expression**: {monitor_Firewall_Juniper_SRX:InterfaceOutPacketError.[{#SNMPINDEX},{#IFDESCR}].last()}>10</p><p>**Recovery expression**: </p>|high|
|端口 {#IFDESCR} down (LLD)|<p>-</p>|<p>**Expression**: {monitor_Firewall_Juniper_SRX:InterfaceOperationStatus.[{#SNMPINDEX}].last(#2)}=1 and {monitor_Firewall_Juniper_SRX:InterfaceOperationStatus.[{#SNMPINDEX}].last(#1)}=2</p><p>**Recovery expression**: {monitor_Firewall_Juniper_SRX:InterfaceOperationStatus.[{#SNMPINDEX}].last(#2)}=1 and {monitor_Firewall_Juniper_SRX:InterfaceOperationStatus.[{#SNMPINDEX}].last(#1)}=1</p>|high|
|CPU利用率高 (LLD)|<p>-</p>|<p>**Expression**: {monitor_Firewall_Juniper_SRX:CPUUsage.[{#SNMPVALUE},{#SNMPINDEX}].min(#2)}>80</p><p>**Recovery expression**: </p>|high|
|CP会话利用率高 (LLD)|<p>-</p>|<p>**Expression**: {monitor_Firewall_Juniper_SRX:CPSessionUsage.[{#SNMPVALUE},{#SNMPINDEX}].min(#2)}>80</p><p>**Recovery expression**: </p>|high|
|flow会话利用率高 (LLD)|<p>-</p>|<p>**Expression**: {monitor_Firewall_Juniper_SRX:FlowSessionUsage.[{#SNMPVALUE},{#SNMPINDEX}].min(#2)}>80</p><p>**Recovery expression**: </p>|high|
|内存利用率高 (LLD)|<p>-</p>|<p>**Expression**: {monitor_Firewall_Juniper_SRX:MemUsage.[{#SNMPVALUE},{#SNMPINDEX}].min(#2)}>80</p><p>**Recovery expression**: </p>|high|
|新建会话数高 (LLD)|<p>-</p>|<p>**Expression**: {monitor_Firewall_Juniper_SRX:SessionCreatedRate.[{#SNMPINDEX},{#SNMPVALUE}].last()}>2000</p><p>**Recovery expression**: </p>|high|
