# Template App Zabbix Server - Plus

## Description

2018-02-25 Ver. 1.0 - First release. 2018-03-14 Ver. 1.1 - Add items for cache total and a graph of them.

## Overview

Overview
--------


This template working with the official zabbix server template offers many additional graphs and a host screen to quickly go over the performance of your zabbix server. 


Required zabbix version
-----------------------


3.4.x (3.4.7 or later is recomnded)


Graphs
------


**host screen**


**![Zabbix host screen](media/com_mtree/images/listings/m/364.png)**


**graphs in the screen**


* Zabbix server performance required /actual
* Zabbix values processed - detail  
*V3.4.7 is required to get accurate data. See [ZBX-13194](https://support.zabbix.com/browse/ZBX-13194) in detail.
* Zabbix queue
* Zabbix preprocessig queue (official)
* Zabbix number of process - data gathering
* Zabbix data gathering process busy % (official)
* Zabbix process cpu usage - data gathering
* Zabbix process memory usage - data gathering
* Zabbix number of process - internal process
* Zabbix data internal process busy % (official)
* Zabbix process cpu usage - internal process
* Zabbix process memory usage - internal process
* Zabbix data file size *only for MySQL
* Zabbix housekeeping
* Zabbix prosess cpu - system
* Zabbix process memory - system
* Zabbix number of hosts
* Zabbix number of items
* Zabbix number of triggers (simple graph)
* Uptime
* **Zabbix cache size *Added in ver1.1.**
* Zabbix cache usage , % free (official)
* Zabbix value cache size
* Value cache effectiveness (official)
* Zabbix server log count (simple graph)
* Zabbix server log size (simple graph)
* Zabbix agent log count (simple graph)
* Zabbix agent log size (simple graph)


Installation
------------


* Simply import this template and apply to a host for Zabbix server.
* If you use this template to a host which currently uses the official template, "Template App Zabbix Server", unlink that before adding this template.
* Set "Active server" and "Host name" in zabbix\_agentd.conf to monitor zabbix server and agent log data.
* Allow zabbix agent to run as root, or give permission to access the table files for MySQL, in order to monitor the size of them.
* Modify values in the macro accoording to each environment.   
  
![](media/com_mtree/images/listings/m/365.png)


Release note and license
------------------------


<https://github.com/Unam1024/TemplateAppZabbixServer-Plus>


Related template
----------------


It's recommended to use "Template OS Linux - Plus" together to have further information in your zabbix server. > <a href="operating-systems/linux/template-os-lin



## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$ZABBIX_AGENT_LOG_PATH}|<p>-</p>|`/var/log/zabbix/zabbix_agentd.log`|Text macro|
|{$ZABBIX_DB_DIR}|<p>-</p>|`/var/lib/mysql/`|Text macro|
|{$ZABBIX_HISTORY}|<p>-</p>|`30d`|Text macro|
|{$ZABBIX_INTERVAL_LONG}|<p>-</p>|`10m`|Text macro|
|{$ZABBIX_INTERVAL_SHORT}|<p>-</p>|`1m`|Text macro|
|{$ZABBIX_PROCESSNAME_DB}|<p>-</p>|`mysqld`|Text macro|
|{$ZABBIX_PROCESSNAME_HTTP}|<p>-</p>|`apache2`|Text macro|
|{$ZABBIX_SERVER_LOG_PATH}|<p>-</p>|`/var/log/zabbix/zabbix_server.log`|Text macro|
|{$ZABBIX_TRENDS}|<p>-</p>|`3650d`|Text macro|
## Template links

|Name|
|----|
|Template App Zabbix Server|
## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": snmp trapper"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Uptime|<p>-</p>|`Zabbix internal`|zabbix[uptime]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": unreachable poller"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": preprocessing manager",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": poller",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,history syncer,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": self-monitoring"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": housekeeper",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Value Cache buffer, total|<p>Add a application in V1.1</p>|`Zabbix internal`|zabbix[vcache, buffer, total]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Value processed $3, per second|<p>-</p>|`Zabbix internal`|zabbix[wcache,values,text]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,unreachable poller,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,"zabbix_server -c"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": timer"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": task manager"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": discoverer",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Value processed $3, per second|<p>-</p>|`Zabbix internal`|zabbix[wcache,values,not supported]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Zabbix history write cache, size|<p>Added in V1.1</p>|`Zabbix internal`|zabbix[wcache,history,total]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Value Cache, hits|<p>-</p>|`Zabbix internal`|zabbix[vcache, cache, hits]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Value Cache buffer, used|<p>-</p>|`Zabbix internal`|zabbix[vcache, buffer, used]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Number of triggers|<p>-</p>|`Zabbix internal`|zabbix[triggers]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,vmware collector,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Value processed $3, per second|<p>-</p>|`Zabbix internal`|zabbix[wcache,values,log]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Value processed $3, per second|<p>-</p>|`Zabbix internal`|zabbix[wcache,values,float]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Zabbix trend write cache, size|<p>Added in V1.1</p>|`Zabbix internal`|zabbix[wcache,trend,total]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix history index cache, size|<p>Added in V1.1</p>|`Zabbix internal`|zabbix[wcache,index,total]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,proxy poller,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Number of items - unsupported|<p>-</p>|`Zabbix internal`|zabbix[items_unsupported]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Number of hosts (monitored)|<p>-</p>|`Zabbix internal`|zabbix[hosts]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": proxy poller"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": poller"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,"{$ZABBIX_PROCESSNAME_HTTP}"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": java poller"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": ipmi poller"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": ipmi manager"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": http poller"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": housekeeper"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": self-monitoring",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Zabbix agentd log size ($1)|<p>-</p>|`Zabbix agent`|vfs.file.size[{$ZABBIX_AGENT_LOG_PATH}]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": proxy poller",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": java poller",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": ipmi poller",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": history syncer",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Zabbix agentd log count ($1)|<p>-</p>|`Zabbix agent (active)`|log.count[{$ZABBIX_AGENT_LOG_PATH},,,,skip]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,alert manager,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,java poller,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Number of items - supported and not supported|<p>-</p>|`Zabbix internal`|zabbix[items]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,discoverer,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Value Cache, misses|<p>-</p>|`Zabbix internal`|zabbix[vcache, cache, misses]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Zabbix configuration cache, size|<p>Added in V1.1</p>|`Zabbix internal`|zabbix[rcache,buffer,total]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": alert manager",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": preprocessing worker",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": ipmi manager",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": icmp pinger",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": escalator",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,configuration syncer,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|File - DB Table [trends_uint]|<p>-</p>|`Zabbix agent`|vfs.file.size[{$ZABBIX_DB_DIR}zabbix/trends_uint.ibd]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": icmp pinger"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,self-monitoring,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|File - DB Table [ib_logfile1]|<p>-</p>|`Zabbix agent`|vfs.file.size[{$ZABBIX_DB_DIR}ib_logfile1]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": trapper"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": history syncer"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": escalator"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": alerter"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,alerter,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|File - DB Table [history_uint]|<p>-</p>|`Zabbix agent`|vfs.file.size[{$ZABBIX_DB_DIR}zabbix/history_uint.ibd]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Value Cache buffer, free %|<p>-</p>|`Zabbix internal`|zabbix[vcache, buffer, pfree]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Value Cache buffer, free|<p>-</p>|`Zabbix internal`|zabbix[vcache, buffer, free]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": preprocessing worker"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Zabbix server log ("housekeeper")  history/trend|<p>-</p>|`Zabbix agent (active)`|log[{$ZABBIX_SERVER_LOG_PATH},"housekeeper.*deleted ([0-9]+)",,,skip,\1]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,"zabbix_server -c",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,"zabbix_server",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,"zabbix_agentd",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": vmware collector",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": timer",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": task manager",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": configuration syncer",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Value processed $3, per second|<p>-</p>|`Zabbix internal`|zabbix[wcache,values,uint]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Value processed $3, per second|<p>-</p>|`Zabbix internal`|zabbix[wcache,values,str]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|File - DB Table [events]|<p>-</p>|`Zabbix agent`|vfs.file.size[{$ZABBIX_DB_DIR}zabbix/events.ibd]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": discoverer"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": configuration syncer"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": alert manager"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,preprocessing manager,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": unreachable poller",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": snmp trapper",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": http poller",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,icmp pinger,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,http poller,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,housekeeper,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Start DateTime|<p>-</p>|`Zabbix internal`|zabbix[boottime]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Number of items - supported|<p>-</p>|`Calculated`|zabbix.items_supported<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Zabbix server log size ($1)|<p>-</p>|`Zabbix agent`|vfs.file.size[{$ZABBIX_SERVER_LOG_PATH}]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|File - DB Table [history_text]|<p>-</p>|`Zabbix agent`|vfs.file.size[{$ZABBIX_DB_DIR}zabbix/history_text.ibd]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix vmware cache, size|<p>Added in V1.1</p>|`Zabbix internal`|zabbix[vmware,buffer,total]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Value Cache buffer, used %|<p>-</p>|`Zabbix internal`|zabbix[vcache, buffer, pused]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,snmp trapper,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Values (required, per second)|<p>Required performance of the Zabbix server|Zabbix proxy, in new values per second expected.</p>|`Zabbix internal`|zabbix[requiredperformance]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Zabbix queue over $2|<p>-</p>|`Zabbix internal`|zabbix[queue,30s,599s]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Zabbix queue over $2|<p>-</p>|`Zabbix internal`|zabbix[queue,1s,29s]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,trapper,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,timer,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,task manager,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,"{$ZABBIX_PROCESSNAME_HTTP}",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,"{$ZABBIX_PROCESSNAME_DB}",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": trapper",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,poller,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,ipmi poller,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,ipmi manager,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,escalator,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|File - DB Table [trends]|<p>-</p>|`Zabbix agent`|vfs.file.size[{$ZABBIX_DB_DIR}zabbix/trends.ibd]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|File - DB Table [history_str]|<p>-</p>|`Zabbix agent`|vfs.file.size[{$ZABBIX_DB_DIR}zabbix/history_str.ibd]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|File - DB Table [ib_logfile0]|<p>-</p>|`Zabbix agent`|vfs.file.size[{$ZABBIX_DB_DIR}ib_logfile0]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix server log count ($1)|<p>-</p>|`Zabbix agent (active)`|log.count[{$ZABBIX_SERVER_LOG_PATH},,,,skip]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": preprocessing manager"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,"zabbix_server"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,"zabbix_agentd"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": vmware collector"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,"{$ZABBIX_PROCESSNAME_DB}"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": alerter",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|File - DB Table [ibdata1]|<p>-</p>|`Zabbix agent`|vfs.file.size[{$ZABBIX_DB_DIR}ibdata1]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|File - DB Table [history_log]|<p>-</p>|`Zabbix agent`|vfs.file.size[{$ZABBIX_DB_DIR}zabbix/history_log.ibd]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|File - DB Table [history]|<p>-</p>|`Zabbix agent`|vfs.file.size[{$ZABBIX_DB_DIR}zabbix/history.ibd]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,preprocessing worker,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
## Triggers

There are no triggers in this template.

