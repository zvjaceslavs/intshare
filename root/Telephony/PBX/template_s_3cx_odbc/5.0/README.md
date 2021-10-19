# Templates 3CX ODBC

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$DSN3CX}|<p>-</p>|`3CXDB`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Discovery Gateways|<p>-</p>|`Database monitor`|db.odbc.discovery[discovery.gws,{$DSN3CX}]<p>Update: 1h</p>|
|Discovery Users|<p>-</p>|`Database monitor`|db.odbc.discovery[discovery.users,{$DSN3CX}]<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Number of Calls in the last 7 days|<p>-</p>|`Database monitor`|db.odbc.select[calls.7days,{$DSN3CX}]<p>Update: 5m</p>|
|Number of Calls in this month|<p>-</p>|`Database monitor`|db.odbc.select[calls.month,{$DSN3CX}]<p>Update: 5m</p>|
|Number of Calls Today|<p>-</p>|`Database monitor`|db.odbc.select[calls.total,{$DSN3CX}]<p>Update: 5m</p>|
|Gateway Host|<p>-</p>|`Database monitor`|db.odbc.select[gw.host-{#IDGATEWAY},{$DSN3CX}]<p>Update: 1h</p>|
|Gateway Max Calls|<p>-</p>|`Database monitor`|db.odbc.select[gw.max-calls-{#IDGATEWAY},{$DSN3CX}]<p>Update: 1h</p>|
|Number of associated routes|<p>-</p>|`Database monitor`|db.odbc.select[gw.number-routes-{#IDGATEWAY},{$DSN3CX}]<p>Update: 1h</p>|
|Gateway Port|<p>-</p>|`Database monitor`|db.odbc.select[gw.port-{#IDGATEWAY},{$DSN3CX}]<p>Update: 1h</p>|
|User Last Name|<p>-</p>|`Database monitor`|db.odbc.select[ext.user.lastname-{#FKIDEXTENSION},{$DSN3CX}]<p>Update: 1h</p>|
|User First Name|<p>-</p>|`Database monitor`|db.odbc.select[ext.username-{#FKIDEXTENSION},{$DSN3CX}]<p>Update: 1h</p>|
|User Extension Last Register|<p>-</p>|`Database monitor`|db.odbc.select[user-last-resgister-{#FKIDEXTENSION},{$DSN3CX}]<p>Update: 1m</p>|
|User Extension Status|<p>-</p>|`Database monitor`|db.odbc.select[user-last-status-{#FKIDEXTENSION},{$DSN3CX}]<p>Update: 1m</p>|
|User Mail|<p>-</p>|`Database monitor`|db.odbc.select[user.mail-{#FKIDEXTENSION},{$DSN3CX}]<p>Update: 1h</p>|
## Triggers

There are no triggers in this template.

