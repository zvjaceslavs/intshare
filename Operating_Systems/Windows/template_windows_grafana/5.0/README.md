# Template OS Windows

## Overview

Hi guys! Sorry for the delay to update this dashboard, but finally came, there are huge improvements, now you don't need to import any Zabbix template, this dashboard work with the latest Zabbix version today (5.2) and with the latest Grafana too (7.3).


By default, at the 'Group' tab, it's hiding some groups like the: Template, Zabbix, and Discovery groups, if your server doesn't show in the dashboard, maybe you need to linked to another group like 'Linux Servers' and 'Windows Servers'.


Please, if have any suggestions or problems, please contact me: https://github.com/paulopaim


 


Grafana Dashboard:


<https://grafana.com/dashboards/5363>


 



## Author

Paulo Paim

## Macros used

There are no macros links in this template.

## Template links

|Name|
|----|
|Template App Zabbix Agent|
## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Network interface discovery|<p>Discovery of network interfaces as defined in global regular expression "Network interfaces for discovery".</p>|`Zabbix agent`|net.if.discovery<p>Update: 1h</p>|
|Windows service discovery|<p>Discovery of Windows services of different types as defined in global regular expressions "Windows service names for discovery" and "Windows service startup states for discovery".</p>|`Zabbix agent`|service.discovery<p>Update: 1h</p>|
|Mounted filesystem discovery|<p>Discovery of file systems of different types as defined in global regular expression "File systems for discovery".</p>|`Zabbix agent`|vfs.fs.discovery<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|File read bytes per second|<p>Full counter name: System File Read Bytes/sec</p>|`Zabbix agent`|perf_counter[\2\16]<p>Update: 1m</p>|
|File write bytes per second|<p>Full counter name: System File Write Bytes/sec</p>|`Zabbix agent`|perf_counter[\2\18]<p>Update: 1m</p>|
|Number of threads|<p>Full counter name: System Threads</p>|`Zabbix agent`|perf_counter[\2\250]<p>Update: 1m</p>|
|Average disk read queue length|<p>Full counter name: PhysicalDisk(_Total) Avg. Disk Read Queue Length</p>|`Zabbix agent`|perf_counter[\234(_Total)\1402]<p>Update: 1m</p>|
|Average disk write queue length|<p>Full counter name: PhysicalDisk(_Total) Avg. Disk Write Queue Length</p>|`Zabbix agent`|perf_counter[\234(_Total)\1404]<p>Update: 1m</p>|
|Disk idle, in %|<p>Full counter name: PhysicalDisk(_Total) % Idle Time</p>|`Zabbix agent`|perf_counter[\234(_Total)\1482]<p>Update: 1m</p>|
|Disk time, in %|<p>Full counter name: PhysicalDisk(_Total) % Disk Time</p>|`Zabbix agent`|perf_counter[\234(_Total)\200]<p>Update: 1m</p>|
|Number of processes|<p>-</p>|`Zabbix agent`|proc.num[]<p>Update: 1m</p>|
|Processor load (1 min average)|<p>-</p>|`Zabbix agent`|system.cpu.load[percpu,avg1]<p>Update: 1m</p>|
|Processor load (15 min average)|<p>-</p>|`Zabbix agent`|system.cpu.load[percpu,avg15]<p>Update: 1m</p>|
|Processor load (5 min average)|<p>-</p>|`Zabbix agent`|system.cpu.load[percpu,avg5]<p>Update: 1m</p>|
|Number of CPUs|<p>The number of CPUs.</p>|`Zabbix agent`|system.cpu.num[]<p>Update: 1h</p>|
|CPU $2 time|<p>The time the CPU has spent running the kernel and its processes.</p>|`Zabbix agent`|system.cpu.util[,system]<p>Update: 1m</p>|
|Free swap space|<p>-</p>|`Zabbix agent`|system.swap.size[,free]<p>Update: 1m</p>|
|Total swap space|<p>-</p>|`Zabbix agent`|system.swap.size[,total]<p>Update: 1h</p>|
|System information|<p>-</p>|`Zabbix agent`|system.uname<p>Update: 1h</p>|
|System uptime|<p>-</p>|`Zabbix agent`|system.uptime<p>Update: 1m</p>|
|System logged users|<p>-</p>|`Zabbix agent`|system.users.num<p>Update: 1m</p>|
|Free memory|<p>-</p>|`Zabbix agent`|vm.memory.size[free]<p>Update: 1m</p>|
|Used memory in %|<p>-</p>|`Zabbix agent`|vm.memory.size[pused]<p>Update: 1m</p>|
|Total memory|<p>-</p>|`Zabbix agent`|vm.memory.size[total]<p>Update: 1h</p>|
|Used memory|<p>-</p>|`Zabbix agent`|vm.memory.size[used]<p>Update: 1m</p>|
|Free virtual memory, in %|<p>-</p>|`Zabbix agent`|vm.vmemory.size[pavailable]<p>Update: 1m</p>|
|Incoming network traffic on $1|<p>-</p>|`Zabbix agent`|net.if.in[{#IFNAME}]<p>Update: 1m</p><p>LLD</p>|
|Outgoing network traffic on $1|<p>-</p>|`Zabbix agent`|net.if.out[{#IFNAME}]<p>Update: 1m</p><p>LLD</p>|
|State of service "{#SERVICE.NAME}" ({#SERVICE.DISPLAYNAME})|<p>-</p>|`Zabbix agent`|service.info[{#SERVICE.NAME},state]<p>Update: 1m</p><p>LLD</p>|
|Free disk space on $1|<p>-</p>|`Zabbix agent`|vfs.fs.size[{#FSNAME},free]<p>Update: 1m</p><p>LLD</p>|
|Free disk space on $1 in %|<p>-</p>|`Zabbix agent`|vfs.fs.size[{#FSNAME},pfree]<p>Update: 1m</p><p>LLD</p>|
|Total disk space on $1|<p>-</p>|`Zabbix agent`|vfs.fs.size[{#FSNAME},total]<p>Update: 1h</p><p>LLD</p>|
|Used disk space on $1|<p>-</p>|`Zabbix agent`|vfs.fs.size[{#FSNAME},used]<p>Update: 1m</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Free disk space is less than 20% on volume {#FSNAME}|<p>-</p>|<p>**Expression**: {Template OS Windows:vfs.fs.size[{#FSNAME},pfree].last(0)}<20</p><p>**Recovery expression**: </p>|warning|
|Service "{#SERVICE.NAME}" ({#SERVICE.DISPLAYNAME}) is not running (startup type {#SERVICE.STARTUPNAME})|<p>-</p>|<p>**Expression**: {Template OS Windows:service.info[{#SERVICE.NAME},state].min(#3)}<>0</p><p>**Recovery expression**: </p>|warning|
|Free disk space is less than 1% on volume {#FSNAME}|<p>-</p>|<p>**Expression**: {Template OS Windows:vfs.fs.size[{#FSNAME},pfree].last(0)}<1</p><p>**Recovery expression**: </p>|disaster|
|Free disk space is less than 5% on volume {#FSNAME}|<p>-</p>|<p>**Expression**: {Template OS Windows:vfs.fs.size[{#FSNAME},pfree].last(0)}<5</p><p>**Recovery expression**: </p>|high|
|Service "{#SERVICE.NAME}" ({#SERVICE.DISPLAYNAME}) is not running (startup type {#SERVICE.STARTUPNAME}) (LLD)|<p>-</p>|<p>**Expression**: {Template OS Windows:service.info[{#SERVICE.NAME},state].min(#3)}<>0</p><p>**Recovery expression**: </p>|warning|
|Free disk space is less than 20% on volume {#FSNAME} (LLD)|<p>-</p>|<p>**Expression**: {Template OS Windows:vfs.fs.size[{#FSNAME},pfree].last(0)}<20</p><p>**Recovery expression**: </p>|warning|
|Free disk space is less than 1% on volume {#FSNAME} (LLD)|<p>-</p>|<p>**Expression**: {Template OS Windows:vfs.fs.size[{#FSNAME},pfree].last(0)}<1</p><p>**Recovery expression**: </p>|disaster|
|Free disk space is less than 5% on volume {#FSNAME} (LLD)|<p>-</p>|<p>**Expression**: {Template OS Windows:vfs.fs.size[{#FSNAME},pfree].last(0)}<5</p><p>**Recovery expression**: </p>|high|
