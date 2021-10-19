# check if session key is valid api

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
|check session key|<p>-</p>|`HTTP agent`|check.session.key<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|invalid url configureded for zabbix api|<p>You may need to obtain a new session key. Replace user 'Admin' and password 'zabbix' curl -s -X POST http://127.0.0.1/api_jsonrpc.php -H 'Content-Type: application/json' -H 'cache-control: no-cache' -d "{ "jsonrpc ": "2.0 ", "method ": "user.login ", "params ":{ "user ": "Admin ", "password ": "zabbix "}, "id ":1}" | grep -E -o "([0-9a-f]{32,32})"</p>|disaster|
|session key now valid. http works fine|<p>You may need to obtain a new session key. Replace user 'Admin' and password 'zabbix' curl -s -X POST http://127.0.0.1/api_jsonrpc.php -H 'Content-Type: application/json' -H 'cache-control: no-cache' -d "{ "jsonrpc ": "2.0 ", "method ": "user.login ", "params ":{ "user ": "Admin ", "password ": "zabbix "}, "id ":1}" | grep -E -o "([0-9a-f]{32,32})"</p>|disaster|
