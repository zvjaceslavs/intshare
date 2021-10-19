# Template OS Linux

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
|Network interface discovery|<p>Discovery of network interfaces as defined in global regular expression "Network interfaces for discovery".</p>|`Zabbix agent`|net.if.discovery<p>Update: 1h</p>|
|Mounted filesystem discovery|<p>Discovery of file systems of different types as defined in global regular expression "File systems for discovery".</p>|`Zabbix agent`|vfs.fs.discovery<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Number of processes|<p>Total number of processes in any state.</p>|`Zabbix agent`|proc.num[]<p>Update: 1m</p>|
|Agent ping|<p>The agent always returns 1 for this item. It could be used in combination with nodata() for availability check.</p>|`Zabbix agent`|agent.ping<p>Update: 60</p>|
|Host name|<p>System host name.</p>|`Zabbix agent`|system.hostname<p>Update: 1h</p>|
|Used memory|<p>-</p>|`Zabbix agent`|vm.memory.size[used]<p>Update: 1m</p>|
|CPU $2 time|<p>Amount of time the CPU has been waiting for I/O to complete.</p>|`Zabbix agent`|system.cpu.util[,iowait]<p>Update: 1m</p>|
|CPU $2 time|<p>The time the CPU has spent running users' processes that are not niced.</p>|`Zabbix agent`|system.cpu.util[,user]<p>Update: 1m</p>|
|Host name of zabbix_agentd running|<p>-</p>|`Zabbix agent`|agent.hostname<p>Update: 3600</p>|
|Version of zabbix_agent(d) running|<p>-</p>|`Zabbix agent`|agent.version<p>Update: 3600</p>|
|System uptime|<p>-</p>|`Zabbix agent`|system.uptime<p>Update: 10m</p>|
|Processor load (1 min average per core)|<p>The processor load is calculated as system CPU load divided by number of CPU cores.</p>|`Zabbix agent`|system.cpu.load[percpu,avg1]<p>Update: 1m</p>|
|CPU $2 time|<p>The time the CPU has spent running users' processes that have been niced.</p>|`Zabbix agent`|system.cpu.util[,nice]<p>Update: 1m</p>|
|Context switches per second|<p>-</p>|`Zabbix agent`|system.cpu.switches<p>Update: 1m</p>|
|Processor load (5 min average per core)|<p>The processor load is calculated as system CPU load divided by number of CPU cores.</p>|`Zabbix agent`|system.cpu.load[percpu,avg5]<p>Update: 1m</p>|
|Host local time|<p>-</p>|`Zabbix agent`|system.localtime<p>Update: 1m</p>|
|Total memory|<p>-</p>|`Zabbix agent`|vm.memory.size[total]<p>Update: 1h</p>|
|Used memory in %|<p>-</p>|`Zabbix agent`|vm.memory.size[pused]<p>Update: 1m</p>|
|Interrupts per second|<p>-</p>|`Zabbix agent`|system.cpu.intr<p>Update: 1m</p>|
|Free swap space|<p>-</p>|`Zabbix agent`|system.swap.size[,free]<p>Update: 1m</p>|
|System information|<p>The information as normally returned by 'uname -a'.</p>|`Zabbix agent`|system.uname<p>Update: 1h</p>|
|Processor load (15 min average per core)|<p>The processor load is calculated as system CPU load divided by number of CPU cores.</p>|`Zabbix agent`|system.cpu.load[percpu,avg15]<p>Update: 1m</p>|
|Free swap space in %|<p>-</p>|`Zabbix agent`|system.swap.size[,pfree]<p>Update: 1m</p>|
|CPU $2 time|<p>The time the CPU has spent running the kernel and its processes.</p>|`Zabbix agent`|system.cpu.util[,system]<p>Update: 1m</p>|
|Total swap space|<p>-</p>|`Zabbix agent`|system.swap.size[,total]<p>Update: 1h</p>|
|Checksum of $1|<p>-</p>|`Zabbix agent`|vfs.file.cksum[/etc/passwd]<p>Update: 1h</p>|
|Number of logged in users|<p>Number of users who are currently logged in.</p>|`Zabbix agent`|system.users.num<p>Update: 1m</p>|
|Host boot time|<p>-</p>|`Zabbix agent`|system.boottime<p>Update: 10m</p>|
|CPU $2 time|<p>The amount of time the CPU has been servicing hardware interrupts.</p>|`Zabbix agent`|system.cpu.util[,interrupt]<p>Update: 1m</p>|
|Number of running processes|<p>Number of processes in running state.</p>|`Zabbix agent`|proc.num[,,run]<p>Update: 1m</p>|
|CPU $2 time|<p>The amount of time the CPU has been servicing software interrupts.</p>|`Zabbix agent`|system.cpu.util[,softirq]<p>Update: 1m</p>|
|CPU $2 time|<p>The amount of CPU 'stolen' from this virtual machine by the hypervisor for other tasks (such as running another virtual machine).</p>|`Zabbix agent`|system.cpu.util[,steal]<p>Update: 1m</p>|
|Available memory|<p>Available memory is defined as free+cached+buffers memory.</p>|`Zabbix agent`|vm.memory.size[available]<p>Update: 1m</p>|
|Number of CPUs|<p>The number of CPUs.</p>|`Zabbix agent`|system.cpu.num[]<p>Update: 1h</p>|
|Maximum number of processes|<p>It could be increased by using sysctrl utility or modifying file /etc/sysctl.conf.</p>|`Zabbix agent`|kernel.maxproc<p>Update: 1h</p>|
|CPU $2 time|<p>The time the CPU has spent doing nothing.</p>|`Zabbix agent`|system.cpu.util[,idle]<p>Update: 1m</p>|
|Maximum number of opened files|<p>It could be increased by using sysctrl utility or modifying file /etc/sysctl.conf.</p>|`Zabbix agent`|kernel.maxfiles<p>Update: 1h</p>|
|Incoming network traffic on $1|<p>-</p>|`Zabbix agent`|net.if.in[{#IFNAME}]<p>Update: 1m</p>|
|Outgoing network traffic on $1|<p>-</p>|`Zabbix agent`|net.if.out[{#IFNAME}]<p>Update: 1m</p>|
|Free inodes on $1 in %|<p>-</p>|`Zabbix agent`|vfs.fs.inode[{#FSNAME},pfree]<p>Update: 1m</p>|
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
|/etc/passwd has been changed on {HOST.NAME}|<p>-</p>|warning|
|Configured max number of opened files is too low on {HOST.NAME}|<p>-</p>|information|
|Configured max number of processes is too low on {HOST.NAME}|<p>-</p>|information|
|Disk I/O is overloaded on {HOST.NAME}|<p>OS spends significant time waiting for I/O (input/output) operations. It could be indicator of performance issues with storage system.</p>|warning|
|Host information was changed on {HOST.NAME}|<p>-</p>|information|
|Hostname was changed on {HOST.NAME}|<p>-</p>|information|
|Lack of available memory on server {HOST.NAME}|<p>-</p>|average|
|Lack of free swap space on {HOST.NAME}|<p>It probably means that the systems requires more physical memory.</p>|warning|
|Processor load is too high on {HOST.NAME}|<p>-</p>|warning|
|Too many processes on {HOST.NAME}|<p>-</p>|warning|
|Too many processes running on {HOST.NAME}|<p>-</p>|warning|
|{HOST.NAME} has just been restarted|<p>-</p>|information|
|Free disk space is less than 20% on volume {#FSNAME}|<p>-</p>|warning|
|Free inodes is less than 20% on volume {#FSNAME}|<p>-</p>|warning|
|Free disk space is less than 1% on volume {#FSNAME}|<p>-</p>|disaster|
|Free disk space is less than 5% on volume {#FSNAME}|<p>-</p>|high|
