# Template TeraStation SNMPV2

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
|Available memory|<p>Available memory is defined as free+cached+buffers memory.</p>|`SNMP agent`|memAvailReal.0<p>Update: 1m</p>|
|CPU idle|<p>-</p>|`SNMP agent`|ssCpuRawIdle.0<p>Update: 1m</p>|
|CPU nice|<p>-</p>|`SNMP agent`|ssCpuRawNice.0<p>Update: 1m</p>|
|CPU system|<p>-</p>|`SNMP agent`|ssCpuRawSystem.0<p>Update: 1m</p>|
|CPU user|<p>-</p>|`SNMP agent`|ssCpuRawUser.0<p>Update: 1m</p>|
|Processor load (15 min average per core)|<p>The processor load is calculated as system CPU load divided by number of CPU cores.</p>|`SNMP agent`|laLoad.3<p>Update: 1m</p>|
|Processor load (5 min average per core)|<p>The processor load is calculated as system CPU load divided by number of CPU cores.</p>|`SNMP agent`|laLoad.2<p>Update: 1m</p>|
|Incoming network traffic on eth0|<p>-</p>|`SNMP agent`|fInOctets.1<p>Update: 1m</p>|
|Buffer memory|<p>-</p>|`SNMP agent`|memBuffer.0<p>Update: 1m</p>|
|Processor load (1 min average per core)|<p>The processor load is calculated as system CPU load divided by number of CPU cores.</p>|`SNMP agent`|laLoad.1<p>Update: 30s</p>|
|Host name|<p>System host name.</p>|`SNMP agent`|sysName.0<p>Update: 1m</p>|
|Outgoing network traffic on eth0|<p>-</p>|`SNMP agent`|net.if.out[eth0]<p>Update: 1m</p>|
|Cached memory|<p>-</p>|`SNMP agent`|memCached.0<p>Update: 1m</p>|
|Shared memory|<p>-</p>|`SNMP agent`|memShared.0<p>Update: 1m</p>|
|Total memory|<p>-</p>|`SNMP agent`|memTotalReal.0<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Processor load is too high on {Template TeraStation SNMPV2:system.hostname.last()}|<p>-</p>|warning|
