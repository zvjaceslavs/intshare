# Template_Rittal_PDU 1Phase EN

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
|Discovery Climate|<p>-</p>|`SNMP agent`|cmcIIIVarName.Climate<p>Update: 1h</p>|
|Discovery Input 2|<p>-</p>|`SNMP agent`|cmcIIIVarName.Input2<p>Update: 1h</p>|
|Energy Meter 2|<p>-</p>|`SNMP agent`|cmcIIIVarName.EnergyMeter2<p>Update: 1h</p>|
|Discovery Access|<p>-</p>|`SNMP agent`|cmcIIIVarName.Access<p>Update: 1h</p>|
|Discovery Analog|<p>-</p>|`SNMP agent`|cmcIIIVarName.Analog<p>Update: 1h</p>|
|Discovery Temperature|<p>-</p>|`SNMP agent`|cmcIIIVarName.Temperature<p>Update: 1h</p>|
|Discovery Humidity|<p>-</p>|`SNMP agent`|cmcIIIVarName.Humidity<p>Update: 1h</p>|
|Discovery Leakage|<p>-</p>|`SNMP agent`|cmcIIIVarName.Leakage<p>Update: 1h</p>|
|Discovery Input 1|<p>-</p>|`SNMP agent`|cmcIIIVarName.Input1<p>Update: 1h</p>|
|Energy Meter 1|<p>-</p>|`SNMP agent`|cmcIIIVarName.EnergyMeter1<p>Update: 1h</p>|
|Phase L1 Power|<p>-</p>|`SNMP agent`|cmcIIIVarName.PhaseL1.Power<p>Update: 1h</p>|
|Discovery Unit Energy|<p>-</p>|`SNMP agent`|cmcIIIVarName.Unit.Energy<p>Update: 1h</p>|
|Discovery cmsIIIVarName Settings|<p>-</p>|`SNMP agent`|cmsIIIVarNames.WalkSNMP<p>Update: 1h</p>|
|Phase L1 Energy|<p>-</p>|`SNMP agent`|cmcIIIVarName.PhaseL1.Energy<p>Update: 1h</p>|
|Discovery Unit Power|<p>-</p>|`SNMP agent`|cmcIIIVarName.Unit.Power<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|SNMP agent availability|<p>-</p>|`Zabbix internal`|zabbix[host,snmp,available]<p>Update: 1m</p>|
|System contact details|<p>MIB: SNMPv2-MIB The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|system.contact[sysContact.0]<p>Update: 1h</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 60</p>|
|Serial number|<p>-</p>|`SNMP agent`|entPhysicalSerialNum<p>Update: 1h</p>|
|Uptime|<p>MIB: SNMPv2-MIB The time (in hundredths of a second) since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|system.uptime[sysUpTime.0]<p>Update: 30s</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|SNMP traps (fallback)|<p>Item is used to collect all SNMP traps unmatched by other snmptrap items</p>|`SNMP trap`|snmptrap.fallback<p>Update: 1m</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
|System name|<p>MIB: SNMPv2-MIB An administratively-assigned name for this managed node.By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|system.name<p>Update: 1h</p>|
|Firmware|<p>-</p>|`SNMP agent`|entPhysicalSoftwareRev<p>Update: 1h</p>|
|System location|<p>MIB: SNMPv2-MIB The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|system.location[sysLocation.0]<p>Update: 1h</p>|
|System object ID|<p>MIB: SNMPv2-MIB The vendor's authoritative identification of the network management subsystem contained in the entity. This value is allocated within the SMI enterprises subtree (1.3.6.1.4.1) and provides an easy and unambiguous means for determining`what kind of box' is being managed. For example, if vendor`Flintstones, Inc.' was assigned the subtree1.3.6.1.4.1.4242, it could assign the identifier 1.3.6.1.4.1.4242.1.1 to its `Fred Router'.</p>|`SNMP agent`|system.objectid[sysObjectID.0]<p>Update: 15m</p>|
|System description|<p>MIB: SNMPv2-MIB A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|system.descr[sysDescr.0]<p>Update: 1h</p>|
|Climate Status|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.Climate[{#SNMPINDEX}]<p>Update: 1m</p>|
|Input 2.DescName|<p>-</p>|`SNMP agent`|cmcIIIVarStrg.Input2.DescName[{#SNMPINDEX}]<p>Update: 1h</p>|
|Input 2 Status|<p>-</p>|`SNMP agent`|cmcIIIVarStrg.Input2.Status[{#SNMPINDEX}]<p>Update: 2m</p>|
|Input 2 Value|<p>-</p>|`SNMP agent`|cmcIIIVarStrg.Input2.Value[{#SNMPINDEX}]<p>Update: 1m</p>|
|Energy Meter 2 status|<p>-</p>|`SNMP agent`|cmcIIIVarValueStrg.EnergyMeter2.Status[{#SNMPINDEX}]<p>Update: 10m</p>|
|Energy Meter 2 value|<p>-</p>|`SNMP agent`|cmcIIIVarValueStrg.EnergyMeter2.Value[{#SNMPINDEX}]<p>Update: 5m</p>|
|Door status|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.Access.Status<p>Update: 1m</p>|
|Access DescName|<p>-</p>|`SNMP agent`|cmcIIIVarValueStrg.Access.DescName<p>Update: 1h</p>|
|Analog DescName|<p>-</p>|`SNMP agent`|cmcIIIVarValueStrg.Analog.DescName[{#SNMPINDEX}]<p>Update: 1h</p>|
|Analog Status - AirFlow|<p>-</p>|`SNMP agent`|cmcIIIVarValueStrg.Analog.Status[{#SNMPINDEX}]<p>Update: 1m</p>|
|Temperature Status|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.Temperature.Status[{#SNMPINDEX}]<p>Update: 1m</p>|
|Temperature Value|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.Temperature.Value[{#SNMPINDEX}]<p>Update: 1m</p>|
|Humidity Status|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.Humidity.Status[{#SNMPINDEX}]<p>Update: 1m</p>|
|Humidity Value|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.Humidity.Value[{#SNMPINDEX}]<p>Update: 10m</p>|
|Leakage Status|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.Leakage.Status[{#SNMPINDEX}]<p>Update: 1m</p>|
|Input 1.DescName|<p>-</p>|`SNMP agent`|cmcIIIVarStrg.Input1.DescName[{#SNMPINDEX}]<p>Update: 1h</p>|
|Input 1 Status|<p>-</p>|`SNMP agent`|cmcIIIVarStrg.Input1.Status[{#SNMPINDEX}]<p>Update: 2m</p>|
|Input 1 Value|<p>-</p>|`SNMP agent`|cmcIIIVarStrg.Input1.Value[{#SNMPINDEX}]<p>Update: 1m</p>|
|Energy Meter 1 status|<p>-</p>|`SNMP agent`|cmcIIIVarValueStrg.EnergyMeter1.Status[{#SNMPINDEX}]<p>Update: 10m</p>|
|Energy Meter 1 value|<p>-</p>|`SNMP agent`|cmcIIIVarValueStrg.EnergyMeter1.Value[{#SNMPINDEX}]<p>Update: 5m</p>|
|Phase L1 Current Status|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.PhaseL1.Current.Status[{#SNMPINDEX}]<p>Update: 1m</p>|
|Phase L1 Current Value|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.PhaseL1.Current.Value[{#SNMPINDEX}]<p>Update: 1m</p>|
|Phase L1 Power Active Status|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.PhaseL1.Power.Active.Status[{#SNMPINDEX}]<p>Update: 1m</p>|
|Phase L1 Power Active Value|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.PhaseL1.Power.Active.Value[{#SNMPINDEX}]<p>Update: 5m</p>|
|Phase L1 Voltage Status|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.PhaseL1.Voltage.Status[{#SNMPINDEX}]<p>Update: 1m</p>|
|Phase L1 Voltage Value|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.PhaseL1.Voltage.Value[{#SNMPINDEX}]<p>Update: 1m</p>|
|Unit Energie Custom kWh|<p>-</p>|`SNMP agent`|Unit.Energy.Active.Custom.Value[{#SNMPINDEX}]<p>Update: 2m</p>|
|Unit Energie Runtime|<p>-</p>|`SNMP agent`|Unit.Energy.Active.Runtime.Value[{#SNMPINDEX}]<p>Update: 2m</p>|
|Unit Energie Active kWh|<p>-</p>|`SNMP agent`|Unit.Energy.Active.Value[{#SNMPINDEX}]<p>Update: 2m</p>|
|$1|<p>-</p>|`SNMP agent`|Walk-SNMP[{#SNMPVALUE} ({#SNMPINDEX})]<p>Update: 1m</p>|
|L1 Energy Active Custom Value|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.L1.Energy.Active.Custom.Value<p>Update: 5m</p>|
|L1 Energy Active Value|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.L1.Energy.Active.Value<p>Update: 5m</p>|
|L1 Energy Apparent Value|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.L1.Energy.Apparent.Value<p>Update: 5m</p>|
|Unit Power Active Status|<p>-</p>|`SNMP agent`|Unit.Power.Active.Status[{#SNMPINDEX}]<p>Update: 2m</p>|
|Unit Power Active Value|<p>-</p>|`SNMP agent`|Unit.Power.Active.Value[{#SNMPINDEX}]<p>Update: 2m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Unavailable by ICMP ping|<p>Last value: {ITEM.LASTVALUE1}. Last three attempts returned timeout. Please check device connectivity.</p>|high|
|High ICMP ping loss|<p>-</p>|warning|
|High ICMP ping response time|<p>-</p>|warning|
|{HOST.NAME} has been restarted (uptime < 10m)|<p>Uptime is less than 10 minutes</p>|warning|
|No SNMP data collection|<p>SNMP is not available for polling. Please check device connectivity and SNMP settings.</p>|warning|
|System name has changed (new name: {ITEM.VALUE})|<p>System name has changed. Ack to close.</p>|information|
|Climate alarm HIGH {ITEM.LASTVALUE}|<p>-</p>|disaster|
|Climate alarm {ITEM.LASTVALUE}|<p>-</p>|high|
|Input 2 status alarm|<p>-</p>|high|
|Open door warning|<p>-</p>|warning|
|AirFlow Status alarm|<p>-</p>|high|
|Temparture status alarm|<p>-</p>|high|
|Temperature Above Normal {ITEM.LASTVALUE}°C|<p>-</p>|average|
|Temperature Below Normal {ITEM.LASTVALUE}°C|<p>-</p>|average|
|Temperature Far Below Normal {ITEM.LASTVALUE}°C|<p>Temperature too low</p>|high|
|Temperature Very Above Normal {ITEM.LASTVALUE}°C|<p>Temperature too high</p>|high|
|Alarm Humidity Status|<p>The humidity status is not OK</p>|high|
|Humidity Above Normal {ITEM.LASTVALUE}|<p>The humidity is above normal</p>|average|
|Humidity Below Normal {ITEM.LASTVALUE}|<p>The humidity is below normal</p>|average|
|Humidity Very Above Normal {ITEM.LASTVALUE}|<p>Humidity is too high</p>|high|
|Humidity Very Below Normal {ITEM.LASTVALUE}|<p>Humidity is too low</p>|high|
|Alarm Leakage Status|<p>-</p>|disaster|
|Input 1 status alarm|<p>-</p>|high|
|Alarm Current Status Phase L1|<p>-</p>|high|
|Alarm Power Status Phase L1|<p>-</p>|high|
|Alarm Voltage Status Phase L1|<p>-</p>|high|
|PDU has been restartet (uptime < 5m)|<p>-</p>|average|
|{HOST.NAME} $1|<p>-</p>|disaster|
|Alarm Unit Power Active Status|<p>-</p>|disaster|
