# Fortigate HA Sync

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
|Ha Stats Sync Status|<p>FgHaStatsSyncStatusType (INTEGER) {unsynchronized(0), synchronized(1) }</p>|`SNMP agent`|fgHaStatsSyncStatus<p>Update: 600s</p>|
|Ha System Mode|<p>FgHaMode (INTEGER) {standalone(1), activeActive(2), activePassive(3) }</p>|`SNMP agent`|fgHaSystemMode<p>Update: 3600s</p>|
|Ha Group Name|<p>-</p>|`SNMP agent`|fgHaGroupName<p>Update: 1d</p>|
|Ha Auto Sync|<p>FnBoolState (INTEGER) {disabled (1), enabled (2)</p>|`SNMP agent`|fgHaAutoSync<p>Update: 1h</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|HA - {HOST.NAME} - UnSynchronized|<p>-</p>|disaster|
|HA Auto Sync- {HOST.NAME} - Disable|<p>-</p>|high|
