# Template App Zabbix Server - Plus

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

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

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Zabbix server log ("housekeeper")  history/trend|<p>-</p>|`Zabbix agent (active)`|log[{$ZABBIX_SERVER_LOG_PATH},"housekeeper.*deleted ([0-9]+)",,,skip,\1]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Zabbix agentd log count ($1)|<p>-</p>|`Zabbix agent (active)`|log.count[{$ZABBIX_AGENT_LOG_PATH},,,,skip]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Zabbix server log count ($1)|<p>-</p>|`Zabbix agent (active)`|log.count[{$ZABBIX_SERVER_LOG_PATH},,,,skip]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,"{$ZABBIX_PROCESSNAME_DB}"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,"{$ZABBIX_PROCESSNAME_HTTP}"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": alerter"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": alert manager"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": configuration syncer"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": discoverer"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": escalator"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": history syncer"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": housekeeper"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": http poller"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": icmp pinger"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": ipmi manager"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": ipmi poller"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": java poller"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": poller"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": preprocessing manager"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": preprocessing worker"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": proxy poller"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": self-monitoring"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": snmp trapper"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": task manager"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": timer"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": trapper"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": unreachable poller"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,": vmware collector"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,"zabbix_agentd"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,"zabbix_server"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - cpu [$4]|<p>-</p>|`Zabbix agent`|proc.cpu.util[,,,"zabbix_server -c"]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,"{$ZABBIX_PROCESSNAME_DB}",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,"{$ZABBIX_PROCESSNAME_HTTP}",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": alerter",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": alert manager",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": configuration syncer",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": discoverer",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": escalator",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": history syncer",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": housekeeper",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": http poller",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": icmp pinger",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": ipmi manager",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": ipmi poller",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": java poller",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": poller",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": preprocessing manager",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": preprocessing worker",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": proxy poller",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": self-monitoring",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": snmp trapper",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": task manager",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": timer",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": trapper",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": unreachable poller",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,": vmware collector",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,"zabbix_agentd",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,"zabbix_server -c",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Process - memory [$4]|<p>-</p>|`Zabbix agent`|proc.mem[,,sum,"zabbix_server",rss]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Zabbix agentd log size ($1)|<p>-</p>|`Zabbix agent`|vfs.file.size[{$ZABBIX_AGENT_LOG_PATH}]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|File - DB Table [ibdata1]|<p>-</p>|`Zabbix agent`|vfs.file.size[{$ZABBIX_DB_DIR}ibdata1]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|File - DB Table [ib_logfile0]|<p>-</p>|`Zabbix agent`|vfs.file.size[{$ZABBIX_DB_DIR}ib_logfile0]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|File - DB Table [ib_logfile1]|<p>-</p>|`Zabbix agent`|vfs.file.size[{$ZABBIX_DB_DIR}ib_logfile1]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|File - DB Table [events]|<p>-</p>|`Zabbix agent`|vfs.file.size[{$ZABBIX_DB_DIR}zabbix/events.ibd]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|File - DB Table [history]|<p>-</p>|`Zabbix agent`|vfs.file.size[{$ZABBIX_DB_DIR}zabbix/history.ibd]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|File - DB Table [history_log]|<p>-</p>|`Zabbix agent`|vfs.file.size[{$ZABBIX_DB_DIR}zabbix/history_log.ibd]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|File - DB Table [history_str]|<p>-</p>|`Zabbix agent`|vfs.file.size[{$ZABBIX_DB_DIR}zabbix/history_str.ibd]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|File - DB Table [history_text]|<p>-</p>|`Zabbix agent`|vfs.file.size[{$ZABBIX_DB_DIR}zabbix/history_text.ibd]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|File - DB Table [history_uint]|<p>-</p>|`Zabbix agent`|vfs.file.size[{$ZABBIX_DB_DIR}zabbix/history_uint.ibd]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|File - DB Table [trends]|<p>-</p>|`Zabbix agent`|vfs.file.size[{$ZABBIX_DB_DIR}zabbix/trends.ibd]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|File - DB Table [trends_uint]|<p>-</p>|`Zabbix agent`|vfs.file.size[{$ZABBIX_DB_DIR}zabbix/trends_uint.ibd]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix server log size ($1)|<p>-</p>|`Zabbix agent`|vfs.file.size[{$ZABBIX_SERVER_LOG_PATH}]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Start DateTime|<p>-</p>|`Zabbix internal`|zabbix[boottime]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Number of hosts (monitored)|<p>-</p>|`Zabbix internal`|zabbix[hosts]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Number of items - supported and not supported|<p>-</p>|`Zabbix internal`|zabbix[items]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Number of items - supported|<p>-</p>|`Calculated`|zabbix.items_supported<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Number of items - unsupported|<p>-</p>|`Zabbix internal`|zabbix[items_unsupported]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Zabbix preprocessing queue|<p>Count of values enqueued in the preprocessing queue.</p>|`Zabbix internal`|zabbix[preprocessing_queue]<p>Update: 10m</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,alerter,avg,busy]<p>Update: 1m</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,alerter,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,alert manager,avg,busy]<p>Update: 1m</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,alert manager,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,configuration syncer,avg,busy]<p>Update: 1m</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,configuration syncer,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,discoverer,avg,busy]<p>Update: 1m</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,discoverer,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,escalator,avg,busy]<p>Update: 1m</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,escalator,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,history syncer,avg,busy]<p>Update: 1m</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,history syncer,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,housekeeper,avg,busy]<p>Update: 1m</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,housekeeper,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,http poller,avg,busy]<p>Update: 1m</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,http poller,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,icmp pinger,avg,busy]<p>Update: 1m</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,icmp pinger,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,ipmi manager,avg,busy]<p>Update: 1m</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,ipmi manager,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,ipmi poller,avg,busy]<p>Update: 1m</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,ipmi poller,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,java poller,avg,busy]<p>Update: 1m</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,java poller,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,poller,avg,busy]<p>Update: 1m</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,poller,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,preprocessing manager,avg,busy]<p>Update: 1m</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,preprocessing manager,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,preprocessing worker,avg,busy]<p>Update: 1m</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,preprocessing worker,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,proxy poller,avg,busy]<p>Update: 1m</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,proxy poller,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,self-monitoring,avg,busy]<p>Update: 1m</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,self-monitoring,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,snmp trapper,avg,busy]<p>Update: 1m</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,snmp trapper,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,task manager,avg,busy]<p>Update: 1m</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,task manager,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,timer,avg,busy]<p>Update: 1m</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,timer,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,trapper,avg,busy]<p>Update: 1m</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,trapper,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,unreachable poller,avg,busy]<p>Update: 1m</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,unreachable poller,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,vmware collector,avg,busy]<p>Update: 1m</p>|
|Process Count[$2]|<p>-</p>|`Zabbix internal`|zabbix[process,vmware collector,count]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix queue|<p>-</p>|`Zabbix internal`|zabbix[queue]<p>Update: 10m</p>|
|Zabbix queue over $2|<p>-</p>|`Zabbix internal`|zabbix[queue,10m]<p>Update: 10m</p>|
|Zabbix queue over $2|<p>-</p>|`Zabbix internal`|zabbix[queue,1s,29s]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Zabbix queue over $2|<p>-</p>|`Zabbix internal`|zabbix[queue,30s,599s]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Zabbix configuration cache, % free|<p>-</p>|`Zabbix internal`|zabbix[rcache,buffer,pfree]<p>Update: 1m</p>|
|Zabbix configuration cache, size|<p>Added in V1.1</p>|`Zabbix internal`|zabbix[rcache,buffer,total]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Values (required, per second)|<p>Required performance of the Zabbix server|Zabbix proxy, in new values per second expected.</p>|`Zabbix internal`|zabbix[requiredperformance]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Number of triggers|<p>-</p>|`Zabbix internal`|zabbix[triggers]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Uptime|<p>-</p>|`Zabbix internal`|zabbix[uptime]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Value Cache buffer, free|<p>-</p>|`Zabbix internal`|zabbix[vcache, buffer, free]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Value Cache buffer, free %|<p>-</p>|`Zabbix internal`|zabbix[vcache, buffer, pfree]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Zabbix value cache, % free|<p>-</p>|`Zabbix internal`|zabbix[vcache,buffer,pfree]<p>Update: 1m</p>|
|Value Cache buffer, used %|<p>-</p>|`Zabbix internal`|zabbix[vcache, buffer, pused]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Value Cache buffer, total|<p>Add a application in V1.1</p>|`Zabbix internal`|zabbix[vcache, buffer, total]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Value Cache buffer, used|<p>-</p>|`Zabbix internal`|zabbix[vcache, buffer, used]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Value Cache, hits|<p>-</p>|`Zabbix internal`|zabbix[vcache, cache, hits]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Zabbix value cache hits|<p>-</p>|`Zabbix internal`|zabbix[vcache,cache,hits]<p>Update: 1m</p>|
|Value Cache, misses|<p>-</p>|`Zabbix internal`|zabbix[vcache, cache, misses]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Zabbix value cache misses|<p>-</p>|`Zabbix internal`|zabbix[vcache,cache,misses]<p>Update: 1m</p>|
|Zabbix value cache operating mode|<p>-</p>|`Zabbix internal`|zabbix[vcache,cache,mode]<p>Update: 1m</p>|
|Zabbix vmware cache, % free|<p>-</p>|`Zabbix internal`|zabbix[vmware,buffer,pfree]<p>Update: 1m</p>|
|Zabbix vmware cache, size|<p>Added in V1.1</p>|`Zabbix internal`|zabbix[vmware,buffer,total]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix $2 write cache, % free|<p>-</p>|`Zabbix internal`|zabbix[wcache,history,pfree]<p>Update: 1m</p>|
|Zabbix history write cache, size|<p>Added in V1.1</p>|`Zabbix internal`|zabbix[wcache,history,total]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix history index cache, % free|<p>-</p>|`Zabbix internal`|zabbix[wcache,index,pfree]<p>Update: 1m</p>|
|Zabbix history index cache, size|<p>Added in V1.1</p>|`Zabbix internal`|zabbix[wcache,index,total]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Zabbix $2 write cache, % free|<p>-</p>|`Zabbix internal`|zabbix[wcache,trend,pfree]<p>Update: 1m</p>|
|Zabbix trend write cache, size|<p>Added in V1.1</p>|`Zabbix internal`|zabbix[wcache,trend,total]<p>Update: {$ZABBIX_INTERVAL_LONG}</p>|
|Values processed by Zabbix server per second|<p>-</p>|`Zabbix internal`|zabbix[wcache,values]<p>Update: 1m</p>|
|Value processed $3, per second|<p>-</p>|`Zabbix internal`|zabbix[wcache,values,float]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Value processed $3, per second|<p>-</p>|`Zabbix internal`|zabbix[wcache,values,log]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Value processed $3, per second|<p>-</p>|`Zabbix internal`|zabbix[wcache,values,not supported]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Value processed $3, per second|<p>-</p>|`Zabbix internal`|zabbix[wcache,values,str]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Value processed $3, per second|<p>-</p>|`Zabbix internal`|zabbix[wcache,values,text]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
|Value processed $3, per second|<p>-</p>|`Zabbix internal`|zabbix[wcache,values,uint]<p>Update: {$ZABBIX_INTERVAL_SHORT}</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Less than 5% free in the value cache|<p>-</p>|average|
|Less than 25% free in the configuration cache|<p>Consider increasing CacheSize in the zabbix_server.conf configuration file</p>|average|
|Less than 25% free in the history cache|<p>-</p>|average|
|Less than 25% free in the history index cache|<p>-</p>|average|
|Less than 25% free in the trends cache|<p>-</p>|average|
|Less than 25% free in the vmware cache|<p>-</p>|average|
|More than 100 items having missing data for more than 10 minutes|<p>zabbix[queue,10m] item is collecting data about how many items are missing data for more than 10 minutes (next parameter)</p>|warning|
|Zabbix alerter processes more than 75% busy|<p>-</p>|average|
|Zabbix alert manager processes more than 75% busy|<p>-</p>|average|
|Zabbix configuration syncer processes more than 75% busy|<p>-</p>|average|
|Zabbix discoverer processes more than 75% busy|<p>-</p>|average|
|Zabbix escalator processes more than 75% busy|<p>-</p>|average|
|Zabbix history syncer processes more than 75% busy|<p>-</p>|average|
|Zabbix housekeeper processes more than 75% busy|<p>-</p>|average|
|Zabbix http poller processes more than 75% busy|<p>-</p>|average|
|Zabbix icmp pinger processes more than 75% busy|<p>-</p>|average|
|Zabbix ipmi manager processes more than 75% busy|<p>-</p>|average|
|Zabbix ipmi poller processes more than 75% busy|<p>-</p>|average|
|Zabbix java poller processes more than 75% busy|<p>-</p>|average|
|Zabbix poller processes more than 75% busy|<p>-</p>|average|
|Zabbix preprocessing manager processes more than 75% busy|<p>-</p>|average|
|Zabbix preprocessing worker processes more than 75% busy|<p>-</p>|average|
|Zabbix proxy poller processes more than 75% busy|<p>-</p>|average|
|Zabbix self-monitoring processes more than 75% busy|<p>-</p>|average|
|Zabbix snmp trapper processes more than 75% busy|<p>-</p>|average|
|Zabbix task manager processes more than 75% busy|<p>-</p>|average|
|Zabbix timer processes more than 75% busy|<p>-</p>|average|
|Zabbix trapper processes more than 75% busy|<p>-</p>|average|
|Zabbix unreachable poller processes more than 75% busy|<p>-</p>|average|
|Zabbix value cache working in low memory mode|<p>-</p>|high|
|Zabbix vmware collector processes more than 75% busy|<p>-</p>|average|
