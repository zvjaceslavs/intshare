# Huawei Storage OceanStor 5500 LLD V

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMPV3_AUTHPASS}|<p>-</p>|`пароль`|Text macro|
|{$SNMPV3_PRIVPASS}|<p>-</p>|`пароль`|Text macro|
|{$SNMPV3_SECNAME}|<p>-</p>|`логин`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Обнаружение Performance Port|<p>-</p>|`SNMP agent`|hwPortPerformance<p>Update: 1d</p>|
|Обнаружение Performance LUN|<p>-</p>|`SNMP agent`|hwPerformanceLun<p>Update: 1d</p>|
|Обнаружение Контроллеров|<p>-</p>|`SNMP agent`|hwInfoController<p>Update: 1d</p>|
|Обнаружение Disk Domain|<p>-</p>|`SNMP agent`|hwInfoDiskDomain<p>Update: 1d</p>|
|Обнаружение Storage Pool|<p>-</p>|`SNMP agent`|hwInfoPool<p>Update: 1d</p>|
|Обнаружение LUN|<p>-</p>|`SNMP agent`|hwInfoLun<p>Update: 1d</p>|
|Обнаружение БП|<p>-</p>|`SNMP agent`|hwinfoPower<p>Update: 1d</p>|
|Обнаружение Fan БП|<p>-</p>|`SNMP agent`|hwinfoFANPower<p>Update: 1d</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Состояние системы|<p>-</p>|`SNMP agent`|status.0<p>Update: 1m</p>|
|Port: {#PORTLOCATION} I/O latancy|<p>-</p>|`SNMP agent`|hwPerfPortDelay.[{#SNMPINDEX}]<p>Update: 1m</p>|
|LUN {$LUNID{#LUNPID}} Read IOPS|<p>-</p>|`SNMP agent`|hwPerfLunReadIOPS.[{#SNMPINDEX}]<p>Update: 1m</p>|
|LUN {$LUNID{#LUNPID}} Read bandwidth MB/s|<p>-</p>|`SNMP agent`|hwPerfLunReadTraffic.[{#SNMPINDEX}]<p>Update: 1m</p>|
|LUN {$LUNID{#LUNPID}} Total IOPS|<p>-</p>|`SNMP agent`|hwPerfLunTotalIOPS.[{#SNMPINDEX}]<p>Update: 1m</p>|
|LUN {$LUNID{#LUNPID}} Total bandwidth MB/s|<p>-</p>|`SNMP agent`|hwPerfLunTotalTraffic.[{#SNMPINDEX}]<p>Update: 1m</p>|
|LUN {$LUNID{#LUNPID}} Write IOPS|<p>-</p>|`SNMP agent`|hwPerfLunWriteIOPS.[{#SNMPINDEX}]<p>Update: 1m</p>|
|LUN {$LUNID{#LUNPID}} Write bandwidth MB/s|<p>-</p>|`SNMP agent`|hwPerfLunWriteTraffic.[{#SNMPINDEX}]<p>Update: 1m</p>|
|Использование CPU контроллера: {#CONLOCATION} в %|<p>-</p>|`SNMP agent`|hwInfoControllerCPUUsage.[{#SNMPINDEX}]<p>Update: 5m</p>|
|Состояние контроллера: {#CONLOCATION}|<p>-</p>|`SNMP agent`|hwInfoControllerHealthStatus.[{#SNMPINDEX}]<p>Update: 5m</p>|
|Использование Memory контроллера: {#CONLOCATION} в %|<p>-</p>|`SNMP agent`|hwInfoControllerMemoryUsage.[{#SNMPINDEX}]<p>Update: 5m</p>|
|Состояние Disk Domain: {#DISKDNAME}|<p>-</p>|`SNMP agent`|hwInfoDiskDomainHealthStatus.[{#SNMPINDEX}]<p>Update: 5m</p>|
|Running статус Disk Domain: {#DISKDNAME}|<p>-</p>|`SNMP agent`|hwInfoDiskDomainRunningStatus.[{#SNMPINDEX}]<p>Update: 5m</p>|
|Storage Pool: {#POOLNAME} Allocated Capacity в %|<p>-</p>|`Calculated`|hwInfoStoragePoolCapacityProc.[{#SNMPINDEX}]<p>Update: 5m</p>|
|Состояние Storage Pool: {#POOLNAME}|<p>-</p>|`SNMP agent`|hwInfoStoragePoolHealthStatus.[{#SNMPINDEX}]<p>Update: 5m</p>|
|Storage Pool: {#POOLNAME} Capacity в байтах|<p>-</p>|`SNMP agent`|hwInfoStoragePoolTotal.[{#SNMPINDEX}]<p>Update: 24h</p>|
|Storage Pool: {#POOLNAME} Allocated Capacity в байтах|<p>-</p>|`SNMP agent`|hwInfoStoragePoolUsed.[{#SNMPINDEX}]<p>Update: 5m</p>|
|LUN {#LUNNAME} Capacity в байтах|<p>-</p>|`SNMP agent`|hwInfoLunCapacity.[{#SNMPINDEX}]<p>Update: 24h</p>|
|LUN {#LUNNAME} Allocated Capacity в %|<p>-</p>|`Calculated`|hwInfoLunCapacityProc.[{#SNMPINDEX}]<p>Update: 5m</p>|
|Состояние LUN {#LUNNAME}|<p>-</p>|`SNMP agent`|hwInfoLunHealthStatus.[{#SNMPINDEX}]<p>Update: 5m</p>|
|LUN {#LUNNAME} Allocated Capacity в байтах|<p>-</p>|`SNMP agent`|hwInfoLunSubscribedCapacity.[{#SNMPINDEX}]<p>Update: 5m</p>|
|Состояние БП: {#PLOCATION}|<p>-</p>|`SNMP agent`|hwInfoPowerHealthStatus.[{#SNMPINDEX}]<p>Update: 5m</p>|
|Состояние вентилятора БП: {#FANLOCATION}|<p>-</p>|`SNMP agent`|hwInfoFanHealthStatus.[{#SNMPINDEX}]<p>Update: 5m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Нет данных от SNMP агента|<p>Проверите доступность snmp агента СХД</p>|high|
|Проблема с СХД|<p>SNMP проверка. В меню "Последние данные" можно проверить последнее значение состояния СХД. Huawei 15-level HEALTH STATUS E.</p>|high|
|I/O latancy Port: {#PORTLOCATION} > 40 мс|<p>Проверьте состояние СХД, возможны проблемы с производительностью.</p>|average|
|Контроллер {#CONLOCATION} использует > 90% CPU|<p>Контроллер {#CONLOCATION} использует > 90% производительности CPU в течение 15 минут</p>|high|
|Контроллер {#CONLOCATION} использует > 95% Memory|<p>Контроллер {#CONLOCATION} использует > 95% производительности памяти в течение 15 минут</p>|high|
|Проблема с контроллером: {#CONLOCATION}|<p>SNMP проверка получила состояние Контроллера не Normal</p>|high|
|Проблема с Disk Domain: {#DISKDNAME}|<p>SNMP проверка получила состояние не Normal</p>|high|
|Проблема с Disk Domain: {#DISKDNAME}|<p>SNMP проверка получила состояние не Online. Проверьте состояние СХД.</p>|warning|
|{#POOLNAME} Allocated Capacity > 85%|<p>-</p>|warning|
|{#POOLNAME} Allocated Capacity > 95%|<p>-</p>|high|
|Проблема с Storage Pool: {#POOLNAME}|<p>SNMP проверка получила состояние Pool-а не Normal В меню "Последние данные" можно проверить состояние pool-а</p>|high|
|LUN {#LUNNAME} Allocated Capacity > 85%|<p>-</p>|warning|
|LUN {#LUNNAME} Allocated Capacity > 95%|<p>-</p>|high|
|Проблема с LUN {#LUNNAME}|<p>SNMP проверка получила состояние не Normal ID:{#LUNID} LUN NAME:{#LUNNAME}</p>|high|
|Проблема с БП: {#PLOCATION}|<p>SNMP проверка получила состояние БП не Normal Модель БП:{#PMODEL} ID:{#POWERID} Location:{#PLOCATION}</p>|high|
|Проблема с Вентилятором БП: {#FANLOCATION}|<p>SNMP проверка получила состояние Вентилятора БП не Normal ID:{#FANID} Location:{#FANLOCATION}</p>|high|
