# Template AS400

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$MAX_CPU_FOR_DISCOVERY}|<p>-</p>|`30`|Text macro|
|{$MAX_CPU_PER_PROCESS_PUSED}|<p>-</p>|`20`|Text macro|
|{$MAX_DISK_PUSED}|<p>-</p>|`65`|Text macro|
|{$MAX_QEZ_INCREASE}|<p>-</p>|`400`|Text macro|
|{$MAX_QEZ_SIZE}|<p>-</p>|`50000`|Text macro|
|{$MAX_QPRINT_SIZE}|<p>-</p>|`15000`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Disks discovery|<p>-</p>|`Zabbix agent (active)`|as400.disk.discovery<p>Update: 3600</p>|
|Processes discovery|<p>-</p>|`Zabbix agent (active)`|proc.cpu.util.discovery[{$MAX_CPU_FOR_DISCOVERY}]<p>Update: 60</p>|
|ASP discovery|<p>-</p>|`Zabbix agent (active)`|vfs.fs.discovery<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Number of users|<p>-</p>|`Zabbix agent (active)`|system.users.num<p>Update: 60</p>|
|Host name of zabbix_agentd running|<p>-</p>|`Zabbix agent`|agent.hostname<p>Update: 3600</p>|
|Size of output queue $1 in library $2|<p>-</p>|`Zabbix agent (active)`|as400.outputqueue.size[QEZJOBLOG,QUSRSYS]<p>Update: 900</p>|
|Messages in the queue QSYSOPR (errors)|<p>-</p>|`Zabbix agent (active)`|eventlog[QSYSOPR,,70,,,100,skip]<p>Update: 20</p>|
|Services availability|<p>-</p>|`Zabbix agent (active)`|as400.services<p>Update: 300</p>|
|Number of jobs in state $3|<p>-</p>|`Zabbix agent (active)`|proc.num[,,LCKW,]<p>Update: 300</p>|
|Version of zabbix_agent(d) running|<p>-</p>|`Zabbix agent`|agent.version<p>Update: 3600</p>|
|Size of output queue $1 in library $2|<p>-</p>|`Zabbix agent (active)`|as400.outputqueue.size[QEZDEBUG,QUSRSYS]<p>Update: 900</p>|
|CPU Usage for all process|<p>-</p>|`Zabbix agent (active)`|proc.cpu.util[,,total,,,]<p>Update: 60</p>|
|Size of output queue $1 in library $2|<p>-</p>|`Zabbix agent (active)`|as400.outputqueue.size[QPRINT,QGPL]<p>Update: 900</p>|
|Agent ping|<p>The agent always returns 1 for this item. It could be used in combination with nodata() for availability check.</p>|`Zabbix agent`|agent.ping<p>Update: 60</p>|
|System information|<p>-</p>|`Zabbix agent`|system.uname<p>Update: 120</p>|
|Number of running jobs (total)|<p>-</p>|`Zabbix agent (active)`|proc.num[,,run]<p>Update: 300</p>|
|Disk {#DSK_ID}: {#DSK_NAME} free space|<p>-</p>|`Zabbix agent (active)`|as400.disk.size[{#DSK_SN},free]<p>Update: 300</p>|
|Disk {#DSK_ID}: {#DSK_NAME} free space, %|<p>-</p>|`Zabbix agent (active)`|as400.disk.size[{#DSK_SN},pfree]<p>Update: 300</p>|
|Disk {#DSK_ID}: {#DSK_NAME} used space, %|<p>-</p>|`Zabbix agent (active)`|as400.disk.size[{#DSK_SN},pused]<p>Update: 300</p>|
|Disk {#DSK_ID}: {#DSK_NAME} capacity|<p>-</p>|`Zabbix agent (active)`|as400.disk.size[{#DSK_SN},total]<p>Update: 3600</p>|
|Disk {#DSK_ID}: {#DSK_NAME} used space|<p>-</p>|`Zabbix agent (active)`|as400.disk.size[{#DSK_SN},used]<p>Update: 300</p>|
|Disk {#DSK_ID}: {#DSK_NAME} ({#DSK_TYPE} {#DSK_MODEL}, {#DSK_SN}) status|<p>-</p>|`Zabbix agent (active)`|as400.disk.state[{#DSK_SN}]<p>Update: 300</p>|
|CPU Usage by process $6/$2/$1|<p>-</p>|`Zabbix agent (active)`|proc.cpu.util[{#NAME},{#USER},total,,avg1,{#NUM}]<p>Update: 60</p>|
|ASP{#FSNAME} free|<p>-</p>|`Zabbix agent (active)`|vfs.fs.size[{#FSNAME},free]<p>Update: 300</p>|
|ASP{#FSNAME} free, %|<p>-</p>|`Zabbix agent (active)`|vfs.fs.size[{#FSNAME},pfree]<p>Update: 300</p>|
|ASP{#FSNAME} pused, %|<p>-</p>|`Zabbix agent (active)`|vfs.fs.size[{#FSNAME},pused]<p>Update: 300</p>|
|ASP{#FSNAME} capacity|<p>-</p>|`Zabbix agent (active)`|vfs.fs.size[{#FSNAME},total]<p>Update: 3600</p>|
|ASP{#FSNAME} used|<p>-</p>|`Zabbix agent (active)`|vfs.fs.size[{#FSNAME},used]<p>Update: 300</p>|
|ASP{#FSNAME} status|<p>-</p>|`Zabbix agent (active)`|vfs.fs.state[{#FSNAME}]<p>Update: 300</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Host name of zabbix_agentd was changed on {HOST.NAME}|<p>-</p>|information|
|Version of zabbix_agent(d) was changed on {HOST.NAME}|<p>-</p>|information|
|Zabbix agent on {HOST.NAME} is unreachable for 5 minutes|<p>-</p>|average|
|New critical message in AS400 message queue|<p>-</p>|high|
|New error message in AS400 message queue|<p>-</p>|average|
|New warning message in AS400 message queue|<p>-</p>|warning|
|Output queue QEZDEBUG has a lot of spool files|<p>-</p>|warning|
|Output queue QEZDEBUG is growing too fast|<p>-</p>|warning|
|Output queue QEZJOBLOG has a lot of spool files|<p>-</p>|warning|
|Output queue QEZJOBLOG is growing too fast|<p>-</p>|warning|
|Output queue QPRINT has a lot of spool files|<p>-</p>|warning|
|There are jobs in state LCKW|<p>-</p>|warning|
|Zabbix agent (active mode) on {HOST.NAME} is unreachable|<p>-</p>|average|
|Disk {#DSK_ID}: {#DSK_NAME} ({#DSK_TYPE} {#DSK_MODEL}, {#DSK_SN}) failed|<p>-</p>|average|
|Job {#NUM}/{#USER}/{#NAME} has large CPU usage (>{$MAX_CPU_PER_PROCESS_PUSED}%)|<p>-</p>|warning|
|ASP{#FSNAME} used more than {$MAX_DISK_PUSED:"{#FSNAME}"}%|<p>-</p>|average|
