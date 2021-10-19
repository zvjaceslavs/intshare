# Template App Zabbix Server

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
|Zabbix value cache operating mode|<p>-</p>|`Zabbix internal`|zabbix[vcache,cache,mode]<p>Update: 1m</p>|
|Zabbix vmware cache, % free|<p>-</p>|`Zabbix internal`|zabbix[vmware,buffer,pfree]<p>Update: 1m</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,timer,avg,busy]<p>Update: 1m</p>|
|Zabbix $2 write cache, % free|<p>-</p>|`Zabbix internal`|zabbix[wcache,history,pfree]<p>Update: 1m</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,preprocessing manager,avg,busy]<p>Update: 1m</p>|
|Zabbix $2 write cache, % free|<p>-</p>|`Zabbix internal`|zabbix[wcache,trend,pfree]<p>Update: 1m</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,http poller,avg,busy]<p>Update: 1m</p>|
|Zabbix configuration cache, % free|<p>-</p>|`Zabbix internal`|zabbix[rcache,buffer,pfree]<p>Update: 1m</p>|
|Values processed by Zabbix server per second|<p>-</p>|`Zabbix internal`|zabbix[wcache,values]<p>Update: 1m</p>|
|Zabbix value cache hits|<p>-</p>|`Zabbix internal`|zabbix[vcache,cache,hits]<p>Update: 1m</p>|
|Zabbix history index cache, % free|<p>-</p>|`Zabbix internal`|zabbix[wcache,index,pfree]<p>Update: 1m</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,discoverer,avg,busy]<p>Update: 1m</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,ipmi manager,avg,busy]<p>Update: 1m</p>|
|Zabbix value cache misses|<p>-</p>|`Zabbix internal`|zabbix[vcache,cache,misses]<p>Update: 1m</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,alert manager,avg,busy]<p>Update: 1m</p>|
|Zabbix value cache, % free|<p>-</p>|`Zabbix internal`|zabbix[vcache,buffer,pfree]<p>Update: 1m</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,ipmi poller,avg,busy]<p>Update: 1m</p>|
|Zabbix queue over $2|<p>-</p>|`Zabbix internal`|zabbix[queue,10m]<p>Update: 10m</p>|
|Zabbix queue|<p>-</p>|`Zabbix internal`|zabbix[queue]<p>Update: 10m</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,preprocessing worker,avg,busy]<p>Update: 1m</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,self-monitoring,avg,busy]<p>Update: 1m</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,escalator,avg,busy]<p>Update: 1m</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,vmware collector,avg,busy]<p>Update: 1m</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,snmp trapper,avg,busy]<p>Update: 1m</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,configuration syncer,avg,busy]<p>Update: 1m</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,trapper,avg,busy]<p>Update: 1m</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,poller,avg,busy]<p>Update: 1m</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,housekeeper,avg,busy]<p>Update: 1m</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,history syncer,avg,busy]<p>Update: 1m</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,alerter,avg,busy]<p>Update: 1m</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,proxy poller,avg,busy]<p>Update: 1m</p>|
|Zabbix preprocessing queue|<p>Count of values enqueued in the preprocessing queue.</p>|`Zabbix internal`|zabbix[preprocessing_queue]<p>Update: 10m</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,task manager,avg,busy]<p>Update: 1m</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,unreachable poller,avg,busy]<p>Update: 1m</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,java poller,avg,busy]<p>Update: 1m</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,icmp pinger,avg,busy]<p>Update: 1m</p>|
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
