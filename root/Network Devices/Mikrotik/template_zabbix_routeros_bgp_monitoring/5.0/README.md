# Template RouterOS BGP

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$ROUTEROS_PASSWORD}|<p>-</p>|`zabbix_discovery`|Text macro|
|{$ROUTEROS_USERNAME}|<p>-</p>|`zabbix`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|BGP peer names|<p>-</p>|`External check`|bgp_peer_names.sh["{HOST.CONN}","{$ROUTEROS_USERNAME}","{$ROUTEROS_PASSWORD}"]<p>Update: 10</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|BGP peer {#BGP_PEER_NAME} state|<p>-</p>|`External check`|bgp_peer_field.sh["{HOST.CONN}", "{$ROUTEROS_USERNAME}", "{$ROUTEROS_PASSWORD}", {#BGP_PEER_NAME}, "state"]<p>Update: 5</p>|
|BGP peer {#BGP_PEER_NAME} uptime|<p>-</p>|`External check`|bgp_peer_field.sh["{HOST.CONN}", "{$ROUTEROS_USERNAME}", "{$ROUTEROS_PASSWORD}", {#BGP_PEER_NAME}, "uptime"]<p>Update: 5</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|BGP peer {#BGP_PEER_NAME} state is not established|<p>-</p>|warning|
