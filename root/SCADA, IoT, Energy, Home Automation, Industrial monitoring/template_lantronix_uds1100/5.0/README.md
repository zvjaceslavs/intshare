# LANTRONIX-UDS1100

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMMUNITY}|<p>-</p>|`public`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Ethernet Output Bytes|<p>Counter output bytes (transmitted bytes)</p>|`SNMP agent`|eth.output.bytes<p>Update: 60s</p>|
|Ethernet Input Bytes|<p>Counter input bytes (received bytes)</p>|`SNMP agent`|eth.input.bytes<p>Update: 60s</p>|
|SNMP Check UDP 161|<p>-</p>|`Simple check`|net.udp.service[ntp,,161]<p>Update: 30s</p>|
|Ethernet Operational Status|<p>Operational Interface Status Value = 1 (UP) Value = 0 (DOWN)</p>|`SNMP agent`|eth.operational.status<p>Update: 30s</p>|
|Ethernet Interface Status|<p>Ethernet Interface status Value = 1 (UP) Value = 0 (DOWN)</p>|`SNMP agent`|eth.int.status<p>Update: 30s</p>|
|HTTP Check TCP 80|<p>HTTP Web Server Check</p>|`Simple check`|net.tcp.service[http]<p>Update: 60s</p>|
|TELNET Check TCP 9999|<p>Check admin console Telnet TCP-9999</p>|`Simple check`|net.tcp.service[tcp,,9999]<p>Update: 60s</p>|
|Operational Mode|<p>Operational modality Value: forwarding (1), --> acting as a router Value: notForwarding(2) --> NOT acting as a router Usually value for Lantronix is 2</p>|`SNMP agent`|operational.mode<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Lantronix - Admin Console not reacheable|<p>Check CLI Admin Console (TCP-9999)</p>|disaster|
|Lantronix - Change operational status|<p>Lantronix usually works as notForwaring (no router)</p>|average|
|Lantronix - Ethernet Interface Status is down|<p>{LANTRONIX-UDS1100:eth.int.status.last()}=0</p>|high|
|Lantronix - Ethernet Operation Status is down|<p>Ethernet Lantronix interface is not operational</p>|high|
|Lantronix - Web Console not reacheable|<p>Web console check HTTP (TCP-80)</p>|average|
