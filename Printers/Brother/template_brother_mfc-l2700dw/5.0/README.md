# Template Brother Printers

## Overview

На базе шаблона на испанском сделал этот шаблон.


Под указанный принтер - работает. Уровни тонера и Кита. Графики.


Вопросы на 2135850@211.ru



## Author

Sergey Sidenko

## Macros used

There are no macros links in this template.

## Template links

|Name|
|----|
|Template SNMP Interfaces|
## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Consumables|<p>-</p>|`SNMP agent`|consumablesID<p>Update: 60</p>|
|Network interfaces|<p>You may also consider using IF-MIB::ifType or IF-MIB::ifAlias for discovery depending on your filtering needs. {$SNMP_COMMUNITY} is a global macro.</p>|`SNMP agent`|ifDescr<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Распечатано страниц|<p>-</p>|`SNMP agent`|.1.3.6.1.2.1.43.10.2.1.4.1.1<p>Update: 1h</p>|
|Остаток ресурса DRUM UNIT (страниц)|<p>-</p>|`SNMP agent`|.1.3.6.1.2.1.43.11.1.1.9.1.2<p>Update: 3h</p>|
|Number of network interfaces|<p>The number of network interfaces (regardless of their current state) present on this system.</p>|`SNMP agent`|ifNumber<p>Update: 3600</p>|
|HTTP Check|<p>-</p>|`Simple check`|net.tcp.service[http]<p>Update: 30</p>|
|Print Spooler Check|<p>-</p>|`Simple check`|net.tcp.service[tcp,,515]<p>Update: 30</p>|
|JetDirect Check|<p>-</p>|`Simple check`|net.tcp.service[tcp,,9100]<p>Update: 30</p>|
|prtMarkerSuppliesLevel|<p>-</p>|`SNMP agent`|prtMarkerSuppliesLevel<p>Update: 1h</p>|
|prtMarkerSuppliesLevelMax|<p>-</p>|`SNMP agent`|prtMarkerSuppliesLevelMax<p>Update: 3h</p>|
|prtMarkerSuppliesLevel %|<p>-</p>|`Calculated`|prtMarkerSuppliesLevel-percent<p>Update: 1h</p>|
|Device contact details|<p>MIB: SNMPv2-MIB The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|system.contact<p>Update: 3h</p>|
|Device description|<p>MIB: SNMPv2-MIB A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|system.descr<p>Update: 3h</p>|
|Device IP adress|<p>-</p>|`SNMP agent`|system.ip<p>Update: 3h</p>|
|Device location|<p>MIB: SNMPv2-MIB The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|system.location<p>Update: 3h</p>|
|Device model|<p>-</p>|`SNMP agent`|system.model<p>Update: 3h</p>|
|Device name|<p>MIB: SNMPv2-MIB An administratively-assigned name for this managed node.By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|system.name<p>Update: 3h</p>|
|System object ID|<p>MIB: SNMPv2-MIB The vendor's authoritative identification of the network management subsystem contained in the entity. This value is allocated within the SMI enterprises subtree (1.3.6.1.4.1) and provides an easy and unambiguous means for determining`what kind of box' is being managed. For example, if vendor`Flintstones, Inc.' was assigned the subtree1.3.6.1.4.1.4242, it could assign the identifier 1.3.6.1.4.1.4242.1.1 to its `Fred Router'.</p>|`SNMP agent`|system.objectid<p>Update: 3h</p>|
|Device SN|<p>-</p>|`SNMP agent`|system.sn<p>Update: 3h</p>|
|Device uptime|<p>MIB: SNMPv2-MIB The time (in hundredths of a second) since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|system.uptime[sysUpTime]<p>Update: 1m</p>|
|SNMP availability|<p>-</p>|`Zabbix internal`|zabbix[host,snmp,available]<p>Update: 1m</p>|
|$1 Current Capacity (LLD)|<p>-</p>|`SNMP agent`|ConsumableCurrentCapacity[{#SNMPVALUE}]<p>Update: 30</p>|
|$1 Max Capacity (LLD)|<p>-</p>|`SNMP agent`|ConsumableMaxCapacity[{#SNMPVALUE}]<p>Update: 30</p>|
|$1 Calculated Capacity (current/max) (LLD)|<p>Depending on the consumable (toner vs drum/belt) this calculation will return a particular percentage. Drum Units & Belt Units return integer values that can be used in calculations to determine a percentage of how much of the unit is remaining. Max "status" is stored in the MIB and is used in the calculation. Toner consumables return the follow codes: -3 = Level Okay -2 = Low Warning (equivalent to “max status”) 0 = Critical/empty Toner possibilities for calculations of current / max * 100 -3 / -2 * 100 = 150% -2 / -2 * 100 = 100% 0 / -2 * 100 = 0% The calculations above are used in the triggers to make it very straight forward on determining if a toner is low or not.</p>|`Calculated`|CosumableCalculated[{#SNMPVALUE}]<p>Update: 30</p>|
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
|Operational status was changed on {HOST.NAME} interface {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {Template Brother Printers:ifOperStatus[{#SNMPVALUE}].diff(0)}=1</p><p>**Recovery expression**: </p>|information|
|{HOSTNAME} {#SNMPVALUE} - Critical: {ITEM.LASTVALUE}|<p>Checks if at "critical" level for Toners (code = 0) or drum/belt (<10%)</p>|<p>**Expression**: {Template Brother Printers:CosumableCalculated[{#SNMPVALUE}].last(0)}<10 or {Template Brother Printers:ConsumableCurrentCapacity[{#SNMPVALUE}].last(0)}=0</p><p>**Recovery expression**: </p>|high|
|{HOSTNAME} {#SNMPVALUE} - Low Warning: {ITEM.LASTVALUE}|<p>Checks if at "warning" level for Toners (code = -2) or drum/belt (>10% & <30%)</p>|<p>**Expression**: {Template Brother Printers:CosumableCalculated[{#SNMPVALUE}].last(0)}>10 and {Template Brother Printers:CosumableCalculated[{#SNMPVALUE}].last(0)}<30 or {Template Brother Printers:ConsumableCurrentCapacity[{#SNMPVALUE}].last(0)} = -2</p><p>**Recovery expression**: </p>|warning|
|{HOSTNAME} {#SNMPVALUE} - Critical: {ITEM.LASTVALUE} (LLD)|<p>Checks if at "critical" level for Toners (code = 0) or drum/belt (<10%)</p>|<p>**Expression**: {Template Brother Printers:CosumableCalculated[{#SNMPVALUE}].last(0)}<10 or {Template Brother Printers:ConsumableCurrentCapacity[{#SNMPVALUE}].last(0)}=0</p><p>**Recovery expression**: </p>|high|
|{HOSTNAME} {#SNMPVALUE} - Low Warning: {ITEM.LASTVALUE} (LLD)|<p>Checks if at "warning" level for Toners (code = -2) or drum/belt (>10% & <30%)</p>|<p>**Expression**: {Template Brother Printers:CosumableCalculated[{#SNMPVALUE}].last(0)}>10 and {Template Brother Printers:CosumableCalculated[{#SNMPVALUE}].last(0)}<30 or {Template Brother Printers:ConsumableCurrentCapacity[{#SNMPVALUE}].last(0)} = -2</p><p>**Recovery expression**: </p>|warning|
|Operational status was changed on {HOST.NAME} interface {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template Brother Printers:ifOperStatus[{#SNMPVALUE}].diff(0)}=1</p><p>**Recovery expression**: </p>|information|