# Template OS Windows

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
|Windows service discovery|<p>Discovery of Windows services of different types as defined in global regular expressions "Windows service names for discovery" and "Windows service startup states for discovery".</p>|`Zabbix agent`|service.discovery<p>Update: 1h</p>|
|Network interface discovery|<p>Discovery of network interfaces as defined in global regular expression "Network interfaces for discovery".</p>|`Zabbix agent`|net.if.discovery<p>Update: 1h</p>|
|Mounted filesystem discovery|<p>Discovery of file systems of different types as defined in global regular expression "File systems for discovery".</p>|`Zabbix agent`|vfs.fs.discovery<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Number of processes|<p>-</p>|`Zabbix agent`|proc.num[]<p>Update: 1m</p>|
|Processor load (1 min average)|<p>-</p>|`Zabbix agent`|system.cpu.load[percpu,avg1]<p>Update: 1m</p>|
|Free virtual memory, in %|<p>-</p>|`Zabbix agent`|vm.vmemory.size[pavailable]<p>Update: 1m</p>|
|Version of zabbix_agent(d) running|<p>-</p>|`Zabbix agent`|agent.version<p>Update: 3600</p>|
|Average disk read queue length|<p>Full counter name: PhysicalDisk(_Total) Avg. Disk Read Queue Length</p>|`Zabbix agent`|perf_counter[\234(_Total)\1402]<p>Update: 1m</p>|
|Processor load (15 min average)|<p>-</p>|`Zabbix agent`|system.cpu.load[percpu,avg15]<p>Update: 1m</p>|
|Processor load (5 min average)|<p>-</p>|`Zabbix agent`|system.cpu.load[percpu,avg5]<p>Update: 1m</p>|
|Used memory in %|<p>-</p>|`Zabbix agent`|vm.memory.size[pused]<p>Update: 1m</p>|
|Average disk write queue length|<p>Full counter name: PhysicalDisk(_Total) Avg. Disk Write Queue Length</p>|`Zabbix agent`|perf_counter[\234(_Total)\1404]<p>Update: 1m</p>|
|System uptime|<p>-</p>|`Zabbix agent`|system.uptime<p>Update: 1m</p>|
|Number of CPUs|<p>The number of CPUs.</p>|`Zabbix agent`|system.cpu.num[]<p>Update: 1h</p>|
|Free swap space|<p>-</p>|`Zabbix agent`|system.swap.size[,free]<p>Update: 1m</p>|
|System logged users|<p>-</p>|`Zabbix agent`|system.users.num<p>Update: 1m</p>|
|Number of threads|<p>Full counter name: System Threads</p>|`Zabbix agent`|perf_counter[\2\250]<p>Update: 1m</p>|
|Used memory|<p>-</p>|`Zabbix agent`|vm.memory.size[used]<p>Update: 1m</p>|
|CPU $2 time|<p>The time the CPU has spent running the kernel and its processes.</p>|`Zabbix agent`|system.cpu.util[,system]<p>Update: 1m</p>|
|Disk time, in %|<p>Full counter name: PhysicalDisk(_Total) % Disk Time</p>|`Zabbix agent`|perf_counter[\234(_Total)\200]<p>Update: 1m</p>|
|Disk idle, in %|<p>Full counter name: PhysicalDisk(_Total) % Idle Time</p>|`Zabbix agent`|perf_counter[\234(_Total)\1482]<p>Update: 1m</p>|
|System information|<p>-</p>|`Zabbix agent`|system.uname<p>Update: 1h</p>|
|Host name of zabbix_agentd running|<p>-</p>|`Zabbix agent`|agent.hostname<p>Update: 3600</p>|
|File read bytes per second|<p>Full counter name: System File Read Bytes/sec</p>|`Zabbix agent`|perf_counter[\2\16]<p>Update: 1m</p>|
|Agent ping|<p>The agent always returns 1 for this item. It could be used in combination with nodata() for availability check.</p>|`Zabbix agent`|agent.ping<p>Update: 60</p>|
|File write bytes per second|<p>Full counter name: System File Write Bytes/sec</p>|`Zabbix agent`|perf_counter[\2\18]<p>Update: 1m</p>|
|Free memory|<p>-</p>|`Zabbix agent`|vm.memory.size[free]<p>Update: 1m</p>|
|Total swap space|<p>-</p>|`Zabbix agent`|system.swap.size[,total]<p>Update: 1h</p>|
|Total memory|<p>-</p>|`Zabbix agent`|vm.memory.size[total]<p>Update: 1h</p>|
|State of service "{#SERVICE.NAME}" ({#SERVICE.DISPLAYNAME})|<p>-</p>|`Zabbix agent`|service.info[{#SERVICE.NAME},state]<p>Update: 1m</p>|
|Incoming network traffic on $1|<p>-</p>|`Zabbix agent`|net.if.in[{#IFNAME}]<p>Update: 1m</p>|
|Outgoing network traffic on $1|<p>-</p>|`Zabbix agent`|net.if.out[{#IFNAME}]<p>Update: 1m</p>|
|Free disk space on $1|<p>-</p>|`Zabbix agent`|vfs.fs.size[{#FSNAME},free]<p>Update: 1m</p>|
|Free disk space on $1 in %|<p>-</p>|`Zabbix agent`|vfs.fs.size[{#FSNAME},pfree]<p>Update: 1m</p>|
|Total disk space on $1|<p>-</p>|`Zabbix agent`|vfs.fs.size[{#FSNAME},total]<p>Update: 1h</p>|
|Used disk space on $1|<p>-</p>|`Zabbix agent`|vfs.fs.size[{#FSNAME},used]<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Host name of zabbix_agentd was changed on {HOST.NAME}|<p>-</p>|information|
|Version of zabbix_agent(d) was changed on {HOST.NAME}|<p>-</p>|information|
|Zabbix agent on {HOST.NAME} is unreachable for 5 minutes|<p>-</p>|average|
|Host information was changed on {HOST.NAME}|<p>-</p>|average|
|Lack of free memory on server {HOST.NAME}|<p>-</p>|average|
|Processor load is too high on {HOST.NAME}|<p>-</p>|average|
|Too many processes on {HOST.NAME}|<p>-</p>|average|
|{HOST.NAME} has just been restarted|<p>-</p>|average|
|Lack of available virtual memory on server {HOST.NAME}|<p>-</p>|average|
|Service "{#SERVICE.NAME}" ({#SERVICE.DISPLAYNAME}) is not running (startup type {#SERVICE.STARTUPNAME})|<p>-</p>|warning|
|Free disk space is less than 20% on volume {#FSNAME}|<p>-</p>|warning|
|Free disk space is less than 1% on volume {#FSNAME}|<p>-</p>|disaster|
|Free disk space is less than 5% on volume {#FSNAME}|<p>-</p>|high|
