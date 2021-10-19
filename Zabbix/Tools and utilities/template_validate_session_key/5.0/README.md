# check if session key is valid api

## Description

You may need to obtain a new session key. Replace user 'Admin' and password 'zabbix' curl -s -X POST http://127.0.0.1/api_jsonrpc.php -H 'Content-Type: application/json' -H 'cache-control: no-cache' -d "{ "jsonrpc ": "2.0 ", "method ": "user.login ", "params ":{ "user ": "Admin ", "password ": "zabbix "}, "id ":1}" | grep -E -o "([0-9a-f]{32,32})" curl -s -X POST http://127.0.0.1/zabbix/api_jsonrpc.php -H 'Content-Type: application/json' -H 'cache-control: no-cache' -d "{ "jsonrpc ": "2.0 ", "method ": "user.login ", "params ":{ "user ": "Admin ", "password ": "zabbix "}, "id ":1}" | grep -E -o "([0-9a-f]{32,32})"

## Overview

It's possible to define a Zabbix session key in a global manner.


After that, by using a macro {$APIKEY} and {$JSONRPC.PHP} you can directly use Zabbix API calls in "HTTP Agent" or in the "Action" section.


This template helps you to detect if the session key is somehow not valid anymore.


{$JSONRPC.PHP} = http://127.0.0.1/zabbix/api\_jsonrpc.php


or


{$JSONRPC.PHP} = <http://127.0.0.1/api_jsonrpc.php>


The first session key can be obtained using:


curl -s -X POST http://127.0.0.1/zabbix/api\_jsonrpc.php -H 'Content-Type: application/json' -H 'cache-control: no-cache' -d "{\"jsonrpc\":\"2.0\",\"method\":\"user.login\",\"params\":{\"user\":\"Admin\",\"password\":\"zabbix\"},\"id\":1}" | grep -E -o "([0-9a-f]{32,32})"


 


or:


curl -s -X POST http://127.0.0.1/api\_jsonrpc.php -H 'Content-Type: application/json' -H 'cache-control: no-cache' -d "{\"jsonrpc\":\"2.0\",\"method\":\"user.login\",\"params\":{\"user\":\"Admin\",\"password\":\"zabbix\"},\"id\":1}" | grep -E -o "([0-9a-f]{32,32})"


Install session key as macro like:


{$APIKEY} = 0b0bacc6ebc339e3a89247f20a65c13c



## Macros used

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

There are no triggers in this template.

