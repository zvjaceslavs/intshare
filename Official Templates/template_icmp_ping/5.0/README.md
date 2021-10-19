# Template Module ICMP Ping

## Description

Template Module ICMP Ping version: 0.12

## Overview

Official ICMP Ping Template from Zabbix distribution. It is used to check hardware availability by ICMP.



## Author

Zabbix SIA

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$ICMP_LOSS_WARN}|<p>-</p>|`20`|Text macro|
|{$ICMP_RESPONSE_TIME_WARN}|<p>-</p>|`0.15`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 60</p>|
## Triggers

There are no triggers in this template.

