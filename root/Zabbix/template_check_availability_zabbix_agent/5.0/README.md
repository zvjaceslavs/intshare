# Template TCP Zabbix Agent

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
|TCP-CONTROL|<p>Item about check tcp service on port 10050 (Zabbix Agent)</p>|`Simple check`|net.tcp.service[tcp,,10050]<p>Update: 1m</p>|
|PING-CONTROL|<p>Simple check about ping</p>|`Simple check`|icmpping<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOST.NAME} is not available|<p>Double control to check a machine that using Zabbix Agent is available by Federico Coppola</p>|high|
