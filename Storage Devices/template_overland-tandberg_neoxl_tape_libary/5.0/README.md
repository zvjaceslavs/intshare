# Template - Other - NeoXL

## Overview

The template is based on the "BDT-MS-MIB" (Version 201702211500Z). The SNMP capabilities of the libaries are pretty limited. All possible values are being checked and triggers are being used.


**Features**


* Check of the Health Status of the Library
* Scan for Modules/Expansions
* Check of the "Drive Power Module" of each Expansion
* Check of the "Power Supply Status" of each Expansion
* Inventory Checks like Installed Firmware, Serial Number and so on.




---


Template was tested with a NEOxl 80 and Firmware 2.80.



## Author

Marcel Wiechmann

## Macros used

There are no macros links in this template.

## Template links

|Name|
|----|
|Template Module ICMP Ping|
|Template Module Generic SNMP|
## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|BDT Module Discovery|<p>-</p>|`SNMP agent`|BdtDeviceStatModEntry<p>Update: 1d</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Device Robotic HW Revision|<p>-</p>|`SNMP agent`|bdtDeviceDatRoboticHWRev<p>Update: 1h</p>|
|Device Robotic FW Revision|<p>-</p>|`SNMP agent`|bdtDeviceDatRoboticSWRev<p>Update: 1h</p>|
|Device Serial Number|<p>-</p>|`SNMP agent`|bdtDeviceDatSerialNum<p>Update: 1h</p>|
|Device SW Build Date|<p>-</p>|`SNMP agent`|bdtDeviceDatSWBuildDate<p>Update: 1h</p>|
|Device SW Revision|<p>-</p>|`SNMP agent`|bdtDeviceDatSWRevision<p>Update: 1h</p>|
|Device World Wide ID|<p>-</p>|`SNMP agent`|bdtDeviceDatWWI<p>Update: 1h</p>|
|Current Device Activity|<p>-</p>|`SNMP agent`|bdtDeviceStatAct<p>Update: 5m</p>|
|Current Device Health Status|<p>-</p>|`SNMP agent`|bdtDeviceStatHealth<p>Update: 5m</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 60</p>|
|SNMP traps (fallback)|<p>Item is used to collect all SNMP traps unmatched by other snmptrap items</p>|`SNMP trap`|snmptrap.fallback<p>Update: 1m</p>|
|System contact details|<p>MIB: SNMPv2-MIB The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|system.contact[sysContact.0]<p>Update: 1h</p>|
|System description|<p>MIB: SNMPv2-MIB A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|system.descr[sysDescr.0]<p>Update: 1h</p>|
|System location|<p>MIB: SNMPv2-MIB The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|system.location[sysLocation.0]<p>Update: 1h</p>|
|System name|<p>MIB: SNMPv2-MIB An administratively-assigned name for this managed node.By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|system.name<p>Update: 1h</p>|
|System object ID|<p>MIB: SNMPv2-MIB The vendor's authoritative identification of the network management subsystem contained in the entity. This value is allocated within the SMI enterprises subtree (1.3.6.1.4.1) and provides an easy and unambiguous means for determining`what kind of box' is being managed. For example, if vendor`Flintstones, Inc.' was assigned the subtree1.3.6.1.4.1.4242, it could assign the identifier 1.3.6.1.4.1.4242.1.1 to its `Fred Router'.</p>|`SNMP agent`|system.objectid[sysObjectID.0]<p>Update: 15m</p>|
|Uptime|<p>MIB: SNMPv2-MIB The time (in hundredths of a second) since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|system.uptime[sysUpTime.0]<p>Update: 30s</p>|
|SNMP agent availability|<p>-</p>|`Zabbix internal`|zabbix[host,snmp,available]<p>Update: 1m</p>|
|Current Module {#SNMPINDEX} Drive Power Module 1 Status (LLD)|<p>-</p>|`SNMP agent`|bdtDeviceStatModEntryDPwr1[{#SNMPINDEX}]<p>Update: 5m</p>|
|Current Module {#SNMPINDEX} Drive Power Module 2 Status (LLD)|<p>-</p>|`SNMP agent`|bdtDeviceStatModEntryDPwr2[{#SNMPINDEX}]<p>Update: 5m</p>|
|Current Module {#SNMPINDEX} Health Stat (LLD)|<p>-</p>|`SNMP agent`|bdtDeviceStatModEntryHealth[{#SNMPINDEX}]<p>Update: 5m</p>|
|Current Module {#SNMPINDEX} Power Supply Status (LLD)|<p>-</p>|`SNMP agent`|bdtDeviceStatModEntryPwrSupply[{#SNMPINDEX}]<p>Update: 5m</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Drive Power Module 1 Status of Module {#MODULE_ID} is NOT ok|<p>-</p>|<p>**Expression**: {Template - Other - NeoXL:bdtDeviceStatModEntryDPwr1[{#SNMPINDEX}].regexp(OK)}=0</p><p>**Recovery expression**: </p>|warning|
|Drive Power Module 2 Status of Module {#MODULE_ID} is NOT ok|<p>-</p>|<p>**Expression**: {Template - Other - NeoXL:bdtDeviceStatModEntryDPwr2[{#SNMPINDEX}].regexp(OK)}=0</p><p>**Recovery expression**: </p>|warning|
|Power Supply Status of Module {#MODULE_ID} is NOT ok|<p>-</p>|<p>**Expression**: {Template - Other - NeoXL:bdtDeviceStatModEntryPwrSupply[{#SNMPINDEX}].regexp(OK)}=0</p><p>**Recovery expression**: </p>|warning|
|Drive Power Module 1 Status of Module {#MODULE_ID} is NOT ok (LLD)|<p>-</p>|<p>**Expression**: {Template - Other - NeoXL:bdtDeviceStatModEntryDPwr1[{#SNMPINDEX}].regexp(OK)}=0</p><p>**Recovery expression**: </p>|warning|
|Drive Power Module 2 Status of Module {#MODULE_ID} is NOT ok (LLD)|<p>-</p>|<p>**Expression**: {Template - Other - NeoXL:bdtDeviceStatModEntryDPwr2[{#SNMPINDEX}].regexp(OK)}=0</p><p>**Recovery expression**: </p>|warning|
|Power Supply Status of Module {#MODULE_ID} is NOT ok (LLD)|<p>-</p>|<p>**Expression**: {Template - Other - NeoXL:bdtDeviceStatModEntryPwrSupply[{#SNMPINDEX}].regexp(OK)}=0</p><p>**Recovery expression**: </p>|warning|
