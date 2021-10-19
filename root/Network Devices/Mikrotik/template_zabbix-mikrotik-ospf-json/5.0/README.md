# Mikrotik - OSPF LLD

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$MIKROTIK_SSH_PASS}|<p>-</p>|`11111`|Text macro|
|{$MIKROTIK_SSH_PORT}|<p>-</p>|`22`|Text macro|
|{$MIKROTIK_SSH_USER}|<p>-</p>|`mikmon`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|OSPF - Neighbor|<p>-</p>|`SSH agent`|ssh.run[OSPF - Neighbor,,{$MIKROTIK_SSH_PORT},]<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|OSPF - Neighbor JSON|<p>-</p>|`SSH agent`|ssh.run[OSPF - Neighbor JSON,,{$MIKROTIK_SSH_PORT},]<p>Update: {$UPDATEINT}</p>|
|{#NUMBER}-{#ROUTERID}-{#ADDRESS}-{#INTERFACE}-state|<p>-</p>|`Dependent item`|state.[{#NUMBER},{#ROUTERID},{#ADDRESS},{#INTERFACE}]<p>Update: 0</p>|
|{#NUMBER}-{#ROUTERID}-{#ADDRESS}-{#INTERFACE}-statechange|<p>-</p>|`Dependent item`|statechange.[{#NUMBER},{#ROUTERID},{#ADDRESS},{#INTERFACE}]<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|OSPF Neighbor ({#NUMBER}-{#ROUTERID}-{#ADDRESS}-{#INTERFACE}) is not FULL|<p>-</p>|disaster|
|OSPF Neighbor ({#NUMBER}-{#ROUTERID}-{#ADDRESS}-{#INTERFACE}) state change  is to high|<p>-</p>|disaster|
