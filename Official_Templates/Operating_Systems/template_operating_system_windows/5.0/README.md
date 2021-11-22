# OS Windows

## Overview

Official OS Windows Template from Zabbix distribution



## Author

Zabbix SIA

## Macros used

There are no macros links in this template.

## Template links

|Name|
|----|
|Template App Zabbix Agent|
## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Mounted filesystem discovery|<p>Discovery of file systems of different types as defined in global regular expression "File systems for discovery".</p>|`Zabbix agent`|vfs.fs.discovery<p>Update: 3600</p>|
|Network interface discovery|<p>Discovery of network interfaces as defined in global regular expression "Network interfaces for discovery".</p>|`Zabbix agent`|net.if.discovery<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Processor load (5 min average)|<p>-</p>|`Zabbix agent`|system.cpu.load[percpu,avg5]<p>Update: 60</p>|
|Processor load (1 min average)|<p>-</p>|`Zabbix agent`|system.cpu.load[percpu,avg1]<p>Update: 60</p>|
|System information|<p>-</p>|`Zabbix agent`|system.uname<p>Update: 3600</p>|
|Number of threads|<p>Full counter name: System Threads</p>|`Zabbix agent`|perf_counter[\2\250]<p>Update: 60</p>|
|Average disk read queue length|<p>Full counter name: PhysicalDisk(_Total) Avg. Disk Read Queue Length</p>|`Zabbix agent`|perf_counter[\234(_Total)\1402]<p>Update: 60</p>|
|Free swap space|<p>-</p>|`Zabbix agent`|system.swap.size[,free]<p>Update: 60</p>|
|Average disk write queue length|<p>Full counter name: PhysicalDisk(_Total) Avg. Disk Write Queue Length</p>|`Zabbix agent`|perf_counter[\234(_Total)\1404]<p>Update: 60</p>|
|File read bytes per second|<p>Full counter name: System File Read Bytes/sec</p>|`Zabbix agent`|perf_counter[\2\16]<p>Update: 60</p>|
|Total swap space|<p>-</p>|`Zabbix agent`|system.swap.size[,total]<p>Update: 3600</p>|
|Free memory|<p>-</p>|`Zabbix agent`|vm.memory.size[free]<p>Update: 60</p>|
|Processor load (15 min average)|<p>-</p>|`Zabbix agent`|system.cpu.load[percpu,avg15]<p>Update: 60</p>|
|Total memory|<p>-</p>|`Zabbix agent`|vm.memory.size[total]<p>Update: 3600</p>|
|System uptime|<p>-</p>|`Zabbix agent`|system.uptime<p>Update: 60</p>|
|Number of processes|<p>-</p>|`Zabbix agent`|proc.num[]<p>Update: 60</p>|
|File write bytes per second|<p>Full counter name: System File Write Bytes/sec</p>|`Zabbix agent`|perf_counter[\2\18]<p>Update: 60</p>|
|Free disk space on $1|<p>-</p>|`Zabbix agent`|vfs.fs.size[{#FSNAME},free]<p>Update: 60</p><p>LLD</p>|
|Free disk space on $1 (percentage)|<p>-</p>|`Zabbix agent`|vfs.fs.size[{#FSNAME},pfree]<p>Update: 60</p><p>LLD</p>|
|Total disk space on $1|<p>-</p>|`Zabbix agent`|vfs.fs.size[{#FSNAME},total]<p>Update: 3600</p><p>LLD</p>|
|Used disk space on $1|<p>-</p>|`Zabbix agent`|vfs.fs.size[{#FSNAME},used]<p>Update: 60</p><p>LLD</p>|
|Incoming network traffic on $1|<p>-</p>|`Zabbix agent`|net.if.in[{#IFNAME}]<p>Update: 60</p><p>LLD</p>|
|Outgoing network traffic on $1|<p>-</p>|`Zabbix agent`|net.if.out[{#IFNAME}]<p>Update: 60</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Free disk space is less than 20% on volume {#FSNAME}|<p>-</p>|<p>**Expression**: {OS Windows:vfs.fs.size[{#FSNAME},pfree].last(0)}<20</p><p>**Recovery expression**: </p>|warning|
|Free disk space is less than 20% on volume {#FSNAME} (LLD)|<p>-</p>|<p>**Expression**: {OS Windows:vfs.fs.size[{#FSNAME},pfree].last(0)}<20</p><p>**Recovery expression**: </p>|warning|
