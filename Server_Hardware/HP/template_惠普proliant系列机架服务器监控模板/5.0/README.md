# 惠普ProLiant系列机架服务器监控模板

## Overview

惠普ProLiant系列机架服务器监控模板


包括CPU、内存、电源、风扇、硬盘、Cache状态


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
|电源发现|<p>-</p>|`SNMP agent`|PowerDiscovery<p>Update: 1d</p>|
|CPU发现|<p>-</p>|`SNMP agent`|CPUDiscovery<p>Update: 1d</p>|
|风扇发现|<p>-</p>|`SNMP agent`|FanDiscovery<p>Update: 1d</p>|
|硬盘发现|<p>-</p>|`SNMP agent`|DisckDiscovery<p>Update: 1d</p>|
|Cache发现|<p>-</p>|`SNMP agent`|CacheDiscovery<p>Update: 1d</p>|
|内存发现|<p>-</p>|`SNMP agent`|MemoryDiscovery<p>Update: 1d</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ICMP ping|<p>-</p>|`Simple check`|icmpping[,5,,,]<p>Update: 1m</p>|
|ping丢包率|<p>-</p>|`Simple check`|icmppingloss[,10,,,]<p>Update: 5m</p>|
|ping时延|<p>-</p>|`Simple check`|icmppingsec[,10,,,,avg]<p>Update: 5m</p>|
|系统信息|<p>-</p>|`SNMP agent`|SystemDescription<p>Update: 1h</p>|
|运行时间|<p>-</p>|`SNMP agent`|SystemUpTime<p>Update: 1h</p>|
|电源状态 [{#SNMPVALUE}]|<p>-</p>|`SNMP agent`|PowerStatus.[{#SNMPINDEX}]<p>Update: 1h</p><p>LLD</p>|
|CPU状态 [{#SNMPVALUE}]|<p>-</p>|`SNMP agent`|CPUStatus.[{#SNMPINDEX}]<p>Update: 1h</p><p>LLD</p>|
|风扇状态 {#SNMPVALUE}|<p>-</p>|`SNMP agent`|FanStatus.[{#SNMPINDEX}]<p>Update: 1h</p><p>LLD</p>|
|硬盘状态 [{#SNMPVALUE}]|<p>-</p>|`SNMP agent`|DiskStatus.[{#SNMPINDEX}]<p>Update: 1h</p><p>LLD</p>|
|Cache状态 [{#SNMPVALUE}]|<p>-</p>|`SNMP agent`|CacheStatus.[{#SNMPINDEX}]<p>Update: 1h</p><p>LLD</p>|
|内存状态 {#SNMPVALUE}|<p>-</p>|`SNMP agent`|MemoryStatus.[{#SNMPINDEX}]<p>Update: 1h</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Cache degraded|<p>-</p>|<p>**Expression**: {monitor_RackServer_HP_ProLiant:CacheStatus.[{#SNMPINDEX}].last(#1)}=3</p><p>**Recovery expression**: </p>|high|
|Cache failed|<p>-</p>|<p>**Expression**: {monitor_RackServer_HP_ProLiant:CacheStatus.[{#SNMPINDEX}].last(#1)}=4</p><p>**Recovery expression**: </p>|high|
|CPU degraded|<p>-</p>|<p>**Expression**: {monitor_RackServer_HP_ProLiant:CPUStatus.[{#SNMPINDEX}].last(#1)}=3</p><p>**Recovery expression**: </p>|high|
|CPU failed|<p>-</p>|<p>**Expression**: {monitor_RackServer_HP_ProLiant:CPUStatus.[{#SNMPINDEX}].last(#1)}=4</p><p>**Recovery expression**: </p>|high|
|硬盘状态failed|<p>-</p>|<p>**Expression**: {monitor_RackServer_HP_ProLiant:DiskStatus.[{#SNMPINDEX}].last(#1)}=3</p><p>**Recovery expression**: </p>|high|
|硬盘状态predictiveFailure|<p>-</p>|<p>**Expression**: {monitor_RackServer_HP_ProLiant:DiskStatus.[{#SNMPINDEX}].last(#1)}=4</p><p>**Recovery expression**: </p>|high|
|风扇状态degraded|<p>-</p>|<p>**Expression**: {monitor_RackServer_HP_ProLiant:FanStatus.[{#SNMPINDEX}].last(#1)}=3</p><p>**Recovery expression**: </p>|high|
|风扇状态failed|<p>-</p>|<p>**Expression**: {monitor_RackServer_HP_ProLiant:FanStatus.[{#SNMPINDEX}].last(#1)}=4</p><p>**Recovery expression**: </p>|high|
|内存degraded|<p>-</p>|<p>**Expression**: {monitor_RackServer_HP_ProLiant:MemoryStatus.[{#SNMPINDEX}].last(#1)}=11</p><p>**Recovery expression**: </p>|high|
|电源degraded|<p>-</p>|<p>**Expression**: {monitor_RackServer_HP_ProLiant:PowerStatus.[{#SNMPINDEX}].last(#1)}=3</p><p>**Recovery expression**: </p>|high|
|电源failed|<p>-</p>|<p>**Expression**: {monitor_RackServer_HP_ProLiant:PowerStatus.[{#SNMPINDEX}].last(#1)}=4</p><p>**Recovery expression**: </p>|high|
|电源degraded (LLD)|<p>-</p>|<p>**Expression**: {monitor_RackServer_HP_ProLiant:PowerStatus.[{#SNMPINDEX}].last(#1)}=3</p><p>**Recovery expression**: </p>|high|
|电源failed (LLD)|<p>-</p>|<p>**Expression**: {monitor_RackServer_HP_ProLiant:PowerStatus.[{#SNMPINDEX}].last(#1)}=4</p><p>**Recovery expression**: </p>|high|
|CPU degraded (LLD)|<p>-</p>|<p>**Expression**: {monitor_RackServer_HP_ProLiant:CPUStatus.[{#SNMPINDEX}].last(#1)}=3</p><p>**Recovery expression**: </p>|high|
|CPU failed (LLD)|<p>-</p>|<p>**Expression**: {monitor_RackServer_HP_ProLiant:CPUStatus.[{#SNMPINDEX}].last(#1)}=4</p><p>**Recovery expression**: </p>|high|
|风扇状态degraded (LLD)|<p>-</p>|<p>**Expression**: {monitor_RackServer_HP_ProLiant:FanStatus.[{#SNMPINDEX}].last(#1)}=3</p><p>**Recovery expression**: </p>|high|
|风扇状态failed (LLD)|<p>-</p>|<p>**Expression**: {monitor_RackServer_HP_ProLiant:FanStatus.[{#SNMPINDEX}].last(#1)}=4</p><p>**Recovery expression**: </p>|high|
|硬盘状态failed (LLD)|<p>-</p>|<p>**Expression**: {monitor_RackServer_HP_ProLiant:DiskStatus.[{#SNMPINDEX}].last(#1)}=3</p><p>**Recovery expression**: </p>|high|
|硬盘状态predictiveFailure (LLD)|<p>-</p>|<p>**Expression**: {monitor_RackServer_HP_ProLiant:DiskStatus.[{#SNMPINDEX}].last(#1)}=4</p><p>**Recovery expression**: </p>|high|
|Cache degraded (LLD)|<p>-</p>|<p>**Expression**: {monitor_RackServer_HP_ProLiant:CacheStatus.[{#SNMPINDEX}].last(#1)}=3</p><p>**Recovery expression**: </p>|high|
|Cache failed (LLD)|<p>-</p>|<p>**Expression**: {monitor_RackServer_HP_ProLiant:CacheStatus.[{#SNMPINDEX}].last(#1)}=4</p><p>**Recovery expression**: </p>|high|
|内存degraded (LLD)|<p>-</p>|<p>**Expression**: {monitor_RackServer_HP_ProLiant:MemoryStatus.[{#SNMPINDEX}].last(#1)}=11</p><p>**Recovery expression**: </p>|high|
