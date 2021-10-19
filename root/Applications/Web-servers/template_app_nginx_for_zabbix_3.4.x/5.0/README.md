# Template App Nginx by Alex Gluck

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$NGINX_CON_NUM}|<p>-</p>|`2500`|Text macro|
|{$NGINX_HOST}|<p>-</p>|`localhost`|Text macro|
|{$NGINX_PORT}|<p>-</p>|`80`|Text macro|
|{$NGINX_REQ_NUM}|<p>-</p>|`600`|Text macro|
|{$NGINX_STATS_URI}|<p>-</p>|`nginx-stats`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Nginx: connects active|<p>-</p>|`Dependent item`|nginx.active.connect<p>Update: 0</p>|
|Nginx: requests per sec|<p>-</p>|`Dependent item`|nginx.requests<p>Update: 0</p>|
|Nginx: connections accepted per sec|<p>-</p>|`Dependent item`|nginx.accepts<p>Update: 0</p>|
|Nginx: Number of processes $1|<p>-</p>|`Zabbix agent`|proc.num[nginx]<p>Update: 60s</p>|
|Nginx: connections handled per sec|<p>-</p>|`Dependent item`|nginx.handled<p>Update: 0</p>|
|Get Nginx stat page|<p>-</p>|`Zabbix agent`|web.page.get[{$NGINX_HOST},{$NGINX_STATS_URI},{$NGINX_PORT}]<p>Update: 60s</p>|
|Nginx: connections reading|<p>-</p>|`Dependent item`|nginx.reading<p>Update: 0</p>|
|Nginx: connections writing|<p>-</p>|`Dependent item`|nginx.writing<p>Update: 0</p>|
|Nginx: connections waiting|<p>-</p>|`Dependent item`|nginx.waiting<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Nginx: many active connections on {HOST.NAME}|<p>-</p>|warning|
|Nginx:  many requests on {HOST.NAME}|<p>-</p>|warning|
|Nginx: nginx is not running on {HOST.NAME}|<p>-</p>|disaster|
|Nginx:  too many requests on {HOST.NAME}|<p>-</p>|average|
