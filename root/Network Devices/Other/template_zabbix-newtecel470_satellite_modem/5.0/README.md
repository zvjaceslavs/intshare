# Newtec

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
|estInputBitrate|<p>Extra performance stuff for Newtec satellite modems</p>|`SNMP agent`|estInputBitrate<p>Update: {$UPDATEINT}</p>|
|ntcDevsMod01SyIntTemp|<p>-</p>|`SNMP agent`|ntcDevsMod01SyIntTemp<p>Update: {$UPDATEINT}</p>|
|SNMP traps (fallback)|<p>-</p>|`SNMP trap`|snmptrap.fallback<p>Update: 0</p>|
|ethTxErrors|<p>Extra performance stuff for Newtec satellite modems</p>|`SNMP agent`|ethTxErrors<p>Update: {$UPDATEINT}</p>|
|ntcDevsMod01DmEstLinMar|<p>-</p>|`SNMP agent`|ntcDevsMod01DmEstLinMar<p>Update: {$UPDATEINT}</p>|
|ethRxCongested|<p>Extra performance stuff for Newtec satellite modems</p>|`SNMP agent`|ethRxCongested<p>Update: {$UPDATEINT}</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|High temperature on {HOST.NAME}|<p>-</p>|high|
