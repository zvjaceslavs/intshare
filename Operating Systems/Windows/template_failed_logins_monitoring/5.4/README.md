# Template Module Windows Failed Logins

## Overview

Monitoring of event 4625 in Windows.


Dependent items created with regex to get username, domain, ip-address and hostname.  
The dependent items contains regex code for both english and norwegian language.   
Easy to convert to other languages. 


The trigger uses macros.


The trigger intentionally don't resolve itself if problem is resolved, because issues related to audit failures needs to be checked.


Hit me up if someone got an idea for counting the events in a item without powershell on each host.

## Author

Olai Wanvik

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$NUM.FAILS.CRIT}|<p>Number of fails</p>|`500`|Text macro|
|{$NUM.FAILS.HIGH}|<p>Number of fails</p>|`100`|Text macro|
|{$NUM.FAILS.WARN}|<p>Number of fails</p>|`50`|Text macro|
|{$TIME.FAILS.CRIT}|<p>Time span of login failures</p>|`12h`|Text macro|
|{$TIME.FAILS.HIGH}|<p>Time span of login failures</p>|`12h`|Text macro|
|{$TIME.FAILS.WARN}|<p>Time span of login failures</p>|`12h`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Failed login|<p>A shorter summary containing user, domain, hostname and ip</p>|`Dependent item`|wfl.failed.login<p>Update: 0</p>|
|Account Domain|<p>-</p>|`Dependent item`|wfl.account.domain<p>Update: 0</p>|
|Workstation name|<p>-</p>|`Dependent item`|wfl.workstation.name<p>Update: 0</p>|
|Account name|<p>-</p>|`Dependent item`|wfl.account.name<p>Update: 0</p>|
|Failed logins|<p>-</p>|`Zabbix agent (active)`|eventlog[Security,,,,4625,,skip]<p>Update: 1m</p>|
|Source Network Address|<p>-</p>|`Dependent item`|wfl.source.network.address<p>Update: 0</p>|
## Triggers

There are no triggers in this template.

