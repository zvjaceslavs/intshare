# Template SNMP Printer

## Overview

Good day!


This is my first attempt at creating a public template. As far as I'm aware, it should be operatable on multiple Dell laser printers. The model this was created on was the 'Dell 3115CN'. Confirmed models that are supported:


* Dell 3115CN
* Dell C1765NFW
* Dell 2145CN


I hope it'll be of use to some of you. It's been a fun project.



## Author

Thomas Roefs

## Macros used

There are no macros links in this template.

## Template links

|Name|
|----|
|Template SNMP Interfaces|
|Template SNMP Generic|
|Template SNMP Device|
## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Media Path|<p>-</p>|`SNMP agent`|prtMediaPathDescription<p>Update: 3600</p>|
|Cover|<p>-</p>|`SNMP agent`|prtCoverDescription<p>Update: 3600</p>|
|Input|<p>-</p>|`SNMP agent`|prtInputDescription<p>Update: 3600</p>|
|Output|<p>-</p>|`SNMP agent`|prtOutputDescription<p>Update: 3600</p>|
|Supplies|<p>-</p>|`SNMP agent`|prtMarkerSuppliesDescription<p>Update: 3600</p>|
|Network interfaces|<p>You may also consider using IF-MIB::ifType or IF-MIB::ifAlias for discovery depending on your filtering needs. {$SNMP_COMMUNITY} is a global macro.</p>|`SNMP agent`|ifDescr<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Device Type|<p>-</p>|`SNMP agent`|hrDeviceDescr<p>Update: 43200</p>|
|Printer error state|<p>-</p>|`SNMP agent`|hrPrinterDetectedErrorState<p>Update: 60</p>|
|Printer status|<p>-</p>|`SNMP agent`|hrPrinterStatus<p>Update: 60</p>|
|Number of network interfaces|<p>The number of network interfaces (regardless of their current state) present on this system.</p>|`SNMP agent`|ifNumber<p>Update: 3600</p>|
|Device MAC address|<p>-</p>|`SNMP agent`|ifPhysAddress<p>Update: 3600</p>|
|Device console display|<p>-</p>|`SNMP agent`|prtConsoleDisplayBufferText<p>Update: 60</p>|
|Device serial number|<p>-</p>|`SNMP agent`|prtGeneralSerialNumber<p>Update: 43200</p>|
|Printer lifetime counter|<p>-</p>|`SNMP agent`|prtMarkerLifeCount<p>Update: 60</p>|
|Printer power on counter|<p>-</p>|`SNMP agent`|prtMarkerPowerOnCount<p>Update: 60</p>|
|Device contact details|<p>The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|sysContact<p>Update: 3600</p>|
|Device description|<p>A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|sysDescr<p>Update: 3600</p>|
|Device location|<p>The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysLocation<p>Update: 3600</p>|
|Device name|<p>An administratively-assigned name for this managed node. By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysName<p>Update: 3600</p>|
|Device uptime|<p>The time since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|sysUpTime<p>Update: 60</p>|
|Media Path Description of supplies $1 (LLD)|<p>-</p>|`SNMP agent`|prtMediaPathDescription[{#SNMPVALUE}]<p>Update: 3600</p>|
|Media Path Status of supplies $1 (LLD)|<p>-</p>|`SNMP agent`|prtMediaPathStatus[{#SNMPVALUE}]<p>Update: 600</p>|
|Media Path Type of supplies $1 (LLD)|<p>-</p>|`SNMP agent`|prtMediaPathType[{#SNMPVALUE}]<p>Update: 3600</p>|
|Cover $1 (LLD)|<p>-</p>|`SNMP agent`|prtCoverDescription[{#SNMPVALUE}]<p>Update: 3600</p>|
|Cover Status of $1 (LLD)|<p>-</p>|`SNMP agent`|prtCoverStatus[{#SNMPVALUE}]<p>Update: 600</p>|
|Input Capacity $1 (LLD)|<p>-</p>|`Calculated`|prtInputCapacity[{#SNMPVALUE}]<p>Update: 600</p>|
|Input current level $1 (LLD)|<p>-</p>|`SNMP agent`|prtInputCurrentLevel[{#SNMPVALUE}]<p>Update: 600</p>|
|Input $1 (LLD)|<p>-</p>|`SNMP agent`|prtInputDescription[{#SNMPVALUE}]<p>Update: 3600</p>|
|Input max capacity $1 (LLD)|<p>-</p>|`SNMP agent`|prtInputMaxCapacity[{#SNMPVALUE}]<p>Update: 3600</p>|
|Input Media Name $1 (LLD)|<p>-</p>|`SNMP agent`|prtInputMediaName[{#SNMPVALUE}]<p>Update: 3600</p>|
|Input Model $1 (LLD)|<p>-</p>|`SNMP agent`|prtInputModel[{#SNMPVALUE}]<p>Update: 3600</p>|
|Input SerialNumber $1 (LLD)|<p>-</p>|`SNMP agent`|prtInputSerialNumber[{#SNMPVALUE}]<p>Update: 3600</p>|
|Input status $1 (LLD)|<p>-</p>|`SNMP agent`|prtInputStatus[{#SNMPVALUE}]<p>Update: 600</p>|
|Input Type $1 (LLD)|<p>-</p>|`SNMP agent`|prtInputType[{#SNMPVALUE}]<p>Update: 3600</p>|
|Output $1 (LLD)|<p>-</p>|`SNMP agent`|prtOutputDescription[{#SNMPVALUE}]<p>Update: 3600</p>|
|Output max Capacity $1 (LLD)|<p>-</p>|`SNMP agent`|prtOutputMaxCapacity[{#SNMPVALUE}]<p>Update: 3600</p>|
|Output remaining Capacity $1 (LLD)|<p>-</p>|`SNMP agent`|prtOutputRemainingCapacity[{#SNMPVALUE}]<p>Update: 600</p>|
|Output Status $1 (LLD)|<p>-</p>|`SNMP agent`|prtOutputStatus[{#SNMPVALUE}]<p>Update: 600</p>|
|Color Value of supplies $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerColorantValue[{#SNMPVALUE}]<p>Update: 3600</p>|
|Capacity of supplies $1 (LLD)|<p>-</p>|`Calculated`|prtMarkerSuppliesCapacity[{#SNMPVALUE}]<p>Update: 600</p>|
|Description of supplies $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesDescription[{#SNMPVALUE}]<p>Update: 3600</p>|
|Level of supplies $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesLevel[{#SNMPVALUE}]<p>Update: 600</p>|
|max Capacity of supplies $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesMaxCapacity[{#SNMPVALUE}]<p>Update: 3600</p>|
|Operational status of interface $1 (LLD)|<p>The current operational state of the interface.</p>|`SNMP agent`|ifOperStatus[{#SNMPVALUE}]<p>Update: 60</p>|
|Admin status of interface $1 (LLD)|<p>The desired state of the interface.</p>|`SNMP agent`|ifAdminStatus[{#SNMPVALUE}]<p>Update: 60</p>|
|Alias of interface $1 (LLD)|<p>-</p>|`SNMP agent`|ifAlias[{#SNMPVALUE}]<p>Update: 3600</p>|
|Description of interface $1 (LLD)|<p>A textual string containing information about the interface. This string should include the name of the manufacturer, the product name and the version of the interface hardware/software.</p>|`SNMP agent`|ifDescr[{#SNMPVALUE}]<p>Update: 3600</p>|
|Inbound errors on interface $1 (LLD)|<p>For packet-oriented interfaces, the number of inbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of inbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol.</p>|`SNMP agent`|ifInErrors[{#SNMPVALUE}]<p>Update: 60</p>|
|Incoming traffic on interface $1 (LLD)|<p>The number of octets in valid MAC frames received on this interface, including the MAC header and FCS.</p>|`SNMP agent`|ifInOctets[{#SNMPVALUE}]<p>Update: 60</p>|
|Outbound errors on interface $1 (LLD)|<p>For packet-oriented interfaces, the number of outbound packets that could not be transmitted because of errors. For character-oriented or fixed-length interfaces, the number of outbound transmission units that could not be transmitted because of errors.</p>|`SNMP agent`|ifOutErrors[{#SNMPVALUE}]<p>Update: 60</p>|
|Outgoing traffic on interface $1 (LLD)|<p>The number of octets transmitted in MAC frames on this interface, including the MAC header and FCS.</p>|`SNMP agent`|ifOutOctets[{#SNMPVALUE}]<p>Update: 60</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Cover {#SNMPVALUE} on printer {HOST.NAME} is not closed|<p>-</p>|<p>**Expression**: {Template SNMP Printer:prtCoverStatus[{#SNMPVALUE}].last(,600)}<>4 and {Template SNMP Printer:prtCoverStatus[{#SNMPVALUE}].last(,600)}<>6</p><p>**Recovery expression**: </p>|information|
|Input {#SNMPVALUE} on printer {HOST.NAME} has changed|<p>-</p>|<p>**Expression**: {Template SNMP Printer:prtInputStatus[{#SNMPVALUE}].last(,600)}<>0</p><p>**Recovery expression**: </p>|information|
|{#SNMPVALUE} is low on printer {HOST.NAME}|<p>-</p>|<p>**Expression**: {Template SNMP Printer:prtMarkerSuppliesCapacity[{#SNMPVALUE}].last()}<10</p><p>**Recovery expression**: </p>|information|
|Output {#SNMPVALUE} on printer {HOST.NAME} has changed|<p>-</p>|<p>**Expression**: {Template SNMP Printer:prtOutputStatus[{#SNMPVALUE}].last(,600)}<>0</p><p>**Recovery expression**: </p>|information|
|Operational status was changed on {HOST.NAME} interface {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {Template SNMP Printer:ifOperStatus[{#SNMPVALUE}].diff(0)}=1</p><p>**Recovery expression**: </p>|information|
|Cover {#SNMPVALUE} on printer {HOST.NAME} is not closed (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP Printer:prtCoverStatus[{#SNMPVALUE}].last(,600)}<>4 and {Template SNMP Printer:prtCoverStatus[{#SNMPVALUE}].last(,600)}<>6</p><p>**Recovery expression**: </p>|information|
|Input {#SNMPVALUE} on printer {HOST.NAME} has changed (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP Printer:prtInputStatus[{#SNMPVALUE}].last(,600)}<>0</p><p>**Recovery expression**: </p>|information|
|Output {#SNMPVALUE} on printer {HOST.NAME} has changed (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP Printer:prtOutputStatus[{#SNMPVALUE}].last(,600)}<>0</p><p>**Recovery expression**: </p>|information|
|{#SNMPVALUE} is low on printer {HOST.NAME} (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP Printer:prtMarkerSuppliesCapacity[{#SNMPVALUE}].last()}<10</p><p>**Recovery expression**: </p>|information|
|Operational status was changed on {HOST.NAME} interface {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP Printer:ifOperStatus[{#SNMPVALUE}].diff(0)}=1</p><p>**Recovery expression**: </p>|information|
