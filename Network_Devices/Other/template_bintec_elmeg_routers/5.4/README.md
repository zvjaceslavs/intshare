# bintec Router

## Description

Template for routers from bintec elmeg Tested with RS353jv, be.IP plus and R1202

## Overview

Template for routers from bintec elmeg GmbH.


 


Features:


- Auto discovery of network interfaces


- Auto discovery of xDSL interfaces


- Auto discovery of PPPoE connections


- System health (CPU/Memory utilization, Uptime, Software Version)


- SIF status


- Current and max VPN connections


- DSL line information


- Status of VOIP-Trunk Line


Tested devices:


- RS353jv


- be.IP plus


- R1202


 


Data is collected via SNMP and the [bintec elmeg MIB](https://www.bintec-elmeg.com/en/downloads/tools/management-information-base-mib-fuer-snmp-manager/) should be installed on the Zabbix system.



## Author

Thorben Brinkmann

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$WANINTERFACE}|<p>The Wan interface</p>|``|Text macro|
## Template links

|Name|
|----|
|ICMP Ping|
## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|VPN peers discovery|<p>Discover IPSec Peers</p>|`SNMP agent`|vpn.peers.discovery<p>Update: 1h</p>|
|Sensors discovery|<p>-</p>|`SNMP agent`|sensors.discovery<p>Update: 1m</p>|
|VoIP Provider Discovery|<p>-</p>|`SNMP agent`|voip.provider.discovery<p>Update: 1h</p>|
|PPPoE Discovery|<p>-</p>|`SNMP agent`|pppoe.discovery<p>Update: 10m</p>|
|Network interfaces|<p>-</p>|`SNMP agent`|net.if.discovery<p>Update: 1h</p>|
|VPN License discovery|<p>-</p>|`SNMP agent`|lic.vpn.discovery<p>Update: 1h</p>|
|xDSL interfaces|<p>Discover xDSL Interfaces on bintec Router</p>|`SNMP agent`|dsl.if.discovery<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Max sessions|<p>-</p>|`SNMP agent`|sif.maxsessions<p>Update: 1h</p>|
|Software version|<p>-</p>|`SNMP agent`|system.swversion<p>Update: 1h</p>|
|Memory utilization|<p>-</p>|`Calculated`|memory.utilization<p>Update: 1m</p>|
|System description|<p>-</p>|`SNMP agent`|system.description<p>Update: 1h</p>|
|CPU utilization|<p>LoadIDLE60s: Percentage of idle time measured for the last 60 seconds.</p>|`SNMP agent`|cpu.utilization<p>Update: 1m</p>|
|Uptime|<p>-</p>|`SNMP agent`|system.uptime<p>Update: 1m</p>|
|Current sessions|<p>-</p>|`SNMP agent`|sif.currsessions<p>Update: 1m</p>|
|Memory in use|<p>-</p>|`SNMP agent`|memory.inuse<p>Update: 1m</p>|
|SIF Status|<p>Status of the Stateful inspection firewall (SIF)</p>|`SNMP agent`|sif.status<p>Update: 1h</p>|
|Memory total|<p>-</p>|`SNMP agent`|memory.total<p>Update: 15m</p>|
|Flash Memory|<p>Onboard Flash memory</p>|`SNMP agent`|memory.flash<p>Update: 15m</p>|
|Status of VPN connection {#PEERDESCR}|<p>-</p>|`SNMP agent`|vpn.peers.status[{#PEERDESCR}]<p>Update: 1m</p><p>LLD</p>|
|{#SENSORDESCR}-Sensor|<p>-</p>|`SNMP agent`|sensors[{#SENSORID}.{#SENSORDESCR}]<p>Update: 1m</p><p>LLD</p>|
|Operational Status VoIP Trunk Line {#DESCR}|<p>-</p>|`SNMP agent`|voip.provider.operstat[{#DESCR}]<p>Update: 1m</p><p>LLD</p>|
|PPPoE Age {#PPPOEDESCR}|<p>-</p>|`SNMP agent`|pppoe.age[{#PPPOEDESCR}]<p>Update: 1m</p><p>LLD</p>|
|PPPoE State {#PPPOEDESCR}|<p>-</p>|`SNMP agent`|pppoe.state[{#PPPOEDESCR}]<p>Update: 1m</p><p>LLD</p>|
|Incoming traffic on interface {#IFDESCR}|<p>-</p>|`SNMP agent`|ifInOctets[{#IFDESCR}]<p>Update: 1m</p><p>LLD</p>|
|Outgoing traffic on interface {#IFDESCR}|<p>-</p>|`SNMP agent`|ifOutOctets[{#IFDESCR}]<p>Update: 1m</p><p>LLD</p>|
|IP Address {#IFDESCR}|<p>-</p>|`SNMP agent`|network.ip[{#IFDESCR}]<p>Update: 5m</p><p>LLD</p>|
|IPSec Current Connections|<p>-</p>|`SNMP agent`|vpn.ipsec.currconn[{#LICID}]<p>Update: 1m</p><p>LLD</p>|
|IPSec Max Connections|<p>-</p>|`SNMP agent`|vpn.ipsec.maxconn[{#LICID}]<p>Update: 1h</p><p>LLD</p>|
|xDSL Downstream Attenuation|<p>-</p>|`SNMP agent`|xdsl.downstream.attenuation[{#IFID}]<p>Update: 1h</p><p>LLD</p>|
|xDSL Downstream Max. attainable rate|<p>xDSL Max attainable downstream rate</p>|`SNMP agent`|xdsl.downstream.max[{#IFID}]<p>Update: 1h</p><p>LLD</p>|
|xDSL Downstream|<p>-</p>|`SNMP agent`|xdsl.downstream[{#IFID}]<p>Update: 5m</p><p>LLD</p>|
|xDSL Operational Status|<p>-</p>|`SNMP agent`|xdsl.operstatus[{#IFID}]<p>Update: 1m</p><p>LLD</p>|
|xDSL Type|<p>-</p>|`SNMP agent`|xdsl.type[{#IFID}]<p>Update: 1h</p><p>LLD</p>|
|xDSL Upstream Attenuation|<p>-</p>|`SNMP agent`|xdsl.upstream.attenuation[{#IFID}]<p>Update: 1h</p><p>LLD</p>|
|xDSL Upstream Max. attainable rate|<p>Max attainable upstream rate</p>|`SNMP agent`|xdsl.upstream.max[{#IFID}]<p>Update: 1h</p><p>LLD</p>|
|xDSL Upstream|<p>-</p>|`SNMP agent`|xdsl.upstream[{#IFID}]<p>Update: 5m</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|DSL interface went down|<p>The DSL interface is down</p>|<p>**Expression**: last(/bintec Router/xdsl.operstatus[{#IFID}])="down"</p><p>**Recovery expression**: last(/bintec Router/xdsl.operstatus[{#IFID}])="up"</p>|high|
|All IPSec connections in use|<p>All licensed connections are in use!</p>|<p>**Expression**: last(/bintec Router/vpn.ipsec.currconn[{#LICID}])=last(/bintec Router/vpn.ipsec.maxconn[{#LICID}])</p><p>**Recovery expression**: </p>|information|
|All IPSec connections in use (LLD)|<p>All licensed connections are in use!</p>|<p>**Expression**: last(/bintec Router/vpn.ipsec.currconn[{#LICID}])=last(/bintec Router/vpn.ipsec.maxconn[{#LICID}])</p><p>**Recovery expression**: </p>|information|
|DSL interface went down (LLD)|<p>The DSL interface is down</p>|<p>**Expression**: last(/bintec Router/xdsl.operstatus[{#IFID}])="down"</p><p>**Recovery expression**: last(/bintec Router/xdsl.operstatus[{#IFID}])="up"</p>|high|
