# Template App WireGuard

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
|WireGuard Peers Discovery|<p>-</p>|`Zabbix agent`|wg.list.discovery[PEERS]<p>Update: 3600s</p>|
|WireGuard Interfaces Discovery|<p>-</p>|`Zabbix agent`|wg.list.discovery[INTERFACES]<p>Update: 3600s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Endpoint IP address for peer {#PEER}... on {#INTERFACE}|<p>-</p>|`Zabbix agent`|wg.endpoint.address[{#PEER}]<p>Update: 15m</p>|
|Allowed IPs for peer {#PEER}... on {#INTERFACE}|<p>-</p>|`Zabbix agent`|wg.endpoint.allowedips[{#PEER}]<p>Update: 30m</p>|
|Last handshake for peer {#PEER}... on {#INTERFACE}|<p>-</p>|`Zabbix agent`|wg.endpoint.handshake[{#PEER}]<p>Update: 10m</p>|
|Keepalive enabled for peer {#PEER}... on {#INTERFACE}|<p>-</p>|`Zabbix agent`|wg.endpoint.keepalive[{#PEER}]<p>Update: 30m</p>|
|Endpoint port for peer {#PEER}... on {#INTERFACE}|<p>-</p>|`Zabbix agent`|wg.endpoint.port[{#PEER}]<p>Update: 15m</p>|
|Incoming traffic for peer {#PEER}... on {#INTERFACE}|<p>-</p>|`Zabbix agent`|wg.endpoint.transferdown[{#PEER}]<p>Update: 5m</p>|
|Outgoing traffic for peer {#PEER}... on {#INTERFACE}|<p>-</p>|`Zabbix agent`|wg.endpoint.transferup[{#PEER}]<p>Update: 5m</p>|
|Firewall mark enabled on {#WGINTERFACE}|<p>-</p>|`Zabbix agent`|wg.fw.mark[{#WGINTERFACE}]<p>Update: 60m</p>|
|Active peers on {#WGINTERFACE}|<p>-</p>|`Zabbix agent`|wg.peers.connected[{#WGINTERFACE}]<p>Update: 15m</p>|
|Total peers on {#WGINTERFACE}|<p>-</p>|`Zabbix agent`|wg.peers.count[{#WGINTERFACE}]<p>Update: 30m</p>|
|Port used on {#WGINTERFACE}|<p>-</p>|`Zabbix agent`|wg.port.used[{#WGINTERFACE}]<p>Update: 60m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Allowed IPs list altered for {#PEER}... peer on {HOST.NAME}|<p>-</p>|high|
|Connection port changed for {#PEER}... peer on {HOST.NAME}|<p>-</p>|information|
|High incoming traffic for {#PEER}... peer on {HOST.NAME}|<p>-</p>|average|
|High outgoing traffic for {#PEER}... peer on {HOST.NAME}|<p>-</p>|average|
|IP address changed for {#PEER}... peer on {HOST.NAME}|<p>-</p>|information|
|Keepalived changed for {#PEER}... peer on {HOST.NAME}|<p>-</p>|warning|
|Unreachable {#PEER}... peer on {HOST.NAME} for 30 minutes|<p>-</p>|high|
|Connection port changed on {#WGINTERFACE} {HOST.NAME} VPN|<p>-</p>|warning|
|Firewall mark changed on {#WGINTERFACE} {HOST.NAME} VPN|<p>-</p>|warning|
|Less clients connected on {#WGINTERFACE} {HOST.NAME} VPN|<p>-</p>|information|
|More clients connected on {#WGINTERFACE} {HOST.NAME} VPN|<p>-</p>|information|
|Peers added on {#WGINTERFACE} {HOST.NAME} VPN|<p>-</p>|information|
|Peers removed on {#WGINTERFACE} {HOST.NAME} VPN|<p>-</p>|information|
