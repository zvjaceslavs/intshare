# Template SNMP Arista BGP4

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

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Arista BGP4|<p>-</p>|`SNMP agent`|arista-snmp-discovery<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Administrative status $2|<p>-</p>|`SNMP agent`|arista-bgp-adminstatus[{#ASNUM}, {#PEERNAME}]<p>Update: 1m</p>|
|Oper status $2|<p>-</p>|`SNMP agent`|arista-bgp-operstatus[{#ASNUM}, {#PEERNAME}]<p>Update: 1m</p>|
|Peer accepted Prefixes $2|<p>-</p>|`SNMP agent`|arista-bgp-prf-acc[{#ASNUM}, {#PEERNAME}]<p>Update: 5m</p>|
|Peer recieved Prefixes $2|<p>-</p>|`SNMP agent`|arista-bgp-prf-rcv[{#ASNUM}, {#PEERNAME}]<p>Update: 5m</p>|
|Peer announced Prefixes $2|<p>-</p>|`SNMP agent`|arista-bgp-prf-snd[{#ASNUM}, {#PEERNAME}]<p>Update: 5m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|BGP status not "Established" for {#ASNUM}, {#PEERNAME}|<p>-</p>|disaster|
