# Monitor one Linux Services

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
|Check ufw|<p>1= not found 0 = found</p>|`Zabbix agent`|system.run["systemctl status ufw | grep -q running;echo $?"]<p>Update: 10s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Firewall is not up|<p>-</p>|high|
