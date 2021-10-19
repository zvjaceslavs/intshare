# Template_NGINX_http_agent

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$HOST.NGINX}|<p>-</p>|`127.0.0.1:8080`|Text macro|
|{$PROTO}|<p>-</p>|`http`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Number of nginx running|<p>-</p>|`Zabbix agent (active)`|proc.num[nginx]<p>Update: 90</p>|
|Nginx: requests per second|<p>-</p>|`Dependent item`|nginx.requests<p>Update: 0</p>|
|Get NGINX status page|<p>-</p>|`HTTP agent`|nginx.get<p>Update: 30s</p>|
|Nginx: handled per second|<p>-</p>|`Dependent item`|nginx.handled<p>Update: 0</p>|
|Nginx: number of connections in waiting state|<p>-</p>|`Dependent item`|nginx.connections.waiting<p>Update: 0</p>|
|Nginx: number of connections in writing state|<p>-</p>|`Dependent item`|nginx.connections.writing<p>Update: 0</p>|
|Nginx: accepts per second|<p>-</p>|`Dependent item`|nginx.accepts<p>Update: 0</p>|
|Nginx active connections|<p>-</p>|`Dependent item`|nginx.connections.active<p>Update: 0</p>|
|Nginx: number of connections in reading state|<p>-</p>|`Dependent item`|nginx.connections.reading<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|nginx is down on {HOSTNAME}|<p>-</p>|high|
