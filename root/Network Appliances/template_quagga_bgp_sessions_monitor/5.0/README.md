# Quagga BGP

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
|BGP discovery|<p>-</p>|`Zabbix agent`|bgpdiscovery<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Peer {#BGPPEER}|<p>-</p>|`Zabbix agent`|bgpmon[{#BGPPEER}]<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|BGP session with {#BGPPEER} is down|<p>Bgp session is down</p>|warning|
