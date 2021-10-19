# Template App Nginx

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
|Nginx process count|<p>-</p>|`Zabbix agent`|proc.num[nginx]<p>Update: 60</p>|
|Nginx Writting state count|<p>-</p>|`External check`|nginx_stat_getter["-h","{HOST.CONN}","-p","4040","-s","writing"]<p>Update: 60</p>|
|Nginx Reading state count|<p>-</p>|`External check`|nginx_stat_getter["-h","{HOST.CONN}","-p","4040","-s","reading"]<p>Update: 60</p>|
|Nginx Accepted per second|<p>-</p>|`External check`|nginx_stat_getter["-h","{HOST.CONN}","-p","4040","-s","accepted"]<p>Update: 60</p>|
|Nginx Requests per second|<p>-</p>|`External check`|nginx_stat_getter["-h","{HOST.CONN}","-p","4040","-s","requests"]<p>Update: 60</p>|
|Nginx Waiting state count|<p>-</p>|`External check`|nginx_stat_getter["-h","{HOST.CONN}","-p","4040","-s","waiting"]<p>Update: 60</p>|
|Nginx Handled per second|<p>-</p>|`External check`|nginx_stat_getter["-h","{HOST.CONN}","-p","4040","-s","handled"]<p>Update: 60</p>|
|Nginx Active Connections|<p>-</p>|`External check`|nginx_stat_getter["-h","{HOST.CONN}","-p","4040","-s","active"]<p>Update: 60</p>|
|Nginx memory allocated|<p>-</p>|`Zabbix agent`|proc.mem[nginx,nginx]<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Nginx is down|<p>-</p>|high|
