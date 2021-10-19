# Junos Space

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
|service postgreSQL count|<p>-</p>|`Zabbix agent`|proc.num[postmaster,postgres,,pgsql]<p>Update: 60</p>|
|service httpd count|<p>-</p>|`Zabbix agent`|proc.num[httpd,root,," "]<p>Update: 60</p>|
|service jboss count|<p>-</p>|`Zabbix agent`|proc.num[sh,jboss,,--host-config=host.xml.master]<p>Update: 60</p>|
|service nma count|<p>-</p>|`Zabbix agent`|proc.num[httpd,root,,nma]<p>Update: 60</p>|
|service opennms count|<p>-</p>|`Zabbix agent`|proc.num[java,opennms]<p>Update: 60</p>|
|service jmp-watchdog count|<p>-</p>|`Zabbix agent`|proc.num[perl,root,,jmp-watchdog]<p>Update: 60</p>|
|service mysql count|<p>-</p>|`Zabbix agent`|proc.num[mysqld,mysql]<p>Update: 60</p>|
|service heartbeat count|<p>-</p>|`Zabbix agent`|proc.num[heartbeat,root,,master]<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|service jmp-heartbeat down|<p>-</p>|high|
|service httpd down|<p>-</p>|high|
|service nma down|<p>-</p>|high|
|service opennms down|<p>-</p>|high|
|service mysqld down|<p>-</p>|high|
|service jmp-watchdog down|<p>-</p>|high|
|service postgreSQL down|<p>-</p>|high|
|service jboss down|<p>-</p>|high|
