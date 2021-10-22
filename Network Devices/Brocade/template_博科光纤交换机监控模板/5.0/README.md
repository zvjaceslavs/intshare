# 博科光纤交换机监控模板

## Overview

博科光纤交换机通用监控模板


包括CPU利用率、内存利用率（部分型号不支持）、端口状态、电源风扇状态 


将宏{$CLOUD\_SNMP\_COMMUNITY}替换为实际团体字即可



## Author

zhangzhefeng

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$CLOUD_SNMP_COMMUNITY}|<p>-</p>|`public`|Text macro|
|{$CPU_USAGE_THRESHOLD}|<p>-</p>|`90`|Text macro|
|{$ICMP_LOSS_WARN}|<p>-</p>|`30`|Text macro|
|{$ICMP_RESPONSE_TIME_WARN}|<p>-</p>|`0.1`|Text macro|
|{$MEMORY_USAGE_THRESHOLD}|<p>-</p>|`90`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|传感器发现|<p>temp（1），fan（2），power（3） unknown 1，faulty 2，below-min 3，nominal 4，above-max 5，absent 6</p>|`SNMP agent`|SensorDiscovery<p>Update: 12h</p>|
|端口发现|<p>-</p>|`SNMP agent`|BrocadeInterfaceDiscovery_status<p>Update: 12h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|CPU利用率|<p>MIB: SW-MIB System's CPU usage.</p>|`SNMP agent`|CPUUsage<p>Update: 5m</p>|
|固件版本|<p>-</p>|`SNMP agent`|FirmwareVersion<p>Update: 1h</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping[,5,,,]<p>Update: 1m</p>|
|ping丢包率|<p>-</p>|`Simple check`|icmppingloss[,10,,,]<p>Update: 5m</p>|
|ping时延|<p>-</p>|`Simple check`|icmppingsec[,10,,,,avg]<p>Update: 5m</p>|
|内存利用率|<p>MIB: SW-MIB Memory utilization in %</p>|`SNMP agent`|MemoryUsage<p>Update: 5m</p>|
|系统信息|<p>-</p>|`SNMP agent`|SystemDescription<p>Update: 1h</p>|
|运行时间|<p>-</p>|`SNMP agent`|SystemUpTime<p>Update: 1h</p>|
|传感器状态  {#SNMPVALUE}|<p>MIB: SW-MIB</p>|`SNMP agent`|SensorStatus.[{#SNMPINDEX}]<p>Update: 10m</p><p>LLD</p>|
|端口:{#IFNAME}({#IFDESC},{#IFWWN})状态|<p>unknow即没插 (0)，online（1），offline（2），testing（3），fault故障（4）</p>|`SNMP agent`|BrocadeInterfaceOperationStatus.[{#SNMPINDEX},{#IFNAME}]<p>Update: 5m</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|端口:{#IFNAME} down|<p>-</p>|<p>**Expression**: {monitor_SANSwitch_Brocade:BrocadeInterfaceOperationStatus.[{#SNMPINDEX},{#IFNAME}].last(#2)}=1 and {monitor_SANSwitch_Brocade:BrocadeInterfaceOperationStatus.[{#SNMPINDEX},{#IFNAME}].last(#1)}=2</p><p>**Recovery expression**: {monitor_SANSwitch_Brocade:BrocadeInterfaceOperationStatus.[{#SNMPINDEX},{#IFNAME}].last(#2)}=1 and {monitor_SANSwitch_Brocade:BrocadeInterfaceOperationStatus.[{#SNMPINDEX},{#IFNAME}].last(#1)}=1</p>|high|
|端口:{#IFNAME} faulty|<p>-</p>|<p>**Expression**: {monitor_SANSwitch_Brocade:BrocadeInterfaceOperationStatus.[{#SNMPINDEX},{#IFNAME}].last(#1)}=4</p><p>**Recovery expression**: </p>|high|
|传感器故障|<p>-</p>|<p>**Expression**: {monitor_SANSwitch_Brocade:SensorStatus.[{#SNMPINDEX}].last(#1)}=2</p><p>**Recovery expression**: </p>|high|
|传感器数值低于下限|<p>-</p>|<p>**Expression**: {monitor_SANSwitch_Brocade:SensorStatus.[{#SNMPINDEX}].last(#1)}=3</p><p>**Recovery expression**: </p>|high|
|传感器数值高于上限|<p>-</p>|<p>**Expression**: {monitor_SANSwitch_Brocade:SensorStatus.[{#SNMPINDEX}].last(#1)}=5</p><p>**Recovery expression**: </p>|high|
|传感器故障 (LLD)|<p>-</p>|<p>**Expression**: {monitor_SANSwitch_Brocade:SensorStatus.[{#SNMPINDEX}].last(#1)}=2</p><p>**Recovery expression**: </p>|high|
|传感器数值低于下限 (LLD)|<p>-</p>|<p>**Expression**: {monitor_SANSwitch_Brocade:SensorStatus.[{#SNMPINDEX}].last(#1)}=3</p><p>**Recovery expression**: </p>|high|
|传感器数值高于上限 (LLD)|<p>-</p>|<p>**Expression**: {monitor_SANSwitch_Brocade:SensorStatus.[{#SNMPINDEX}].last(#1)}=5</p><p>**Recovery expression**: </p>|high|
|端口:{#IFNAME} down (LLD)|<p>-</p>|<p>**Expression**: {monitor_SANSwitch_Brocade:BrocadeInterfaceOperationStatus.[{#SNMPINDEX},{#IFNAME}].last(#2)}=1 and {monitor_SANSwitch_Brocade:BrocadeInterfaceOperationStatus.[{#SNMPINDEX},{#IFNAME}].last(#1)}=2</p><p>**Recovery expression**: {monitor_SANSwitch_Brocade:BrocadeInterfaceOperationStatus.[{#SNMPINDEX},{#IFNAME}].last(#2)}=1 and {monitor_SANSwitch_Brocade:BrocadeInterfaceOperationStatus.[{#SNMPINDEX},{#IFNAME}].last(#1)}=1</p>|high|
|端口:{#IFNAME} faulty (LLD)|<p>-</p>|<p>**Expression**: {monitor_SANSwitch_Brocade:BrocadeInterfaceOperationStatus.[{#SNMPINDEX},{#IFNAME}].last(#1)}=4</p><p>**Recovery expression**: </p>|high|
