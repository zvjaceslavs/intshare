# 思科UCS交换矩阵监控模板

## Overview

思科UCS交换矩阵监控模板 


包括CPU、Raid卡、内存、刀片、电源、硬盘、风扇、端口状态


将宏{$CLOUD\_SNMP\_COMMUNITY}替换为实际团体字即可


某些情况下监控是浮动地址无效，需要监控实际地址



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
|内存发现|<p>-</p>|`SNMP agent`|MemoryDiscovery<p>Update: 1d</p>|
|端口发现|<p>-</p>|`SNMP agent`|InterfaceDiscovery_status<p>Update: 1d</p>|
|RAID电池发现|<p>-</p>|`SNMP agent`|RaidBatteryDiscovery<p>Update: 1d</p>|
|硬盘发现|<p>-</p>|`SNMP agent`|DiskDiscovery<p>Update: 1d</p>|
|RAID控制器发现|<p>-</p>|`SNMP agent`|RaidControllerDiscovery<p>Update: 1d</p>|
|电源发现|<p>-</p>|`SNMP agent`|PowerSupplyDiscovery<p>Update: 1d</p>|
|CPU发现|<p>-</p>|`SNMP agent`|CPUDiscovery<p>Update: 1d</p>|
|刀片发现|<p>-</p>|`SNMP agent`|BladeDiscovery<p>Update: 1d</p>|
|风扇发现|<p>-</p>|`SNMP agent`|FanDiscovery<p>Update: 1d</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ping丢包率|<p>-</p>|`Simple check`|icmppingloss[,10,,,]<p>Update: 5m</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping[,5,,,]<p>Update: 1m</p>|
|运行时间|<p>-</p>|`SNMP agent`|SystemUpTime<p>Update: 1h</p>|
|系统信息|<p>-</p>|`SNMP agent`|SystemDescription<p>Update: 1h</p>|
|ping时延|<p>-</p>|`Simple check`|icmppingsec[,10,,,,avg]<p>Update: 5m</p>|
|内存运行状态 {#SNMPVALUE}|<p>-</p>|`SNMP agent`|MemoryStatus.[{#SNMPINDEX}]<p>Update: 30m</p><p>LLD</p>|
|端口:{#IFDESCR}({#IFALIAS})状态|<p>The current operational state of the interface.</p>|`SNMP agent`|InterfaceOperationStatus.[{#SNMPINDEX}]<p>Update: 5m</p><p>LLD</p>|
|Raid电池运行状态 {#SNMPVALUE}|<p>-</p>|`SNMP agent`|RaidBatteryStatus.[{#SNMPINDEX}]<p>Update: 30m</p><p>LLD</p>|
|硬盘运行状态 {#SNMPVALUE}|<p>-</p>|`SNMP agent`|DiskStatus.[{#SNMPINDEX}]<p>Update: 30m</p><p>LLD</p>|
|Raid控制器运行状态 {#SNMPVALUE}|<p>-</p>|`SNMP agent`|RaidControllerStatus.[{#SNMPINDEX}]<p>Update: 30m</p><p>LLD</p>|
|电源运行状态 {#SNMPVALUE}|<p>-</p>|`SNMP agent`|PowerSupplyOperationStatus.[{#SNMPINDEX}]<p>Update: 30m</p><p>LLD</p>|
|CPU运行状态 {#SNMPVALUE}|<p>-</p>|`SNMP agent`|CPUStatus.[{#SNMPINDEX}]<p>Update: 30m</p><p>LLD</p>|
|刀片运行状态 {#SNMPVALUE}|<p>-</p>|`SNMP agent`|BladeOperationStatus.[{#SNMPINDEX}]<p>Update: 30m</p><p>LLD</p>|
|风扇运行状态 {#SNMPVALUE}|<p>-</p>|`SNMP agent`|FanOperationStatus.[{#SNMPINDEX}]<p>Update: 30m</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|刀片异常|<p>-</p>|<p>**Expression**: {monitor_FabricInterconnect_Cisco_UCS:BladeOperationStatus.[{#SNMPINDEX}].last(#1)}>1</p><p>**Recovery expression**: </p>|high|
|CPU状态异常|<p>-</p>|<p>**Expression**: {monitor_FabricInterconnect_Cisco_UCS:CPUStatus.[{#SNMPINDEX}].last(#1)}>1</p><p>**Recovery expression**: </p>|high|
|硬盘状态异常|<p>-</p>|<p>**Expression**: {monitor_FabricInterconnect_Cisco_UCS:DiskStatus.[{#SNMPINDEX}].last(#1)}>1</p><p>**Recovery expression**: </p>|high|
|风扇异常|<p>-</p>|<p>**Expression**: {monitor_FabricInterconnect_Cisco_UCS:FanOperationStatus.[{#SNMPINDEX}].last(#1)}>1</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 端口状态异常|<p>因2019年10月1日二长7楼163方向防火墙出现状态7的告警，特增加此触发器</p>|<p>**Expression**: {monitor_FabricInterconnect_Cisco_UCS:InterfaceOperationStatus.[{#SNMPINDEX}].last(#2)}=1 and {monitor_FabricInterconnect_Cisco_UCS:InterfaceOperationStatus.[{#SNMPINDEX}].last(#1)}<>1 and {monitor_FabricInterconnect_Cisco_UCS:InterfaceOperationStatus.[{#SNMPINDEX}].last(#1)}<>2</p><p>**Recovery expression**: {monitor_FabricInterconnect_Cisco_UCS:InterfaceOperationStatus.[{#SNMPINDEX}].last(#2)}=1 and {monitor_FabricInterconnect_Cisco_UCS:InterfaceOperationStatus.[{#SNMPINDEX}].last(#1)}=1</p>|average|
|端口:{#IFDESCR} down|<p>-</p>|<p>**Expression**: {monitor_FabricInterconnect_Cisco_UCS:InterfaceOperationStatus.[{#SNMPINDEX}].last(#2)}=1 and {monitor_FabricInterconnect_Cisco_UCS:InterfaceOperationStatus.[{#SNMPINDEX}].last(#1)}=2</p><p>**Recovery expression**: {monitor_FabricInterconnect_Cisco_UCS:InterfaceOperationStatus.[{#SNMPINDEX}].last(#2)}=1 and {monitor_FabricInterconnect_Cisco_UCS:InterfaceOperationStatus.[{#SNMPINDEX}].last(#1)}=1</p>|high|
|内存状态异常|<p>-</p>|<p>**Expression**: {monitor_FabricInterconnect_Cisco_UCS:MemoryStatus.[{#SNMPINDEX}].last(#1)}>1</p><p>**Recovery expression**: </p>|high|
|电源异常|<p>-</p>|<p>**Expression**: {monitor_FabricInterconnect_Cisco_UCS:PowerSupplyOperationStatus.[{#SNMPINDEX}].last(#1)}>1</p><p>**Recovery expression**: </p>|high|
|Raid电池状态异常|<p>-</p>|<p>**Expression**: {monitor_FabricInterconnect_Cisco_UCS:RaidBatteryStatus.[{#SNMPINDEX}].last(#1)}>1</p><p>**Recovery expression**: </p>|high|
|Raid控制器状态异常|<p>-</p>|<p>**Expression**: {monitor_FabricInterconnect_Cisco_UCS:RaidControllerStatus.[{#SNMPINDEX}].last(#1)}>1</p><p>**Recovery expression**: </p>|high|
|内存状态异常 (LLD)|<p>-</p>|<p>**Expression**: {monitor_FabricInterconnect_Cisco_UCS:MemoryStatus.[{#SNMPINDEX}].last(#1)}>1</p><p>**Recovery expression**: </p>|high|
|{#IFDESCR} 端口状态异常 (LLD)|<p>因2019年10月1日二长7楼163方向防火墙出现状态7的告警，特增加此触发器</p>|<p>**Expression**: {monitor_FabricInterconnect_Cisco_UCS:InterfaceOperationStatus.[{#SNMPINDEX}].last(#2)}=1 and {monitor_FabricInterconnect_Cisco_UCS:InterfaceOperationStatus.[{#SNMPINDEX}].last(#1)}<>1 and {monitor_FabricInterconnect_Cisco_UCS:InterfaceOperationStatus.[{#SNMPINDEX}].last(#1)}<>2</p><p>**Recovery expression**: {monitor_FabricInterconnect_Cisco_UCS:InterfaceOperationStatus.[{#SNMPINDEX}].last(#2)}=1 and {monitor_FabricInterconnect_Cisco_UCS:InterfaceOperationStatus.[{#SNMPINDEX}].last(#1)}=1</p>|average|
|端口:{#IFDESCR} down (LLD)|<p>-</p>|<p>**Expression**: {monitor_FabricInterconnect_Cisco_UCS:InterfaceOperationStatus.[{#SNMPINDEX}].last(#2)}=1 and {monitor_FabricInterconnect_Cisco_UCS:InterfaceOperationStatus.[{#SNMPINDEX}].last(#1)}=2</p><p>**Recovery expression**: {monitor_FabricInterconnect_Cisco_UCS:InterfaceOperationStatus.[{#SNMPINDEX}].last(#2)}=1 and {monitor_FabricInterconnect_Cisco_UCS:InterfaceOperationStatus.[{#SNMPINDEX}].last(#1)}=1</p>|high|
|Raid电池状态异常 (LLD)|<p>-</p>|<p>**Expression**: {monitor_FabricInterconnect_Cisco_UCS:RaidBatteryStatus.[{#SNMPINDEX}].last(#1)}>1</p><p>**Recovery expression**: </p>|high|
|硬盘状态异常 (LLD)|<p>-</p>|<p>**Expression**: {monitor_FabricInterconnect_Cisco_UCS:DiskStatus.[{#SNMPINDEX}].last(#1)}>1</p><p>**Recovery expression**: </p>|high|
|Raid控制器状态异常 (LLD)|<p>-</p>|<p>**Expression**: {monitor_FabricInterconnect_Cisco_UCS:RaidControllerStatus.[{#SNMPINDEX}].last(#1)}>1</p><p>**Recovery expression**: </p>|high|
|电源异常 (LLD)|<p>-</p>|<p>**Expression**: {monitor_FabricInterconnect_Cisco_UCS:PowerSupplyOperationStatus.[{#SNMPINDEX}].last(#1)}>1</p><p>**Recovery expression**: </p>|high|
|CPU状态异常 (LLD)|<p>-</p>|<p>**Expression**: {monitor_FabricInterconnect_Cisco_UCS:CPUStatus.[{#SNMPINDEX}].last(#1)}>1</p><p>**Recovery expression**: </p>|high|
|刀片异常 (LLD)|<p>-</p>|<p>**Expression**: {monitor_FabricInterconnect_Cisco_UCS:BladeOperationStatus.[{#SNMPINDEX}].last(#1)}>1</p><p>**Recovery expression**: </p>|high|
|风扇异常 (LLD)|<p>-</p>|<p>**Expression**: {monitor_FabricInterconnect_Cisco_UCS:FanOperationStatus.[{#SNMPINDEX}].last(#1)}>1</p><p>**Recovery expression**: </p>|high|
