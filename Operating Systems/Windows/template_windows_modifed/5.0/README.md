# Template OS Windows

## Overview

Добавлены данные с монитора windows.


Описания на русском. Диск 0 разбит на С и D.



## Author

ChaoticSerg

## Macros used

There are no macros links in this template.

## Template links

|Name|
|----|
|Template App Zabbix Agent|
## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Windows service discovery|<p>Discovery of Windows services of different types as defined in global regular expressions "Windows service names for discovery" and "Windows service startup states for discovery".</p>|`Zabbix agent`|service.discovery<p>Update: 1h</p>|
|Network interface discovery|<p>Discovery of network interfaces as defined in global regular expression "Network interfaces for discovery".</p>|`Zabbix agent`|net.if.discovery<p>Update: 1h</p>|
|Mounted filesystem discovery|<p>Discovery of file systems of different types as defined in global regular expression "File systems for discovery".</p>|`Zabbix agent`|vfs.fs.discovery<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Host name of zabbix_agentd running|<p>-</p>|`Zabbix agent`|agent.hostname<p>Update: 3600</p>|
|Agent ping|<p>The agent always returns 1 for this item. It could be used in combination with nodata() for availability check.</p>|`Zabbix agent`|agent.ping<p>Update: 60</p>|
|Version of zabbix_agent(d) running|<p>-</p>|`Zabbix agent`|agent.version<p>Update: 3600</p>|
|File read bytes per second|<p>Full counter name: System File Read Bytes/sec</p>|`Zabbix agent`|perf_counter[\2\16]<p>Update: 1m</p>|
|File write bytes per second|<p>Full counter name: System File Write Bytes/sec</p>|`Zabbix agent`|perf_counter[\2\18]<p>Update: 1m</p>|
|Number of threads|<p>Full counter name: System Threads</p>|`Zabbix agent`|perf_counter[\2\250]<p>Update: 1m</p>|
|Average disk read queue length|<p>Full counter name: PhysicalDisk(_Total) Avg. Disk Read Queue Length</p>|`Zabbix agent`|perf_counter[\234(_Total)\1402]<p>Update: 1m</p>|
|Average disk write queue length|<p>Full counter name: PhysicalDisk(_Total) Avg. Disk Write Queue Length</p>|`Zabbix agent`|perf_counter[\234(_Total)\1404]<p>Update: 1m</p>|
|Физический диск\Среднее время чтения с диска (сек)|<p>-</p>|`Zabbix agent`|perf_counter["\234(_Total)\208"]<p>Update: 1m</p>|
|Физический диск\Среднее время записи на диск (сек)|<p>-</p>|`Zabbix agent`|perf_counter["\234(_Total)\210"]<p>Update: 1m</p>|
|Физический диск\Процент времени бездействия|<p>-</p>|`Zabbix agent`|perf_counter["\234(_Total)\482"]<p>Update: 1m</p>|
|Свободно на диске С (Мбт)|<p>-</p>|`Zabbix agent`|perf_counter["\236(C:)\410"]<p>Update: 1m</p>|
|Свободно на диске D (Мбт)|<p>-</p>|`Zabbix agent`|perf_counter["\236(D:)\410"]<p>Update: 1m</p>|
|Память\Обмен страниц в сек|<p>-</p>|`Zabbix agent`|perf_counter["\4\1514"]<p>Update: 1m</p>|
|Память\Байт в невыгружаемом страничном пуле|<p>-</p>|`Zabbix agent`|perf_counter["\4\58"]<p>Update: 1m</p>|
|Память\Байт в выгружаемом страничном пуле|<p>-</p>|`Zabbix agent`|perf_counter["\4\60"]<p>Update: 1m</p>|
|Память\Свободных элементов таблицы страниц|<p>-</p>|`Zabbix agent`|perf_counter["\4\678"]<p>Update: 1m</p>|
|Память\Байт кэш-памяти|<p>-</p>|`Zabbix agent`|perf_counter["\4\818"]<p>Update: 1m</p>|
|% простоя процессора|<p>-</p>|`Zabbix agent`|perf_counter[\Сведения о процессоре(_Total)\Процент времени бездействия]<p>Update: 1m</p>|
|Number of processes|<p>-</p>|`Zabbix agent`|proc.num[]<p>Update: 1m</p>|
|Processor load (1 min average)|<p>-</p>|`Zabbix agent`|system.cpu.load[percpu,avg1]<p>Update: 1m</p>|
|Processor load (15 min average)|<p>-</p>|`Zabbix agent`|system.cpu.load[percpu,avg15]<p>Update: 1m</p>|
|Processor load (5 min average)|<p>-</p>|`Zabbix agent`|system.cpu.load[percpu,avg5]<p>Update: 1m</p>|
|Free swap space|<p>-</p>|`Zabbix agent`|system.swap.size[,free]<p>Update: 1m</p>|
|Total swap space|<p>-</p>|`Zabbix agent`|system.swap.size[,total]<p>Update: 1h</p>|
|System information|<p>-</p>|`Zabbix agent`|system.uname<p>Update: 1h</p>|
|System uptime|<p>-</p>|`Zabbix agent`|system.uptime<p>Update: 1m</p>|
|Free memory|<p>-</p>|`Zabbix agent`|vm.memory.size[free]<p>Update: 1m</p>|
|Total memory|<p>-</p>|`Zabbix agent`|vm.memory.size[total]<p>Update: 1h</p>|
|Free virtual memory, in %|<p>-</p>|`Zabbix agent`|vm.vmemory.size[pavailable]<p>Update: 1m</p>|
|State of service "{#SERVICE.NAME}" ({#SERVICE.DISPLAYNAME}) (LLD)|<p>-</p>|`Zabbix agent`|service.info[{#SERVICE.NAME},state]<p>Update: 1m</p>|
|In net traffic on $1 (LLD)|<p>-</p>|`Zabbix agent`|net.if.in[{#IFNAME}]<p>Update: 1m</p>|
|Out net traffic on $1 (LLD)|<p>-</p>|`Zabbix agent`|net.if.out[{#IFNAME}]<p>Update: 1m</p>|
|Free disk space on $1 (LLD)|<p>-</p>|`Zabbix agent`|vfs.fs.size[{#FSNAME},free]<p>Update: 1m</p>|
|Free disk space on $1 (percentage) (LLD)|<p>-</p>|`Zabbix agent`|vfs.fs.size[{#FSNAME},pfree]<p>Update: 1m</p>|
|Total disk space on $1 (LLD)|<p>-</p>|`Zabbix agent`|vfs.fs.size[{#FSNAME},total]<p>Update: 1h</p>|
|Used disk space on $1 (LLD)|<p>-</p>|`Zabbix agent`|vfs.fs.size[{#FSNAME},used]<p>Update: 1m</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Free disk space is less than 20% on volume {#FSNAME}|<p>-</p>|<p>**Expression**: {Template OS Windows:vfs.fs.size[{#FSNAME},pfree].last(0)}<20</p><p>**Recovery expression**: </p>|warning|
|Service "{#SERVICE.NAME}" ({#SERVICE.DISPLAYNAME}) is not running (startup type {#SERVICE.STARTUPNAME})|<p>-</p>|<p>**Expression**: {Template OS Windows:service.info[{#SERVICE.NAME},state].min(#3)}<>0</p><p>**Recovery expression**: </p>|average|
|Service "{#SERVICE.NAME}" ({#SERVICE.DISPLAYNAME}) is not running (startup type {#SERVICE.STARTUPNAME}) (LLD)|<p>-</p>|<p>**Expression**: {Template OS Windows:service.info[{#SERVICE.NAME},state].min(#3)}<>0</p><p>**Recovery expression**: </p>|average|
|Free disk space is less than 20% on volume {#FSNAME} (LLD)|<p>-</p>|<p>**Expression**: {Template OS Windows:vfs.fs.size[{#FSNAME},pfree].last(0)}<20</p><p>**Recovery expression**: </p>|warning|
