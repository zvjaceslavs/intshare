# Template MD Soft RAID

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
|MD Discovery|<p>-</p>|`Zabbix agent`|md.discover<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|MD $1 degraded|<p>Get number of degraded disks</p>|`Zabbix agent`|md.degraded[{#MDNAME}]<p>Update: 5m</p>|
|MD $1 raid disks|<p>Get number of all disks</p>|`Zabbix agent`|md.raid_disks[{#MDNAME}]<p>Update: 3600</p>|
|MD $1 sync action|<p>Get current sync action</p>|`Zabbix agent`|md.sync_action[{#MDNAME}]<p>Update: 300</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|MD {#MDNAME} in recovery mode on {HOST.NAME}|<p>-</p>|information|
|MD {#MDNAME} is degraded on {HOST.NAME}|<p>-</p>|high|
|MD {#MDNAME} number of disks changed on {HOST.NAME}|<p>-</p>|warning|
