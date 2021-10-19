# Template Fail2ban

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

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Fail2ban discovery|<p>Discovery of jails from fail2ban daemon.</p>|`Zabbix agent`|fail2ban.discovery<p>Update: 30</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Fail2Ban service is running|<p>ping - tests if the server is alive</p>|`Zabbix agent`|proc.num[fail2ban-server]<p>Update: 60</p>|
|Fail2ban $1 banned IPs|<p>-</p>|`Zabbix agent`|fail2ban.status[{#JAIL}]<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Fail2ban server is Down|<p>-</p>|average|
