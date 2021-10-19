# Template OpenVPN

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
|Discover Connected Users|<p>Discover the users that are connected to an OpenVPN Server</p>|`Zabbix agent`|thevpncompany.openvpn.client.discovery<p>Update: 1m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Data for {#ID}|<p>-</p>|`Zabbix agent`|thevpncompany.openvpn.client.if.size[{#ID}]<p>Update: 30s</p>|
## Triggers

There are no triggers in this template.

# Template VPN Server

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

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Total Network Usage|<p>-</p>|`Zabbix agent`|vpncompany.if.size<p>Update: 1m</p>|
## Triggers

There are no triggers in this template.

