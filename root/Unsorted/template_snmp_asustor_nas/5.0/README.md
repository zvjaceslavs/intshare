# Template Asustor NAS

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Storage discovery|<p>-</p>|`SNMP agent`|diskDiscovery<p>Update: 1h</p>|
|CPU discovery|<p>-</p>|`SNMP agent`|cpuDiscovery<p>Update: 1h</p>|
|Net discovery|<p>-</p>|`SNMP agent`|netDiscovery<p>Update: 1h</p>|
|Volume discovery|<p>-</p>|`SNMP agent`|volumeDiscovery<p>Update: 1h</p>|
|Fan discovery|<p>-</p>|`SNMP agent`|fanDiscovery<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|hwFreeMem|<p>Свободный объем памяти системы в мегабайтах (МБ)</p>|`SNMP agent`|hwFreeMem<p>Update: 1h</p>|
|sysTimeZone|<p>Часовой пояс данного NAS</p>|`SNMP agent`|sysTimeZone<p>Update: 1h</p>|
|hwProcessor|<p>Модель процессора</p>|`SNMP agent`|hwProcessor<p>Update: 1h</p>|
|hwModelName|<p>Модель данного NAS</p>|`SNMP agent`|hwModelName<p>Update: 1h</p>|
|hwTotalMem|<p>Общий объем памяти системы в мегабайтах (МБ)</p>|`SNMP agent`|hwTotalMem<p>Update: 1h</p>|
|sysUptime|<p>Время безотказной работы данного NAS</p>|`SNMP agent`|sysUptime<p>Update: 1h</p>|
|sysSerialNumber|<p>Серийный номер данного NAS</p>|`SNMP agent`|sysSerialNumber<p>Update: 1h</p>|
|sysTime|<p>Текущее время данного NAS</p>|`SNMP agent`|sysTime<p>Update: 1h</p>|
|sysBiosVersion|<p>Версия BIOS данного NAS</p>|`SNMP agent`|sysBiosVersion<p>Update: 1h</p>|
|hwCPUTemperature|<p>Температура процессора в градусах Цельсия</p>|`SNMP agent`|hwCPUTemperature<p>Update: 15s</p>|
|hwSysTemperature|<p>Температура системы в градусах Цельсия</p>|`SNMP agent`|hwSysTemperature<p>Update: 15s</p>|
|sysAsustorID|<p>Проверяет, есть ли более новая версия ADM для обновления (Available / Unavailable)</p>|`SNMP agent`|sysAsustorID<p>Update: 1h</p>|
|sysADMVersion|<p>Версия ADM данного NAS</p>|`SNMP agent`|sysADMVersion<p>Update: 1h</p>|
|Disk #{#SNMPINDEX} index|<p>-</p>|`SNMP agent`|storage.diskIndex[{#SNMPINDEX}]<p>Update: 1m</p>|
|Disk #{#SNMPINDEX} interface|<p>Тип диска (SATA/SSD)</p>|`SNMP agent`|storage.diskInterface[{#SNMPINDEX}]<p>Update: 1m</p>|
|Disk #{#SNMPINDEX} model|<p>Модель диска</p>|`SNMP agent`|storage.diskModel[{#SNMPINDEX}]<p>Update: 1m</p>|
|Disk #{#SNMPINDEX} name|<p>ID дискового отсека</p>|`SNMP agent`|storage.diskName[{#SNMPINDEX}]<p>Update: 1m</p>|
|Disk #{#SNMPINDEX} size|<p>Размер диска в гигабайтах (ГБ)</p>|`SNMP agent`|storage.diskSize[{#SNMPINDEX}]<p>Update: 1m</p>|
|Disk #{#SNMPINDEX} SmartInfo|<p>Информация S.M.A.R.T. диска</p>|`SNMP agent`|storage.diskSmartInfo[{#SNMPINDEX}]<p>Update: 1m</p>|
|Disk #{#SNMPINDEX} status|<p>S.M.A.R.T. статус диска (Healthy, Normal, Risky, Dangerous, Bad)</p>|`SNMP agent`|storage.diskStatus[{#SNMPINDEX}]<p>Update: 1m</p>|
|Disk #{#SNMPINDEX} temperature|<p>Температура диска в градусах Цельсия</p>|`SNMP agent`|storage.diskTemperature[{#SNMPINDEX}]<p>Update: 1m</p>|
|CPU #{#SNMPINDEX} usage|<p>Процент использования процессора</p>|`SNMP agent`|CPUUsage[{#SNMPINDEX}]<p>Update: 1m</p>|
|Net #{#SNMPINDEX} index|<p>-</p>|`SNMP agent`|netIndex[{#SNMPINDEX}]<p>Update: 10m</p>|
|Net #{#SNMPINDEX} interface|<p>Интерфейс сети</p>|`SNMP agent`|netInterface[{#SNMPINDEX}]<p>Update: 10m</p>|
|Net #{#SNMPINDEX} IP4-address|<p>IPv4-адрес сетевого интерфейса</p>|`SNMP agent`|netIPv4Address[{#SNMPINDEX}]<p>Update: 10m</p>|
|Net #{#SNMPINDEX} IP6-address|<p>IPv6-адрес сетевого интерфейса</p>|`SNMP agent`|netIPv6Address[{#SNMPINDEX}]<p>Update: 10m</p>|
|Net #{#SNMPINDEX} MAC-address|<p>MAC-адрес сетевого интерфейса</p>|`SNMP agent`|netMacAddress[{#SNMPINDEX}]<p>Update: 10m</p>|
|Net #{#SNMPINDEX} Received|<p>Входящие пакеты в килобайтах (КБ)</p>|`SNMP agent`|netPacketReceived[{#SNMPINDEX}]<p>Update: 1m</p>|
|Net #{#SNMPINDEX} Sent|<p>Исходящие пакеты в килобайтах (КБ)</p>|`SNMP agent`|netPacketSent[{#SNMPINDEX}]<p>Update: 1m</p>|
|Volume #{#SNMPINDEX} filesystem|<p>Тип файловой системы тома</p>|`SNMP agent`|volumeFileSystem[{#SNMPINDEX}]<p>Update: 15m</p>|
|Volume #{#SNMPINDEX} free size|<p>Свободный объем тома в гигабайтах (ГБ)</p>|`SNMP agent`|volumeFreeSize[{#SNMPINDEX}]<p>Update: 5m</p>|
|Volume #{#SNMPINDEX} index|<p>-</p>|`SNMP agent`|volumeIndex[{#SNMPINDEX}]<p>Update: 15m</p>|
|Volume #{#SNMPINDEX} level|<p>Уровень тома (Single / JBOD / Raid0 / Raid1 / Raid10 / Raid5 / Raid6)</p>|`SNMP agent`|volumeLevel[{#SNMPINDEX}]<p>Update: 15m</p>|
|Volume #{#SNMPINDEX} name|<p>Имя тома</p>|`SNMP agent`|volumeName[{#SNMPINDEX}]<p>Update: 15m</p>|
|Volume #{#SNMPINDEX} status|<p>Статус тома (Healthy, Clean, Active, Resyncing, Recovering, Reshaping, Appending, Migrating, fsExpanding fsIniting Degraded, Failed, Inactive)</p>|`SNMP agent`|volumeStatus[{#SNMPINDEX}]<p>Update: 1m</p>|
|Volume #{#SNMPINDEX} total size|<p>Общий размер тома в гигабайтах (ГБ)</p>|`SNMP agent`|volumeTotalSize[{#SNMPINDEX}]<p>Update: 5m</p>|
|Fan #{#SNMPINDEX} speed|<p>Скорость вращения вентилятора, об/м</p>|`SNMP agent`|fanSpeed[{#SNMPINDEX}]<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|CPU Temperature to Hight > 70℃|<p>-</p>|high|
|Hard Disk #{#SNMPINDEX} status: Bad|<p>-</p>|disaster|
|Hard Disk #{#SNMPINDEX} status: Risky|<p>-</p>|warning|
|Hard Disk #{#SNMPINDEX} status: Warning|<p>-</p>|average|
|Hard Disk #{#SNMPINDEX} Temperature to High > 60℃|<p>-</p>|average|
|Hard Disk #{#SNMPINDEX} Temperature to High > 70℃|<p>-</p>|disaster|
|Volume #{#SNMPINDEX} {#VOLUMENAME} - FreeSpace is less than 10%|<p>-</p>|average|
|FAN #{#SNMPINDEX} Slow RPM|<p>-</p>|high|
