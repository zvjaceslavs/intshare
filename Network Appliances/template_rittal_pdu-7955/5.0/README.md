# Template_Rittal_PDU 1Phase EN

## Description

IT Infrastructure Monitoring.

## Overview

Template for Rittal PDU 7955 1-phase (4.4) and 3-pases (5.0) with sensors (temperature, humidity, input, etc.)

## Author

RPW

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
|Serial number|<p>-</p>|`SNMP agent`|entPhysicalSerialNum<p>Update: 1h</p>|
|Firmware|<p>-</p>|`SNMP agent`|entPhysicalSoftwareRev<p>Update: 1h</p>|
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
|Climate Status (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.Climate[{#SNMPINDEX}]<p>Update: 1m</p>|
|Input 2.DescName (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarStrg.Input2.DescName[{#SNMPINDEX}]<p>Update: 1h</p>|
|Input 2 Status (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarStrg.Input2.Status[{#SNMPINDEX}]<p>Update: 2m</p>|
|Input 2 Value (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarStrg.Input2.Value[{#SNMPINDEX}]<p>Update: 1m</p>|
|Energy Meter 2 status (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarValueStrg.EnergyMeter2.Status[{#SNMPINDEX}]<p>Update: 10m</p>|
|Energy Meter 2 value (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarValueStrg.EnergyMeter2.Value[{#SNMPINDEX}]<p>Update: 5m</p>|
|Door status (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.Access.Status<p>Update: 1m</p>|
|Access DescName (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarValueStrg.Access.DescName<p>Update: 1h</p>|
|Analog DescName (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarValueStrg.Analog.DescName[{#SNMPINDEX}]<p>Update: 1h</p>|
|Analog Status - AirFlow (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarValueStrg.Analog.Status[{#SNMPINDEX}]<p>Update: 1m</p>|
|Temperature Status (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.Temperature.Status[{#SNMPINDEX}]<p>Update: 1m</p>|
|Temperature Value (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.Temperature.Value[{#SNMPINDEX}]<p>Update: 1m</p>|
|Humidity Status (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.Humidity.Status[{#SNMPINDEX}]<p>Update: 1m</p>|
|Humidity Value (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.Humidity.Value[{#SNMPINDEX}]<p>Update: 10m</p>|
|Leakage Status (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.Leakage.Status[{#SNMPINDEX}]<p>Update: 1m</p>|
|Input 1.DescName (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarStrg.Input1.DescName[{#SNMPINDEX}]<p>Update: 1h</p>|
|Input 1 Status (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarStrg.Input1.Status[{#SNMPINDEX}]<p>Update: 2m</p>|
|Input 1 Value (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarStrg.Input1.Value[{#SNMPINDEX}]<p>Update: 1m</p>|
|Energy Meter 1 status (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarValueStrg.EnergyMeter1.Status[{#SNMPINDEX}]<p>Update: 10m</p>|
|Energy Meter 1 value (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarValueStrg.EnergyMeter1.Value[{#SNMPINDEX}]<p>Update: 5m</p>|
|Phase L1 Current Status (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.PhaseL1.Current.Status[{#SNMPINDEX}]<p>Update: 1m</p>|
|Phase L1 Current Value (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.PhaseL1.Current.Value[{#SNMPINDEX}]<p>Update: 1m</p>|
|Phase L1 Power Active Status (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.PhaseL1.Power.Active.Status[{#SNMPINDEX}]<p>Update: 1m</p>|
|Phase L1 Power Active Value (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.PhaseL1.Power.Active.Value[{#SNMPINDEX}]<p>Update: 5m</p>|
|Phase L1 Voltage Status (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.PhaseL1.Voltage.Status[{#SNMPINDEX}]<p>Update: 1m</p>|
|Phase L1 Voltage Value (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.PhaseL1.Voltage.Value[{#SNMPINDEX}]<p>Update: 1m</p>|
|Unit Energie Custom kWh (LLD)|<p>-</p>|`SNMP agent`|Unit.Energy.Active.Custom.Value[{#SNMPINDEX}]<p>Update: 2m</p>|
|Unit Energie Runtime (LLD)|<p>-</p>|`SNMP agent`|Unit.Energy.Active.Runtime.Value[{#SNMPINDEX}]<p>Update: 2m</p>|
|Unit Energie Active kWh (LLD)|<p>-</p>|`SNMP agent`|Unit.Energy.Active.Value[{#SNMPINDEX}]<p>Update: 2m</p>|
|$1 (LLD)|<p>-</p>|`SNMP agent`|Walk-SNMP[{#SNMPVALUE} ({#SNMPINDEX})]<p>Update: 1m</p>|
|L1 Energy Active Custom Value (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.L1.Energy.Active.Custom.Value<p>Update: 5m</p>|
|L1 Energy Active Value (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.L1.Energy.Active.Value<p>Update: 5m</p>|
|L1 Energy Apparent Value (LLD)|<p>-</p>|`SNMP agent`|cmcIIIVarValueInt.L1.Energy.Apparent.Value<p>Update: 5m</p>|
|Unit Power Active Status (LLD)|<p>-</p>|`SNMP agent`|Unit.Power.Active.Status[{#SNMPINDEX}]<p>Update: 2m</p>|
|Unit Power Active Value (LLD)|<p>-</p>|`SNMP agent`|Unit.Power.Active.Value[{#SNMPINDEX}]<p>Update: 2m</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Open door warning|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Access.Status.last()}<>13</p><p>**Recovery expression**: </p>|warning|
|AirFlow Status alarm|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueStrg.Analog.Status[{#SNMPINDEX}].last()}<>4</p><p>**Recovery expression**: </p>|high|
|Climate alarm HIGH {ITEM.LASTVALUE}|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Climate[{#SNMPINDEX}].last()}>=40</p><p>**Recovery expression**: </p>|disaster|
|Climate alarm {ITEM.LASTVALUE}|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Climate[{#SNMPINDEX}].last()}>=35</p><p>**Recovery expression**: </p>|high|
|Alarm Humidity Status|<p>The humidity status is not OK</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Humidity.Status[{#SNMPINDEX}].last()}<>4</p><p>**Recovery expression**: </p>|high|
|Humidity Above Normal {ITEM.LASTVALUE}|<p>The humidity is above normal</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Humidity.Value[{#SNMPINDEX}].last()}>75 and {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Humidity.Value[{#SNMPINDEX}].last()}<80</p><p>**Recovery expression**: </p>|average|
|Humidity Below Normal {ITEM.LASTVALUE}|<p>The humidity is below normal</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Humidity.Value[{#SNMPINDEX}].last()}<=30 and {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Humidity.Value[{#SNMPINDEX}].last()}>25</p><p>**Recovery expression**: </p>|average|
|Humidity Very Above Normal {ITEM.LASTVALUE}|<p>Humidity is too high</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Humidity.Value[{#SNMPINDEX}].last()}>=80</p><p>**Recovery expression**: </p>|high|
|Humidity Very Below Normal {ITEM.LASTVALUE}|<p>Humidity is too low</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Humidity.Value[{#SNMPINDEX}].last()}<=25</p><p>**Recovery expression**: </p>|high|
|Input 1 status alarm|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarStrg.Input1.Status[{#SNMPINDEX}].last()}=4 and {Template_Rittal_PDU 1Phase EN:cmcIIIVarStrg.Input1.Value[{#SNMPINDEX}].last()}<>1</p><p>**Recovery expression**: </p>|high|
|Input 2 status alarm|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarStrg.Input2.Status[{#SNMPINDEX}].last()}=4 and {Template_Rittal_PDU 1Phase EN:cmcIIIVarStrg.Input2.Value[{#SNMPINDEX}].last()}<>1</p><p>**Recovery expression**: </p>|high|
|Alarm Leakage Status|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Leakage.Status[{#SNMPINDEX}].last()}<>4</p><p>**Recovery expression**: </p>|disaster|
|Alarm Current Status Phase L1|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.PhaseL1.Current.Status[{#SNMPINDEX}].last()}<>10</p><p>**Recovery expression**: </p>|high|
|Alarm Power Status Phase L1|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.PhaseL1.Current.Status[{#SNMPINDEX}].last()}<>10</p><p>**Recovery expression**: </p>|high|
|Alarm Voltage Status Phase L1|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.PhaseL1.Voltage.Status[{#SNMPINDEX}].last()}<>4</p><p>**Recovery expression**: </p>|high|
|Temparture status alarm|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Temperature.Status[{#SNMPINDEX}].last()}<>4</p><p>**Recovery expression**: </p>|high|
|Temperature Above Normal {ITEM.LASTVALUE}°C|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Temperature.Value[{#SNMPINDEX}].last()}>=25 and {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Temperature.Value[{#SNMPINDEX}].last()}<26</p><p>**Recovery expression**: </p>|average|
|Temperature Below Normal {ITEM.LASTVALUE}°C|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Temperature.Value[{#SNMPINDEX}].last()}<=15 and {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Temperature.Value[{#SNMPINDEX}].last()}>13</p><p>**Recovery expression**: </p>|average|
|Temperature Far Below Normal {ITEM.LASTVALUE}°C|<p>Temperature too low</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Temperature.Value[{#SNMPINDEX}].last()}<=13</p><p>**Recovery expression**: </p>|high|
|Temperature Very Above Normal {ITEM.LASTVALUE}°C|<p>Temperature too high</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Temperature.Value[{#SNMPINDEX}].last()}>=26</p><p>**Recovery expression**: </p>|high|
|PDU has been restartet (uptime < 5m)|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:Unit.Energy.Active.Runtime.Value[{#SNMPINDEX}].last()}<5m</p><p>**Recovery expression**: </p>|average|
|Alarm Unit Power Active Status|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:Unit.Power.Active.Status[{#SNMPINDEX}].last()}<>4</p><p>**Recovery expression**: </p>|disaster|
|{HOST.NAME} $1|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:Walk-SNMP[{#SNMPVALUE} ({#SNMPINDEX})].str(OK)}<>1</p><p>**Recovery expression**: </p>|disaster|
|Climate alarm HIGH {ITEM.LASTVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Climate[{#SNMPINDEX}].last()}>=40</p><p>**Recovery expression**: </p>|disaster|
|Climate alarm {ITEM.LASTVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Climate[{#SNMPINDEX}].last()}>=35</p><p>**Recovery expression**: </p>|high|
|Input 2 status alarm (LLD)|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarStrg.Input2.Status[{#SNMPINDEX}].last()}=4 and {Template_Rittal_PDU 1Phase EN:cmcIIIVarStrg.Input2.Value[{#SNMPINDEX}].last()}<>1</p><p>**Recovery expression**: </p>|high|
|Open door warning (LLD)|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Access.Status.last()}<>13</p><p>**Recovery expression**: </p>|warning|
|AirFlow Status alarm (LLD)|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueStrg.Analog.Status[{#SNMPINDEX}].last()}<>4</p><p>**Recovery expression**: </p>|high|
|Temparture status alarm (LLD)|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Temperature.Status[{#SNMPINDEX}].last()}<>4</p><p>**Recovery expression**: </p>|high|
|Temperature Above Normal {ITEM.LASTVALUE}°C (LLD)|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Temperature.Value[{#SNMPINDEX}].last()}>=25 and {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Temperature.Value[{#SNMPINDEX}].last()}<26</p><p>**Recovery expression**: </p>|average|
|Temperature Below Normal {ITEM.LASTVALUE}°C (LLD)|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Temperature.Value[{#SNMPINDEX}].last()}<=15 and {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Temperature.Value[{#SNMPINDEX}].last()}>13</p><p>**Recovery expression**: </p>|average|
|Temperature Far Below Normal {ITEM.LASTVALUE}°C (LLD)|<p>Temperature too low</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Temperature.Value[{#SNMPINDEX}].last()}<=13</p><p>**Recovery expression**: </p>|high|
|Temperature Very Above Normal {ITEM.LASTVALUE}°C (LLD)|<p>Temperature too high</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Temperature.Value[{#SNMPINDEX}].last()}>=26</p><p>**Recovery expression**: </p>|high|
|Alarm Humidity Status (LLD)|<p>The humidity status is not OK</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Humidity.Status[{#SNMPINDEX}].last()}<>4</p><p>**Recovery expression**: </p>|high|
|Humidity Above Normal {ITEM.LASTVALUE} (LLD)|<p>The humidity is above normal</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Humidity.Value[{#SNMPINDEX}].last()}>75 and {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Humidity.Value[{#SNMPINDEX}].last()}<80</p><p>**Recovery expression**: </p>|average|
|Humidity Below Normal {ITEM.LASTVALUE} (LLD)|<p>The humidity is below normal</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Humidity.Value[{#SNMPINDEX}].last()}<=30 and {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Humidity.Value[{#SNMPINDEX}].last()}>25</p><p>**Recovery expression**: </p>|average|
|Humidity Very Above Normal {ITEM.LASTVALUE} (LLD)|<p>Humidity is too high</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Humidity.Value[{#SNMPINDEX}].last()}>=80</p><p>**Recovery expression**: </p>|high|
|Humidity Very Below Normal {ITEM.LASTVALUE} (LLD)|<p>Humidity is too low</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Humidity.Value[{#SNMPINDEX}].last()}<=25</p><p>**Recovery expression**: </p>|high|
|Alarm Leakage Status (LLD)|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.Leakage.Status[{#SNMPINDEX}].last()}<>4</p><p>**Recovery expression**: </p>|disaster|
|Input 1 status alarm (LLD)|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarStrg.Input1.Status[{#SNMPINDEX}].last()}=4 and {Template_Rittal_PDU 1Phase EN:cmcIIIVarStrg.Input1.Value[{#SNMPINDEX}].last()}<>1</p><p>**Recovery expression**: </p>|high|
|Alarm Current Status Phase L1 (LLD)|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.PhaseL1.Current.Status[{#SNMPINDEX}].last()}<>10</p><p>**Recovery expression**: </p>|high|
|Alarm Power Status Phase L1 (LLD)|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.PhaseL1.Current.Status[{#SNMPINDEX}].last()}<>10</p><p>**Recovery expression**: </p>|high|
|Alarm Voltage Status Phase L1 (LLD)|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:cmcIIIVarValueInt.PhaseL1.Voltage.Status[{#SNMPINDEX}].last()}<>4</p><p>**Recovery expression**: </p>|high|
|PDU has been restartet (uptime < 5m) (LLD)|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:Unit.Energy.Active.Runtime.Value[{#SNMPINDEX}].last()}<5m</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} $1 (LLD)|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:Walk-SNMP[{#SNMPVALUE} ({#SNMPINDEX})].str(OK)}<>1</p><p>**Recovery expression**: </p>|disaster|
|Alarm Unit Power Active Status (LLD)|<p>-</p>|<p>**Expression**: {Template_Rittal_PDU 1Phase EN:Unit.Power.Active.Status[{#SNMPINDEX}].last()}<>4</p><p>**Recovery expression**: </p>|disaster|
