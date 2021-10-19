# Juniper BGP

## Overview

Juniper BGP template
====================


A template to pull BGP peer data from SNMP for Zabbix. Should work with any Juniper device that supports `BGP4-V2-MIB-JUNIPER`


Installing
----------


Import the template file under Configuration > Templates > Import.


Item prototypes (per peer)
--------------------------


* Administrative status
* Established time
* IPv4 prefixes accepted
* IPv4 prefixes advertised
* IPv4 prefixes received
* IPv4 prefixes rejected
* IPv6 prefixes accepted
* IPv6 prefixes advertised
* IPv6 prefixes received
* IPv6 prefixes rejected
* Last received error
* Last sent error
* Peer state


Trigger prototypes (per peer)
-----------------------------


* Peer down
* Peer losing more than 20% of received prefixes


Value maps
----------


* BGP peer administrative status
* BGP peer state


About
-----


I wanted to monitor BGP peers using Zabbix without using any external scripts


Source: <https://github.com/bpbp-boop/zabbix-juniper-bgp>


Issues and pull requests welcome


 

## Author

Boden Garman

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|BGP peer discovery|<p>-</p>|`SNMP agent`|net.bgp.peer.discovery<p>Update: 10m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Last received error ({#BGPPEERREMOTEADDRESS}) (LLD)|<p>-</p>|`SNMP agent`|net.bgp.peer.error.received[{#BGPEERREMOTEAS}, {#BGPPEERREMOTEADDRESS}]<p>Update: 5m</p>|
|Last sent error ({#BGPPEERREMOTEADDRESS}) (LLD)|<p>-</p>|`SNMP agent`|net.bgp.peer.error.sent[{#BGPEERREMOTEAS}, {#BGPPEERREMOTEADDRESS}]<p>Update: 5m</p>|
|IPv4 prefixes accepted ({#BGPPEERREMOTEADDRESS}) (LLD)|<p>-</p>|`SNMP agent`|net.bgp.peer.prefixes.ipv4.accepted[{#BGPEERREMOTEAS}, {#BGPPEERREMOTEADDRESS}]<p>Update: 2m</p>|
|IPv4 prefixes advertised ({#BGPPEERREMOTEADDRESS}) (LLD)|<p>-</p>|`SNMP agent`|net.bgp.peer.prefixes.ipv4.advertised[{#BGPEERREMOTEAS}, {#BGPPEERREMOTEADDRESS}]<p>Update: 2m</p>|
|IPv4 prefixes received ({#BGPPEERREMOTEADDRESS}) (LLD)|<p>-</p>|`SNMP agent`|net.bgp.peer.prefixes.ipv4.received[{#BGPEERREMOTEAS}, {#BGPPEERREMOTEADDRESS}]<p>Update: 2m</p>|
|IPv4 prefixes rejected ({#BGPPEERREMOTEADDRESS}) (LLD)|<p>-</p>|`SNMP agent`|net.bgp.peer.prefixes.ipv4.rejected[{#BGPEERREMOTEAS}, {#BGPPEERREMOTEADDRESS}]<p>Update: 2m</p>|
|IPv6 prefixes accepted ({#BGPPEERREMOTEADDRESS}) (LLD)|<p>-</p>|`SNMP agent`|net.bgp.peer.prefixes.ipv6.accepted[{#BGPEERREMOTEAS}, {#BGPPEERREMOTEADDRESS}]<p>Update: 2m</p>|
|IPv6 prefixes advertised ({#BGPPEERREMOTEADDRESS}) (LLD)|<p>-</p>|`SNMP agent`|net.bgp.peer.prefixes.ipv6.advertised[{#BGPEERREMOTEAS}, {#BGPPEERREMOTEADDRESS}]<p>Update: 2m</p>|
|IPv6 prefixes received ({#BGPPEERREMOTEADDRESS}) (LLD)|<p>-</p>|`SNMP agent`|net.bgp.peer.prefixes.ipv6.received[{#BGPEERREMOTEAS}, {#BGPPEERREMOTEADDRESS}]<p>Update: 2m</p>|
|IPv6 prefixes rejected ({#BGPPEERREMOTEADDRESS}) (LLD)|<p>-</p>|`SNMP agent`|net.bgp.peer.prefixes.ipv6.rejected[{#BGPEERREMOTEAS}, {#BGPPEERREMOTEADDRESS}]<p>Update: 2m</p>|
|Peer state ({#BGPPEERREMOTEADDRESS}) (LLD)|<p>-</p>|`SNMP agent`|net.bgp.peer.state[{#BGPEERREMOTEAS}, {#BGPPEERREMOTEADDRESS}]<p>Update: 1m</p>|
|Administrative status ({#BGPPEERREMOTEADDRESS}) (LLD)|<p>-</p>|`SNMP agent`|net.bgp.peer.status[{#BGPEERREMOTEAS}, {#BGPPEERREMOTEADDRESS}]<p>Update: 5m</p>|
|Established time ({#BGPPEERREMOTEADDRESS}) (LLD)|<p>-</p>|`SNMP agent`|net.bgp.peer.uptime[{#BGPEERREMOTEAS}, {#BGPPEERREMOTEADDRESS}]<p>Update: 5m</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|{HOST.HOST} BGP peer {#BGPPEERREMOTEADDRESS} (AS{#BGPEERREMOTEAS}) has lost more than 20% of received prefixes|<p>-</p>|<p>**Expression**: last(/Juniper BGP/net.bgp.peer.state[{#BGPEERREMOTEAS}, {#BGPPEERREMOTEADDRESS}])=6 and last(/Juniper BGP/net.bgp.peer.prefixes.ipv4.received[{#BGPEERREMOTEAS}, {#BGPPEERREMOTEADDRESS}])<0.8*avg(/Juniper BGP/net.bgp.peer.prefixes.ipv4.received[{#BGPEERREMOTEAS}, {#BGPPEERREMOTEADDRESS}],1d)</p><p>**Recovery expression**: </p>|warning|
|{HOST.HOST} BGP peer {#BGPPEERREMOTEADDRESS} (AS{#BGPEERREMOTEAS}) is DOWN|<p>-</p>|<p>**Expression**: last(/Juniper BGP/net.bgp.peer.state[{#BGPEERREMOTEAS}, {#BGPPEERREMOTEADDRESS}],#3)<>6 and last(/Juniper BGP/net.bgp.peer.status[{#BGPEERREMOTEAS}, {#BGPPEERREMOTEADDRESS}])=2</p><p>**Recovery expression**: </p>|high|
|{HOST.HOST} BGP peer {#BGPPEERREMOTEADDRESS} (AS{#BGPEERREMOTEAS}) has lost more than 20% of received prefixes (LLD)|<p>-</p>|<p>**Expression**: last(/Juniper BGP/net.bgp.peer.state[{#BGPEERREMOTEAS}, {#BGPPEERREMOTEADDRESS}])=6 and last(/Juniper BGP/net.bgp.peer.prefixes.ipv4.received[{#BGPEERREMOTEAS}, {#BGPPEERREMOTEADDRESS}])<0.8*avg(/Juniper BGP/net.bgp.peer.prefixes.ipv4.received[{#BGPEERREMOTEAS}, {#BGPPEERREMOTEADDRESS}],1d)</p><p>**Recovery expression**: </p>|warning|
|{HOST.HOST} BGP peer {#BGPPEERREMOTEADDRESS} (AS{#BGPEERREMOTEAS}) is DOWN (LLD)|<p>-</p>|<p>**Expression**: last(/Juniper BGP/net.bgp.peer.state[{#BGPEERREMOTEAS}, {#BGPPEERREMOTEADDRESS}],#3)<>6 and last(/Juniper BGP/net.bgp.peer.status[{#BGPEERREMOTEAS}, {#BGPPEERREMOTEADDRESS}])=2</p><p>**Recovery expression**: </p>|high|
