# tpl_part_network_cisco_all_performance

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$CPU_PUSED_MAX_1}|<p>-</p>|`85`|Text macro|
|{$CPU_PUSED_MAX_2}|<p>-</p>|`95`|Text macro|
|{$MEM_FREE_MIN_1}|<p>-</p>|`5000000`|Text macro|
|{$MEM_FREE_MIN_1:"I/O"}|<p>-</p>|`1400000`|Text macro|
|{$MEM_FREE_MIN_1:"SRAM"}|<p>-</p>|`3000`|Text macro|
|{$MEM_FREE_MIN_2}|<p>-</p>|`1000000`|Text macro|
|{$MEM_FREE_MIN_2:"I/O"}|<p>-</p>|`500000`|Text macro|
|{$MEM_FREE_MIN_2:"SRAM"}|<p>-</p>|`1000`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|LLD of CPU|<p>{#CPUID} --> The physical entity can be a CPU chip, a group of CPUs, a CPU card etc. The exact type of this entity is described by its entPhysicalVendorType value.</p>|`SNMP agent`|cpmCPUTotalTable<p>Update: 86400</p>|
|LLD of memory pools|<p>{#MEMNAME} --> A textual name assigned to the memory pool. This object is suitable for output to a human operator, and may also be used to distinguish among the various pool types, especially among dynamic pools.</p>|`SNMP agent`|ciscoMemoryPoolTable<p>Update: 86400</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|CPU - usage on core '{#CPUID}'|<p>The overall CPU busy percentage in the last 5 minute period.</p>|`SNMP agent`|cpmCPUTotal5minRev[{#SNMPINDEX}]<p>Update: 300</p>|
|Memory - free in pool '{#MEMNAME}'|<p>Indicates the number of bytes from the memory pool that are currently unused on the managed device.</p>|`SNMP agent`|ciscoMemoryPoolFree[{#SNMPINDEX}]<p>Update: 600</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Cisco: 'CPU usage' on core '{#CPUID}' is high [{ITEM.LASTVALUE}]|<p>- Check for a possible security issue. Commonly, high CPU utilization is caused by a security issue, such as a worm or virus operating in your network. This is especially likely to be the cause if there have not been recent changes to the network. Usually, a configuration change, such as adding additional lines to your access lists can mitigate the effects of this problem. Cisco Product Security Advisories and Notices contains information on detection of the most likely causes and specific workarounds. - Make sure all debugging commands in your router are turned off by issuing the undebug all or no debug all commands. For more information on the use of debugging commands, refer to Using Debug Commands. - Are you able to issue show commands on the router? If yes, start collecting more information immediately, using these show commands. - Is the router inaccessible? Can you reproduce this problem? If yes, power-cycle the router and, before reproducing the problem, configure the scheduler interval 500 command. This schedules low priority processes to run every 500 milliseconds, which provides time for you to run some commands, even if CPU usage is at 100 percent. On Cisco 7200 and Cisco 7500 Series Routers, use the scheduler allocate 3000 1000 command. - Does the router show symptoms of high CPU utilization at brief and unpredictable intervals? If yes, periodically collect the output of the show processes cpu command, which shows if the high CPU utilization is caused by interrupts or by a certain process. Use this UNIX script and, based on the first findings, modify the script to collect data needed for further investigation of the issue. The overall CPU busy percentage.</p>|warning|
|Cisco: 'CPU usage' on core '{#CPUID}' is too high [{ITEM.LASTVALUE}]|<p>- Check for a possible security issue. Commonly, high CPU utilization is caused by a security issue, such as a worm or virus operating in your network. This is especially likely to be the cause if there have not been recent changes to the network. Usually, a configuration change, such as adding additional lines to your access lists can mitigate the effects of this problem. Cisco Product Security Advisories and Notices contains information on detection of the most likely causes and specific workarounds. - Make sure all debugging commands in your router are turned off by issuing the undebug all or no debug all commands. For more information on the use of debugging commands, refer to Using Debug Commands. - Are you able to issue show commands on the router? If yes, start collecting more information immediately, using these show commands. - Is the router inaccessible? Can you reproduce this problem? If yes, power-cycle the router and, before reproducing the problem, configure the scheduler interval 500 command. This schedules low priority processes to run every 500 milliseconds, which provides time for you to run some commands, even if CPU usage is at 100 percent. On Cisco 7200 and Cisco 7500 Series Routers, use the scheduler allocate 3000 1000 command. - Does the router show symptoms of high CPU utilization at brief and unpredictable intervals? If yes, periodically collect the output of the show processes cpu command, which shows if the high CPU utilization is caused by interrupts or by a certain process. Use this UNIX script and, based on the first findings, modify the script to collect data needed for further investigation of the issue. The overall CPU busy percentage.</p>|average|
|Cisco: 'Free memory' in pool '{#MEMNAME}' is low [{ITEM.LASTVALUE}]|<p>-</p>|warning|
|Cisco: 'Free memory' in pool '{#MEMNAME}' is too low [{ITEM.LASTVALUE}]|<p>-</p>|average|
