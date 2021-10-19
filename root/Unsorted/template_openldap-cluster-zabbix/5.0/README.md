# Template LDAP

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$BASE_DN}|<p>-</p>|`"dc=modulus,dc=gr"`|Text macro|
|{$LDAP_HOST}|<p>-</p>|`172.17.172.51`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|LDAP Cluster status|<p>-</p>|`Zabbix agent`|ldap.clusterstatus[172.17.172.51]<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|LDAP Consumer Down|<p>-</p>|warning|
|LDAP Provider & Consumer Down|<p>-</p>|warning|
|LDAP Provider Down|<p>-</p>|warning|
