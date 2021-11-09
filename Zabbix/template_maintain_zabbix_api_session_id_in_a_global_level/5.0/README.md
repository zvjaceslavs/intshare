# Check if Zabbix session key is valid via API

## Description

To use template create new user 'api' and set user type 'Zabbix Super Admin'. Setup global macros: {$Z_API_USER} {$Z_API_PASSWORD} {$Z_API_PHP} {$Z_API_SESSIONID} for example: {$Z_API_USER} = 'api' {$Z_API_PASSWORD} = 'jp5Jda5ABveGVEbSyJgZ' {$Z_API_PHP} = 'http://127.0.0.1/api_jsonrpc.php' Obtain new session id instantly curl -sk http://127.0.0.1/api_jsonrpc.php -X POST -H 'Content-Type: application/json' -H 'cache-control: no-cache' -d '{"jsonrpc":"2.0","method":"user.login","params":{"user":"api","password":"jp5Jda5ABveGVEbSyJgZ"},"id":1}' | grep -E -o "([0-9a-f]{32,32})" Install session: {$Z_API_SESSIONID} = '2fdcdb96409fb134f82a2029342ce933'

## Overview

A lot of solutions out there are using Zabbix API to accomplish a specific task.


In a lot of times, the session is not closed with API 'user.logout' procedure. In the long term, this will always result in slowness inside the frontend.


I offer to not use a repeated authorization at all but use a static session-id (a Zabbix macro) instead for all the API calls/scripts.


Here is the template to maintain the session id (macro).


<https://youtu.be/MjQJ0g0AaYI>


 



## Macros used

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

There are no triggers in this template.

