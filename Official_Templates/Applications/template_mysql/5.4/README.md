# App MySQL

## Description

## Overview Official MySQL Template from Zabbix distribution ## Author Zabbix SIA 

## Overview

Official MySQL Template from Zabbix distribution



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
|MySQL queries per second|<p>It requires user parameter mysql.status[*], which is defined in userparameter_mysql.conf.</p>|`Zabbix agent`|mysql.status[Questions]<p>Update: 60</p>|
|MySQL status|<p>It requires user parameter mysql.ping, which is defined in userparameter_mysql.conf. 0 - MySQL server is down 1 - MySQL server is up</p>|`Zabbix agent`|mysql.ping<p>Update: 60</p>|
|MySQL uptime|<p>It requires user parameter mysql.status[*], which is defined in userparameter_mysql.conf.</p>|`Zabbix agent`|mysql.status[Uptime]<p>Update: 60</p>|
|MySQL begin operations per second|<p>It requires user parameter mysql.status[*], which is defined in userparameter_mysql.conf.</p>|`Zabbix agent`|mysql.status[Com_begin]<p>Update: 60</p>|
|MySQL bytes sent per second|<p>The number of bytes sent to all clients. It requires user parameter mysql.status[*], which is defined in userparameter_mysql.conf.</p>|`Zabbix agent`|mysql.status[Bytes_sent]<p>Update: 60</p>|
|MySQL version|<p>It requires user parameter mysql.version, which is defined in userparameter_mysql.conf.</p>|`Zabbix agent`|mysql.version<p>Update: 3600</p>|
|MySQL delete operations per second|<p>It requires user parameter mysql.status[*], which is defined in userparameter_mysql.conf.</p>|`Zabbix agent`|mysql.status[Com_delete]<p>Update: 60</p>|
|MySQL bytes received per second|<p>The number of bytes received from all clients. It requires user parameter mysql.status[*], which is defined in userparameter_mysql.conf.</p>|`Zabbix agent`|mysql.status[Bytes_received]<p>Update: 60</p>|
|MySQL select operations per second|<p>It requires user parameter mysql.status[*], which is defined in userparameter_mysql.conf.</p>|`Zabbix agent`|mysql.status[Com_select]<p>Update: 60</p>|
|MySQL commit operations per second|<p>It requires user parameter mysql.status[*], which is defined in userparameter_mysql.conf.</p>|`Zabbix agent`|mysql.status[Com_commit]<p>Update: 60</p>|
|MySQL insert operations per second|<p>It requires user parameter mysql.status[*], which is defined in userparameter_mysql.conf.</p>|`Zabbix agent`|mysql.status[Com_insert]<p>Update: 60</p>|
|MySQL rollback operations per second|<p>It requires user parameter mysql.status[*], which is defined in userparameter_mysql.conf.</p>|`Zabbix agent`|mysql.status[Com_rollback]<p>Update: 60</p>|
|MySQL update operations per second|<p>It requires user parameter mysql.status[*], which is defined in userparameter_mysql.conf.</p>|`Zabbix agent`|mysql.status[Com_update]<p>Update: 60</p>|
|MySQL slow queries|<p>It requires user parameter mysql.status[*], which is defined in userparameter_mysql.conf.</p>|`Zabbix agent`|mysql.status[Slow_queries]<p>Update: 60</p>|
## Triggers

There are no triggers in this template.

