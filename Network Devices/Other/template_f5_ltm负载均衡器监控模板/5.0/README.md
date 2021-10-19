# F5 LTM负载均衡器监控模板

## Overview

F5 LTM系列负载均衡器监控模板


 


主要包括CPU利用率、内存利用率、端口状态、端口带宽利用率、报文数、电源状态、风扇状态监控 


将宏{$CLOUD\_SNMP\_COMMUNITY}替换为实际团体字即可

## Author

zhangzhefeng

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$CLOUD_SNMP_COMMUNITY}|<p>-</p>|`public`|Text macro|
|{$CPU_USAGE_THRESHOLD}|<p>-</p>|`60`|Text macro|
|{$ICMP_LOSS_WARN}|<p>-</p>|`30`|Text macro|
|{$ICMP_RESPONSE_TIME_WARN}|<p>-</p>|`0.1`|Text macro|
|{$TMM_MEMORY_USAGE_THRESHOLD}|<p>-</p>|`80`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|电源发现|<p>-</p>|`SNMP agent`|F5PowerDiscovery<p>Update: 1h</p>|
|风扇发现|<p>-</p>|`SNMP agent`|F5FanDiscovery<p>Update: 1h</p>|
|端口发现|<p>-</p>|`SNMP agent`|F5InterfaceDiscovery<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|5分钟内客户端并发连接数|<p>-</p>|`SNMP agent`|ClientCurrentConnectionNumberIn5Min<p>Update: 5m</p>|
|5分钟内CPU利用率|<p>-</p>|`SNMP agent`|CPUUsageIn5Min<p>Update: 5m</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping[,5,,,]<p>Update: 1m</p>|
|ping丢包率|<p>-</p>|`Simple check`|icmppingloss[,10,,,]<p>Update: 5m</p>|
|ping时延|<p>-</p>|`Simple check`|icmppingsec[,10,,,,avg]<p>Update: 5m</p>|
|其他内存利用率|<p>-</p>|`Calculated`|OtherMemoryUsage<p>Update: 5m</p>|
|其他内存总量|<p>-</p>|`SNMP agent`|OtherTotalMemory<p>Update: 12h</p>|
|其他已使用内存|<p>-</p>|`SNMP agent`|OtherUsedMemory<p>Update: 5m</p>|
|5分钟内来自客户端报文速率|<p>-</p>|`SNMP agent`|PacketsRateFromClientIn5Min<p>Update: 5m</p>|
|5分钟内来自服务器端报文速率|<p>-</p>|`SNMP agent`|PacketsRateFromServerIn5Min<p>Update: 5m</p>|
|5分钟内发送至客户端报文速率|<p>-</p>|`SNMP agent`|PacketsRateToClientIn5Min<p>Update: 5m</p>|
|5分钟内发送至服务器端报文速率|<p>-</p>|`SNMP agent`|PacketsRateToServerIn5Min<p>Update: 5m</p>|
|5分钟内服务器端并发连接数|<p>-</p>|`SNMP agent`|ServerCurrentConnectionNumberIn5Min<p>Update: 5m</p>|
|trap消息|<p>-</p>|`SNMP trap`|snmptrap[""]<p>Update: 0</p>|
|Swap内存利用率|<p>-</p>|`Calculated`|SwapMemoryUsage<p>Update: 5m</p>|
|Swap内存总量|<p>-</p>|`SNMP agent`|SwapTotalMemory<p>Update: 12h</p>|
|Swap已使用内存|<p>-</p>|`SNMP agent`|SwapUsedMemory<p>Update: 5m</p>|
|系统信息|<p>-</p>|`SNMP agent`|SystemDescription<p>Update: 1h</p>|
|运行时间|<p>-</p>|`SNMP agent`|SystemUpTime<p>Update: 1h</p>|
|TMM内存利用率|<p>-</p>|`Calculated`|TMMMemoryUsage<p>Update: 5m</p>|
|TMM内存总量|<p>-</p>|`SNMP agent`|TMMTotalMemory<p>Update: 12h</p>|
|TMM已使用内存|<p>-</p>|`SNMP agent`|TMMUsedMemory<p>Update: 5m</p>|
|5分钟内来自客户端流量|<p>-</p>|`SNMP agent`|TrafficFromClientIn5Min<p>Update: 5m</p>|
|5分钟内来自服务器端流量|<p>-</p>|`SNMP agent`|TrafficFromServerIn5Min<p>Update: 5m</p>|
|5分钟内发送至客户端流量|<p>-</p>|`SNMP agent`|TrafficToClientIn5Min<p>Update: 5m</p>|
|5分钟内发送至服务器端流量|<p>-</p>|`SNMP agent`|TrafficToServerIn5Min<p>Update: 5m</p>|
|电源状态 {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|PowerSupplyStatus.[{#SNMPINDEX}]<p>Update: 30m</p>|
|风扇状态 {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|FanStatus.[{#SNMPINDEX}]<p>Update: 30m</p>|
|端口带宽 {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|InterfaceBandwidth.[{#SNMPINDEX}]<p>Update: 12h</p>|
|入方向丢包 {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|InterfaceInPacketDropped.[{#SNMPINDEX}]<p>Update: 10m</p>|
|入方向错包 {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|InterfaceInPacketError.[{#SNMPINDEX}]<p>Update: 10m</p>|
|入方向报文速率 {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|InterfaceInPacketsTraffic.[{#SNMPINDEX}]<p>Update: 10m</p>|
|入方向流量 {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|InterfaceInTraffic.[{#SNMPINDEX}]<p>Update: 10m</p>|
|出方向丢包 {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|InterfaceOutPacketDropped.[{#SNMPINDEX}]<p>Update: 10m</p>|
|出方向错包 {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|InterfaceOutPacketError.[{#SNMPINDEX}]<p>Update: 10m</p>|
|出方向报文速率 {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|InterfaceOutPacketsTraffic.[{#SNMPINDEX}]<p>Update: 10m</p>|
|出方向流量 {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|InterfaceOutTraffic.[{#SNMPINDEX}]<p>Update: 10m</p>|
|端口状态 {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|InterfaceStatus.[{#SNMPINDEX}]<p>Update: 10m</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|风扇异常|<p>-</p>|<p>**Expression**: {monitor_loadbalancer_F5_LTM:FanStatus.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
|端口 {#SNMPVALUE} down|<p>-</p>|<p>**Expression**: {monitor_loadbalancer_F5_LTM:InterfaceStatus.[{#SNMPINDEX}].last(#1)}=0 and {monitor_loadbalancer_F5_LTM:InterfaceStatus.[{#SNMPINDEX}].last(#2)}=1</p><p>**Recovery expression**: </p>|high|
|电源异常|<p>-</p>|<p>**Expression**: {monitor_loadbalancer_F5_LTM:PowerSupplyStatus.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
|电源异常 (LLD)|<p>-</p>|<p>**Expression**: {monitor_loadbalancer_F5_LTM:PowerSupplyStatus.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
|风扇异常 (LLD)|<p>-</p>|<p>**Expression**: {monitor_loadbalancer_F5_LTM:FanStatus.[{#SNMPINDEX}].last(#1)}<>1</p><p>**Recovery expression**: </p>|high|
|端口 {#SNMPVALUE} down (LLD)|<p>-</p>|<p>**Expression**: {monitor_loadbalancer_F5_LTM:InterfaceStatus.[{#SNMPINDEX}].last(#1)}=0 and {monitor_loadbalancer_F5_LTM:InterfaceStatus.[{#SNMPINDEX}].last(#2)}=1</p><p>**Recovery expression**: </p>|high|
