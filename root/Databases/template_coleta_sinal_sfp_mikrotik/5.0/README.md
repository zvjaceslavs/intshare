# Sinal SFP Mikrotik

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
|Network Interfaces Discovery|<p>-</p>|`SNMP agent`|net.if2.discovery<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Interface {#IFNAME}({#IFALIAS}): RX Power|<p>-</p>|`SNMP agent`|enterprises.[RXenterprises.{#SNMPINDEX}]<p>Update: 30s</p>|
|Interface {#IFNAME}({#IFALIAS}): TX Power|<p>-</p>|`SNMP agent`|enterprises.[TXenterprises.{#SNMPINDEX}]<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Interface {#IFNAME}({#IFALIAS}): Sinal RX Está acima de -25dBm|<p>-</p>|warning|
|Interface {#IFNAME}({#IFALIAS}): Sinal TX Está acima de -25dBm|<p>-</p>|warning|
