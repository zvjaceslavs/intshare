# Template_Opengear_Console

## Author

David Angelovich

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Network Interfaces|<p>-</p>|`SNMP agent`|opengear.snmp.if<p>Update: 3600</p>|
|Serial Ports|<p>-</p>|`SNMP agent`|opengear.snmp.serialport<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Firmware Version|<p>-</p>|`SNMP agent`|opengear.firmwareversion<p>Update: 3600</p>|
|Serial Number|<p>-</p>|`SNMP agent`|opengear.serialnumber<p>Update: 3600</p>|
|System Uptime|<p>System Uptime in centiseconds (hundredths of a second: 0.01s)</p>|`SNMP agent`|opengear.systemuptime<p>Update: 60</p>|
|Interface {#IFNAME} Inbound Discards (LLD)|<p>-</p>|`SNMP agent`|opengear.snmp.netif.indiscards[{#IFNAME}]<p>Update: 60</p>|
|Interface {#IFNAME} Inbound Errors (LLD)|<p>-</p>|`SNMP agent`|opengear.snmp.netif.inerr[{#IFNAME}]<p>Update: 60</p>|
|Interface {#IFNAME} Inbound Traffic (LLD)|<p>-</p>|`SNMP agent`|opengear.snmp.netif.in[{#IFNAME}]<p>Update: 60</p>|
|Interface {#IFNAME} SysUptime At Last Status Change (LLD)|<p>The value of sysUpTime at the time the interface entered its current operational state. If the current state was entered prior to the last re-initialization of the local network management subsystem, then this object contains a zero value.</p>|`SNMP agent`|opengear.snmp.netif.lastchange[{#IFNAME}]<p>Update: 60</p>|
|Interface {#IFNAME} Outbound Discards (LLD)|<p>-</p>|`SNMP agent`|opengear.snmp.netif.outdiscards[{#IFNAME}]<p>Update: 60</p>|
|Interface {#IFNAME} Outbound Errors (LLD)|<p>-</p>|`SNMP agent`|opengear.snmp.netif.outerr[{#IFNAME}]<p>Update: 60</p>|
|Interface {#IFNAME} Outbound Traffic (LLD)|<p>-</p>|`SNMP agent`|opengear.snmp.netif.out[{#IFNAME}]<p>Update: 60</p>|
|Interface {#IFNAME} Operational Status (LLD)|<p>-</p>|`SNMP agent`|opengear.snmp.netif.status[{#IFNAME}]<p>Update: 60</p>|
|Port {#SNMPINDEX} ({#PORTNAME}) Traffic Inbound (LLD)|<p>-</p>|`SNMP agent`|opengear.snmp.serialport.rxbytes[{#PORTNAME}]<p>Update: 300</p>|
|Port {#SNMPINDEX} ({#PORTNAME}) Speed (LLD)|<p>-</p>|`SNMP agent`|opengear.snmp.serialport.speed[{#PORTNAME}]<p>Update: 3600</p>|
|Port {#SNMPINDEX} ({#PORTNAME}) Traffic Outbound (LLD)|<p>-</p>|`SNMP agent`|opengear.snmp.serialport.txbytes[{#PORTNAME}]<p>Update: 300</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Status changed for interface {#IFNAME}|<p>This trigger detects changes based on the system uptime at the last interface change (which is stored for each interface). If the value is 0, it means the interface hasn't changed since before the last system boot.</p>|<p>**Expression**: {Template_Opengear_Console:opengear.snmp.netif.lastchange[{#IFNAME}].change()}>0 and {Template_Opengear_Console:opengear.snmp.netif.lastchange[{#IFNAME}].last()}<>0</p><p>**Recovery expression**: </p>|average|
|Status changed for interface {#IFNAME} (LLD)|<p>This trigger detects changes based on the system uptime at the last interface change (which is stored for each interface). If the value is 0, it means the interface hasn't changed since before the last system boot.</p>|<p>**Expression**: {Template_Opengear_Console:opengear.snmp.netif.lastchange[{#IFNAME}].change()}>0 and {Template_Opengear_Console:opengear.snmp.netif.lastchange[{#IFNAME}].last()}<>0</p><p>**Recovery expression**: </p>|average|
