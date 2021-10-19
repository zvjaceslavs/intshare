# TCP/UDP Stats Windows

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
|TCP Sockets in ESTABLISHED Count|<p>-</p>|`Zabbix agent`|sockstat.tcp.inuse.count<p>Update: 60</p>|
|TCP Sockets in LISTENING Count|<p>-</p>|`Zabbix agent`|sockstat.tcp.allocated.count<p>Update: 60</p>|
|TCP Sockets in CLOSE_WAIT Count|<p>-</p>|`Zabbix agent`|sockstat.tcp.orphan.count<p>Update: 60</p>|
|TCP Sockets in CLOSE_WAIT|<p>-</p>|`Zabbix agent`|sockstat.tcp.orphan<p>Update: 60</p>|
|TCP Sockets in LISTENING|<p>-</p>|`Zabbix agent`|sockstat.tcp.allocated<p>Update: 60</p>|
|TCP Sockets In ESTABLISHED|<p>TCP sockets currently in use on the system.</p>|`Zabbix agent`|sockstat.tcp.inuse<p>Update: 60</p>|
|Total Sockets|<p>Number of open sockets</p>|`Zabbix agent`|sockstat.sockets<p>Update: 60</p>|
|UDP Sockets In Use Count|<p>-</p>|`Zabbix agent`|sockstat.udp.inuse.count<p>Update: 60</p>|
|UDP Sockets In Use|<p>-</p>|`Zabbix agent`|sockstat.udp.inuse<p>Update: 60</p>|
|TCP Sockets in TIME_WAIT Count|<p>-</p>|`Zabbix agent`|sockstat.tcp.timewait.count<p>Update: 60</p>|
|TCP Sockets in TIME_WAIT|<p>-</p>|`Zabbix agent`|sockstat.tcp.timewait<p>Update: 60</p>|
## Triggers

There are no triggers in this template.

