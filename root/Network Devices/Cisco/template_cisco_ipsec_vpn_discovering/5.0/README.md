# Cisco IPsec VPN discovering

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
|VPN Tunnels|<p>-</p>|`SNMP agent`|cikeTunActiveTime<p>Update: 10m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Active time of  tunnel {#LOCAL}---{#REMOTE}|<p>-</p>|`SNMP agent`|cikeTunActiveTime[{#LOCAL}---{#REMOTE}]<p>Update: 1m</p>|
|In bytes of  tunnel {#LOCAL}---{#REMOTE}|<p>-</p>|`SNMP agent`|cikeTunInOctets[{#LOCAL}---{#REMOTE}]<p>Update: 1m</p>|
|In packets of  tunnel {#LOCAL}---{#REMOTE}|<p>-</p>|`SNMP agent`|cikeTunInPkts[{#LOCAL}---{#REMOTE}]<p>Update: 1m</p>|
|Out bytes of  tunnel {#LOCAL}---{#REMOTE}|<p>-</p>|`SNMP agent`|cikeTunOutOctets[{#LOCAL}---{#REMOTE}]<p>Update: 1m</p>|
|Out packets of  tunnel {#LOCAL}---{#REMOTE}|<p>-</p>|`SNMP agent`|cikeTunOutPkts[{#LOCAL}---{#REMOTE}]<p>Update: 1m</p>|
|Status of  tunnel {#LOCAL}---{#REMOTE}|<p>-</p>|`SNMP agent`|cikeTunStatus[{#LOCAL}---{#REMOTE}]<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Status of tunnel {#LOCAL}---{#REMOTE} not up or no data received|<p>-</p>|warning|
