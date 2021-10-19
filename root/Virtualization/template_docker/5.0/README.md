# Template.Docker.ContainerDetails

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$JQ_DOCKER_ENV_BRANCH}|<p>-</p>|`jq .Config.Env[0]`|Text macro|
|{$JQ_DOCKER_MOUNTS}|<p>-</p>|`jq .Mounts[].Destination`|Text macro|
|{$JQ_DOCKER_NAMES}|<p>-</p>|`jq '[ .[].Names[0]|{ "{#NAMES}": .} ]'`|Text macro|
|{$JQ_DOCKER_VOLUMES}|<p>-</p>|`jq .Mounts[].Source`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Docker Container Discovery (by Names)|<p>-</p>|`Zabbix agent`|system.run[echo "{ \"data\": `curl -s --unix-socket /var/run/docker.sock http:/containers/json| {$JQ_DOCKER_NAMES}` }"]<p>Update: {$DISCOVERY_UPDATE_INTERVAL}</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Container: {#NAMES}|<p>-</p>|`Zabbix agent`|system.run[curl -s --unix-socket /var/run/docker.sock http:/containers{#NAMES}/json| jq .Created]<p>Update: 30s</p>|
|Container: {#NAMES} - Status|<p>-</p>|`Zabbix agent`|system.run[curl -s --unix-socket /var/run/docker.sock http:/containers{#NAMES}/json| jq .State.Status]<p>Update: 30s</p>|
|Container: {#NAMES} - Env.Branch|<p>-</p>|`Zabbix agent`|system.run[curl -s --unix-socket /var/run/docker.sock http:/containers{#NAMES}/json| {$JQ_DOCKER_ENV_BRANCH}]<p>Update: 30s</p>|
|Container: {#NAMES} - Mounts|<p>-</p>|`Zabbix agent`|system.run[curl -s --unix-socket /var/run/docker.sock http:/containers{#NAMES}/json| {$JQ_DOCKER_MOUNTS}]<p>Update: 30s</p>|
|Container: {#NAMES} - Volumes|<p>-</p>|`Zabbix agent`|system.run[curl -s --unix-socket /var/run/docker.sock http:/containers{#NAMES}/json| {$JQ_DOCKER_VOLUMES}]<p>Update: 30s</p>|
## Triggers

There are no triggers in this template.

# Template..Docker.OSLinux.ShortTermContainers

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$DISCOVERY_TTL}|<p>-</p>|`1d`|Text macro|
|{$DISCOVERY_UPDATE_INTERVAL}|<p>-</p>|`60s`|Text macro|
|{$ITEM_HISTORY_STORAGE_PERIOD}|<p>-</p>|`14d`|Text macro|
|{$ITEM_UPDATE_INTERVAL}|<p>-</p>|`300s`|Text macro|
|{$NETWORK_ITEM_UPDATE_INTERVAL}|<p>-</p>|`60s`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Docker Container Discovery (by Names)|<p>-</p>|`Zabbix agent`|system.run[echo "{ \"data\": `curl -s --unix-socket /var/run/docker.sock http:/containers/json| {$JQ_DOCKER_NAMES}` }"]<p>Update: {$DISCOVERY_UPDATE_INTERVAL}</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Container: {#NAMES}|<p>-</p>|`Zabbix agent`|system.run[curl -s --unix-socket /var/run/docker.sock http:/containers{#NAMES}/json| jq .Created]<p>Update: 30s</p>|
|Container: {#NAMES} - Status|<p>-</p>|`Zabbix agent`|system.run[curl -s --unix-socket /var/run/docker.sock http:/containers{#NAMES}/json| jq .State.Status]<p>Update: 30s</p>|
|Container: {#NAMES} - Env.Branch|<p>-</p>|`Zabbix agent`|system.run[curl -s --unix-socket /var/run/docker.sock http:/containers{#NAMES}/json| {$JQ_DOCKER_ENV_BRANCH}]<p>Update: 30s</p>|
|Container: {#NAMES} - Mounts|<p>-</p>|`Zabbix agent`|system.run[curl -s --unix-socket /var/run/docker.sock http:/containers{#NAMES}/json| {$JQ_DOCKER_MOUNTS}]<p>Update: 30s</p>|
|Container: {#NAMES} - Volumes|<p>-</p>|`Zabbix agent`|system.run[curl -s --unix-socket /var/run/docker.sock http:/containers{#NAMES}/json| {$JQ_DOCKER_VOLUMES}]<p>Update: 30s</p>|
## Triggers

There are no triggers in this template.

