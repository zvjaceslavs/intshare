# macrosanStorage

## Description

宏杉存储监控模板

## Overview

实现了ZABBIX对宏杉存储的SNMP监控，适用存储软件版本（ODSP\_V1.2.16）。


已实现采集以下数据：


1.存储容量（总容量，已用容量及百分比）


2.总缓存命中率


3.总IOPS(读写等）


4.总吞吐带宽（读写等）


5.存储池的自动发现与容量监控


6.存储卷的自动发现及性能监控（IOPS，延时与缓存命率等）



## Author

李春国

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMMUNITY}|<p>-</p>|`storage`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|dis luns|<p>.iso.org.dod.internet.private.enterprises.macrosan.macrosanStorage.msStorageSystem.msStorageStatus.poolInfo.poolTable .iso.org.dod.internet.private.enterprises.macrosan.macrosanStorage.msStorageSystem.msStorageStatus.poolInfo.poolTable</p>|`SNMP agent`|luns<p>Update: 1d</p>|
|dis pools|<p>.iso.org.dod.internet.private.enterprises.macrosan.macrosanStorage.msStorageSystem.msStorageStatus.poolInfo.poolTable .iso.org.dod.internet.private.enterprises.macrosan.macrosanStorage.msStorageSystem.msStorageStatus.poolInfo.poolTable</p>|`SNMP agent`|pools<p>Update: 1d</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|已用容量%|<p>-</p>|`Calculated`|usedcappercent<p>Update: 1h</p>|
|totalKbps|<p>-</p>|`SNMP agent`|totalKbps<p>Update: 1m</p>|
|可用容量|<p>-</p>|`SNMP agent`|freecap<p>Update: 1h</p>|
|totalIops|<p>-</p>|`SNMP agent`|totalIops<p>Update: 1m</p>|
|readKbps|<p>-</p>|`SNMP agent`|readKbps<p>Update: 1m</p>|
|总缓存命中率|<p>-</p>|`SNMP agent`|cacheHitsIos<p>Update: 1m</p>|
|已用容量|<p>-</p>|`SNMP agent`|usedcap<p>Update: 1h</p>|
|writeIops|<p>-</p>|`SNMP agent`|writeIops<p>Update: 1m</p>|
|总容量|<p>-</p>|`SNMP agent`|totalcap<p>Update: 1h</p>|
|readIops|<p>-</p>|`SNMP agent`|readIops<p>Update: 1m</p>|
|writeKbps|<p>-</p>|`SNMP agent`|writeKbps<p>Update: 1m</p>|
|{#SNMPVALUE}  缓存命中率|<p>-</p>|`SNMP agent`|luncachehitsIos[{#SNMPVALUE}]<p>Update: 1m</p><p>LLD</p>|
|{#SNMPVALUE} lunReadAvrDelay|<p>-</p>|`SNMP agent`|lunReadAvrDelay[{#SNMPVALUE}]<p>Update: 1m</p><p>LLD</p>|
|{#SNMPVALUE}  总吞吐|<p>-</p>|`SNMP agent`|lunreadiops[{#SNMPVALUE}]<p>Update: 1m</p><p>LLD</p>|
|{#SNMPVALUE} lunReadMaxDelay|<p>-</p>|`SNMP agent`|lunReadMaxDelay[{#SNMPVALUE}]<p>Update: 1m</p><p>LLD</p>|
|{#SNMPVALUE}  totalIops|<p>-</p>|`SNMP agent`|luntotaliops[{#SNMPVALUE}]<p>Update: 1m</p><p>LLD</p>|
|{#SNMPVALUE} lunWriteAvrDelay|<p>-</p>|`SNMP agent`|lunWriteAvrDelay[{#SNMPVALUE}]<p>Update: 1m</p><p>LLD</p>|
|{#SNMPVALUE} lunWriteMaxDelay|<p>-</p>|`SNMP agent`|lunWriteMaxDelay[{#SNMPVALUE}]<p>Update: 1m</p><p>LLD</p>|
|{#SNMPVALUE}  总容量|<p>-</p>|`SNMP agent`|CAP[{#SNMPVALUE} ]<p>Update: 1h</p><p>LLD</p>|
|{#SNMPVALUE}  可用容量|<p>-</p>|`SNMP agent`|FREECAP[{#SNMPVALUE} ]<p>Update: 1h</p><p>LLD</p>|
|{#SNMPVALUE}  可用%|<p>-</p>|`Calculated`|USDEDP[{#SNMPVALUE} ]<p>Update: 1h</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|延时过高(>10ms)|<p>-</p>|<p>**Expression**: last(/macrosanStorage/lunReadAvrDelay[{#SNMPVALUE}])>=10000 or last(/macrosanStorage/lunWriteAvrDelay[{#SNMPVALUE}])>=10000</p><p>**Recovery expression**: </p>|average|
|{#SNMPVALUE} 已用容量大于80%|<p>-</p>|<p>**Expression**: last(/macrosanStorage/USDEDP[{#SNMPVALUE} ])>80</p><p>**Recovery expression**: </p>|average|
|延时过高(>10ms) (LLD)|<p>-</p>|<p>**Expression**: last(/macrosanStorage/lunReadAvrDelay[{#SNMPVALUE}])>=10000 or last(/macrosanStorage/lunWriteAvrDelay[{#SNMPVALUE}])>=10000</p><p>**Recovery expression**: </p>|average|
|{#SNMPVALUE} 已用容量大于80% (LLD)|<p>-</p>|<p>**Expression**: last(/macrosanStorage/USDEDP[{#SNMPVALUE} ])>80</p><p>**Recovery expression**: </p>|average|
