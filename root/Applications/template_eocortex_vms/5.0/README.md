# Template Eocortex

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

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Number of camera's|<p>-</p>|`Zabbix agent (active)`|web.page.get[127.0.0.1,/command?type=getchannelsstates&login={$EOCORTEX_USER}&password={$EOCORTEX_PASSWORD}&responsetype=json,8080]<p>Update: 60m</p>|
|Total swap space|<p>-</p>|`Zabbix agent (active)`|system.swap.size[,total]<p>Update: 3600</p>|
|Total memory|<p>-</p>|`Zabbix agent (active)`|vm.memory.size[total]<p>Update: 3600</p>|
|Free swap space|<p>-</p>|`Zabbix agent (active)`|system.swap.size[,free]<p>Update: 60</p>|
|Eocortex Service|<p>-</p>|`Zabbix agent (active)`|service_state[EocortexServer]<p>Update: 30s</p>|
|Number of camera's offline|<p>-</p>|`Zabbix agent (active)`|web.page.get[localhost,/command?type=getchannelsstates&login={$EOCORTEX_USER}&password={$EOCORTEX_PASSWORD}&responsetype=json,8080]<p>Update: 1m</p>|
|Free memory|<p>-</p>|`Zabbix agent (active)`|vm.memory.size[free]<p>Update: 60</p>|
|Average disk write queue length|<p>Full counter name: PhysicalDisk(_Total) Avg. Disk Write Queue Length</p>|`Zabbix agent (active)`|perf_counter[\234(_Total)\1404]<p>Update: 60</p>|
|Eocortex Version|<p>-</p>|`Zabbix agent (active)`|web.page.get[127.0.0.1,/configex?login={$EOCORTEX_USER}&password={$EOCORTEX_PASSWORD}&responsetype=json,8080]<p>Update: 90m</p>|
|Processor load (5 min average)|<p>-</p>|`Zabbix agent (active)`|system.cpu.load[percpu,avg5]<p>Update: 60</p>|
|System uptime|<p>-</p>|`Zabbix agent (active)`|system.uptime<p>Update: 60</p>|
|Free disk space on C: (percentage)|<p>-</p>|`Zabbix agent (active)`|vfs.fs.size[C:,pfree]<p>Update: 60m</p>|
|System information|<p>-</p>|`Zabbix agent (active)`|system.uname<p>Update: 3600</p>|
|Average disk read queue length|<p>Full counter name: PhysicalDisk(_Total) Avg. Disk Read Queue Length</p>|`Zabbix agent (active)`|perf_counter[\234(_Total)\1402]<p>Update: 60</p>|
|Last recording|<p>-</p>|`Zabbix agent (active)`|vfs.file.time[D:\EocortexArchive\ArchiveLogicDrive.xml,modify]<p>Update: 1m</p>|
|Agent ping|<p>-</p>|`Zabbix agent (active)`|agent.ping<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Agent offline for 30 minutes|<p>-</p>|warning|
|Eocortex Service not running on {HOST.NAME}|<p>-</p>|high|
|Processor load is too high on {HOST.NAME}|<p>-</p>|high|
|Recording stopped for more then 5 minutes|<p>-</p>|high|
|Free disk space is less than 20% on volume C:|<p>-</p>|warning|
|Camera offline on {HOST.NAME}|<p>-</p>|warning|
|Multiple camera's offline on {HOST.NAME}|<p>-</p>|warning|
