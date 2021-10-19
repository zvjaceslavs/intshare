# Mikrotik-Partion-Table

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$FIRSTPATFLAG:part0}|<p>-</p>|`1`|Text macro|
|{$FIRSTPATFLAG:part1}|<p>-</p>|`0`|Text macro|
|{$FIRSTPATFLAG:part2}|<p>-</p>|`0`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Mikrotik Partition Table|<p>-</p>|`SNMP agent`|mktPartitionTable.discovery<p>Update: 6h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|mtxrPartitionActive.[{#MKTPARTITIONNAME}]|<p>-</p>|`SNMP agent`|mtxrPartitionActive.[{#MKTPARTITIONNAME}]<p>Update: 1h</p>|
|mtxrPartitionRunning.[{#MKTPARTITIONNAME}]|<p>-</p>|`SNMP agent`|mtxrPartitionRunning.[{#MKTPARTITIONNAME}]<p>Update: 1h</p>|
|mtxrPartitionSize.[{#MKTPARTITIONNAME}]|<p>-</p>|`SNMP agent`|mtxrPartitionSize.[{#MKTPARTITIONNAME}]<p>Update: 1h</p>|
|mtxrPartitionVersion.[{#MKTPARTITIONNAME}]|<p>-</p>|`SNMP agent`|mtxrPartitionVersion.[{#MKTPARTITIONNAME}]<p>Update: 1h</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Partition {#MKTPARTITIONNAME} is not active on {HOST.NAME}|<p>Part0 is NOT ACTIVE on {HOST.NAME}! Backup partition is currently active! Please make partition part0 active and reboot device. Changes made to device may be lost.</p>|average|
|Partition {#MKTPARTITIONNAME} is not running on {HOST.NAME}|<p>Part0 is NOT RUNNING on {HOST.NAME}! Device currently operating off backup partition! Please make partition part0 active and reboot device. Changes made to device may be lost.</p>|average|
