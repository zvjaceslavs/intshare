# OKTA AD Agent Healthcheck

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$ITEM.STATE}|<p>AD Agent Status</p>|`1`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Service Discovery|<p>-</p>|`Zabbix agent (active)`|service.discovery<p>Update: 1m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|OKTA AD Agent|<p>OKTA AD Agent status is service.info[Okta Active Directory Service]</p>|`Zabbix agent`|service.info[Okta Active Directory Service]<p>Update: 30s</p>|
|service.info[{#SERVICE.NAME},state]|<p>-</p>|`Zabbix agent`|service.info[service,<param>]<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|OKTA AD Agent State Alert|<p>-</p>|high|
