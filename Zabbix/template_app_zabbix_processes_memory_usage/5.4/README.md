# Template App Zabbix processes memory usage

## Description

Template requires the following utilities to be available on the Agent host: - pgrep - egrep - sed - jq

## Overview

Overview
========


With help of Zabbix agent will discover and start to monitor all running Zabbix processes including server, proxy and agent processes.


Requirements
============


Requires the following utilities to be available on the agent host:


* pgrep
* egrep
* sed
* jq


Also requires that [remote commands](https://www.zabbix.com/documentation/current/manual/config/notifications/action/operation/remote_command) be enabled in agent configuration.


How it works
============


Watch the data in the "Latest data" section or individually each process type in the graph created from graph prototype. Memory usage is monitored by the process type. It doesn't matter how many poller processes you have running, the memory used by all of them will be monitored.


First, we discover all running process types, e. g.


* zabbix\_agentd: active checks
* zabbix\_agentd: collector
* ...
* zabbix\_server: alerter
* zabbix\_server: alert manager
* ...


Then, for each we create 2 items to monitor VmRSS and VmSwap usage. On top of that we create calculated item that sums those up. For each calculated item there will be a graph created.


If the following command works on your agent host the template should work:



```
pgrep -a 'zabbix\_(server|agentd|agent2|proxy)' | egrep -o --color=none 'zabbix\_(server|agentd|agent2|proxy): .*' | sed 's/ [#\[].*//' | sort -u | jq -Rs '{data: split("\n")[:-1]| map(split(": ") | {"{#COMPONENT}": .[0], "{#PROCESS}": .[1]})}'  
  

```

Troubleshooting
===============


You might want to edit the version in the XML file to suit your Zabbix version:



```
5.0
```


## Author

dimir

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$PGREP.REGEX}|<p>Pattern that will be used by pgrep utility to locate Zabbix processes.</p>|`zabbix_(server|agentd|agent2|proxy)`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Zabbix processes|<p>-</p>|`Zabbix agent`|system.run["pgrep -a '{$PGREP.REGEX}' | egrep -o --color=none '{$PGREP.REGEX}: .*' | sed 's/ [#\[].*//' | sort -u | jq -Rs '{\"data\": split(\"\n\") | map(select(length > 0)) | map(split(\": \") | {\"{#COMPONENT}\": .[0], \"{#PROCESS}\": .[1]})}'"]<p>Update: 1m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Memory used by {#COMPONENT} {#PROCESS} (LLD)|<p>-</p>|`Calculated`|proc.mem.total[{#COMPONENT},{#PROCESS}]<p>Update: 1m;m0-59</p>|
|VmRSS used by {#COMPONENT} {#PROCESS} (LLD)|<p>-</p>|`Zabbix agent`|proc.mem[{#COMPONENT},,,{#COMPONENT}: {#PROCESS},rss]<p>Update: 1m;m0-59</p>|
|VmSwap used by {#COMPONENT} {#PROCESS} (LLD)|<p>-</p>|`Zabbix agent`|proc.mem[{#COMPONENT},,,{#COMPONENT}: {#PROCESS},swap]<p>Update: 1m;m0-59</p>|
## Triggers

There are no triggers in this template.

