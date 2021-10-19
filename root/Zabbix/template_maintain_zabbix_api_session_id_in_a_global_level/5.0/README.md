# Check if Zabbix session key is valid via API

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
|Validate session key|<p>Validate session key by listing proxies</p>|`HTTP agent`|check.session.key<p>Update: 15s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Invalid URL configureded for Zabbix API|<p>Please install the right value for { $Z_API_PHP} under: Administration -> General -> Macros Currently, the value is installed as {$Z_API_PHP} and it is not working. Then reload the configuration cache: zabbix_server -R config_cache_reload</p>|disaster|
|Session key is not valid. HTTP works fine|<p>You may need to obtain a new session key: curl -sk {$Z_API_PHP} -X POST -H 'Content-Type: application/json' -H 'cache-control: no-cache' -d '{"jsonrpc":"2.0","method":"user.login","params":{"user":"{$Z_API_USER}","password":"{$Z_API_PASSWORD}"},"id":1}' | grep -E -o "([0-9a-f]{32,32})"</p>|disaster|
