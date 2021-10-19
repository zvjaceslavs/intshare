# Juniper-Optical-Interfaces

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
|Juniper Optical Interfaces Discovery|<p>-</p>|`SNMP agent`|net.if.optical.discovery<p>Update: 12h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Interface {#IFNAME}({#IFALIAS}): RxLaserPower|<p>-</p>|`SNMP agent`|jnxDomCurrentRxLaserPower[ifDescr.{#SNMPINDEX}]<p>Update: 60s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|({#IFALIAS}){#IFNAME}-RxLaser-lower-then-19db|<p>-</p>|warning|
