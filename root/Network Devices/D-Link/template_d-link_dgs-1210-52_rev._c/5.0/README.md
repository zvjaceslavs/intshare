# Template SNMP D-link DGS-1210-52 revC

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
|Network Interfaces|<p>-</p>|`SNMP agent`|ifIndex<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Device description|<p>A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software. It is mandatory that this only contain printable ASCII characters.</p>|`SNMP agent`|sysDescr<p>Update: 3600</p>|
|Device firmware version|<p>Version number of the Firmware.</p>|`SNMP agent`|sysFirmwareVersion<p>Update: 3600</p>|
|Device location|<p>The physical location of this node (e.g., `telephone closet, 3rd floor').</p>|`SNMP agent`|sysLocationName<p>Update: 3600</p>|
|Device name|<p>An administratively-assigned name for this managed node. By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysName<p>Update: 3600</p>|
|Device hardware version|<p>Version number of the Hardware.</p>|`SNMP agent`|sysHardwareVersion<p>Update: 3600</p>|
|Device uptime|<p>The time since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|sysUpTime<p>Update: 300</p>|
|Alias of interface $1|<p>-</p>|`SNMP agent`|ifAlias[{#SNMPVALUE}]<p>Update: 3600</p>|
|Description of interface $1|<p>A textual string containing information about the interface. This string should include the name of the manufacturer, the product name and the version of the interface hardware/software.</p>|`SNMP agent`|ifDescr[{#SNMPVALUE}]<p>Update: 3600</p>|
|Inbound errors on interface $1|<p>The number of inbound packets that contained errors preventing them from being deliverable to a higher-layer protocol.</p>|`SNMP agent`|ifInErrors[{#SNMPVALUE}]<p>Update: 3600</p>|
|Incoming traffic on interface $1|<p>The total number of octets received on the interface, including framing characters.</p>|`SNMP agent`|ifInOctets[{#SNMPVALUE}]<p>Update: 300</p>|
|Operational status of interface $1|<p>The current operational state of the interface. The testing(3) state indicates that no operational packets can be passed.</p>|`SNMP agent`|ifOperStatus[{#SNMPVALUE}]<p>Update: 300</p>|
|Outgoing traffic on interface $1|<p>The total number of octets transmitted out of the interface, including framing characters.</p>|`SNMP agent`|ifOutOctets[{#SNMPVALUE}]<p>Update: 300</p>|
|Speed of interface $1|<p>An estimate of the interface's current bandwidth in bits per second. For interfaces which do not vary in bandwidth or for those where no accurate estimation can be made, this object should contain the nominal bandwidth.</p>|`SNMP agent`|ifSpeed[{#SNMPVALUE}]<p>Update: 3600</p>|
|Uptime of interface $1|<p>The value of sysUpTime at the time the interface entered its current operational state. If the current state was entered prior to the last re-initialization of the local network management subsystem, then this object contains a zero value.</p>|`SNMP agent`|ifLastChange[{#SNMPVALUE}]<p>Update: 3600</p>|
## Triggers

There are no triggers in this template.

