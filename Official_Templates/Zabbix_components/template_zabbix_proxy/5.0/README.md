# Template App Zabbix Proxy

## Overview

The template is used to monitor health of Zabbix Proxy parts (processes, caches, connectivity with Zabbix server and etc).



## Author

Zabbix SIA

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,data sender,avg,busy]<p>Update: 60</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,history syncer,avg,busy]<p>Update: 60</p>|
|Zabbix $2 write cache, % free|<p>-</p>|`Zabbix internal`|zabbix[wcache,history,pfree]<p>Update: 60</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,icmp pinger,avg,busy]<p>Update: 60</p>|
|Zabbix queue|<p>-</p>|`Zabbix internal`|zabbix[queue]<p>Update: 60</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,trapper,avg,busy]<p>Update: 60</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,http poller,avg,busy]<p>Update: 60</p>|
|Zabbix history index cache, % free|<p>-</p>|`Zabbix internal`|zabbix[wcache,index,pfree]<p>Update: 60</p>|
|Zabbix queue over $2|<p>-</p>|`Zabbix internal`|zabbix[queue,10m]<p>Update: 600</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,self-monitoring,avg,busy]<p>Update: 60</p>|
|Values processed by Zabbix proxy per second|<p>-</p>|`Zabbix internal`|zabbix[wcache,values]<p>Update: 60</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,discoverer,avg,busy]<p>Update: 60</p>|
|Zabbix configuration cache, % free|<p>-</p>|`Zabbix internal`|zabbix[rcache,buffer,pfree]<p>Update: 60</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,unreachable poller,avg,busy]<p>Update: 60</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,housekeeper,avg,busy]<p>Update: 60</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,configuration syncer,avg,busy]<p>Update: 60</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,poller,avg,busy]<p>Update: 60</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,ipmi poller,avg,busy]<p>Update: 60</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,snmp trapper,avg,busy]<p>Update: 60</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,heartbeat sender,avg,busy]<p>Update: 60</p>|
|Zabbix $4 $2 processes, in %|<p>-</p>|`Zabbix internal`|zabbix[process,java poller,avg,busy]<p>Update: 60</p>|
## Triggers

There are no triggers in this template.

