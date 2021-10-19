# Mikrotik - BGP LLD

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$MIKROTIK_SSH_PASS}|<p>-</p>|`password`|Text macro|
|{$MIKROTIK_SSH_PORT}|<p>-</p>|`22`|Text macro|
|{$MIKROTIK_SSH_USER}|<p>-</p>|`admin`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|BGP - Peers|<p>-</p>|`SSH agent`|ssh.run[,,{$MIKROTIK_SSH_PORT},]<p>Update: 3600s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|{#PEERNAME} ({#REMOTEAS}) - Prefix|<p>-</p>|`SSH agent`|ssh.run[{#PEERNAME}-prefix,,{$MIKROTIK_SSH_PORT},]<p>Update: 60s</p>|
|{#PEERNAME} ({#REMOTEAS}) - Status|<p>-</p>|`SSH agent`|ssh.run[{#PEERNAME}-status,,{$MIKROTIK_SSH_PORT},]<p>Update: 60s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Peer {#PEERNAME} not established|<p>-</p>|disaster|
