# Mikrotik-Queue-Tree

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
|Mikrotik Queue Tree Table|<p>-</p>|`SNMP agent`|mktQueueTreeTable.discovery<p>Update: 10m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|mtxrQueueTreeDropped.[{#MKTQUEUETREENAME}]|<p>-</p>|`SNMP agent`|mtxrQueueTreeDropped.[{#MKTQUEUETREENAME}]<p>Update: {$UPDATEINT}</p>|
|mtxrQueueTreeHCBytes.[{#MKTQUEUETREENAME}]|<p>-</p>|`SNMP agent`|mtxrQueueTreeHCBytes.[{#MKTQUEUETREENAME}]<p>Update: {$UPDATEINT}</p>|
|mtxrQueueTreePackets.[{#MKTQUEUETREENAME}]|<p>-</p>|`SNMP agent`|mtxrQueueTreePackets.[{#MKTQUEUETREENAME}]<p>Update: {$UPDATEINT}</p>|
## Triggers

There are no triggers in this template.

