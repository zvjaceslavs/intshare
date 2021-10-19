# Template_Cisco_6500

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
|FAN|<p>CISCO-ENVMON-MIB::ciscoEnvMonFanStatusDescr Textual description of the fan being instrumented.</p>|`SNMP agent`|ciscoEnvMonFanStatusDescr<p>Update: 300</p>|
|Memory Pool|<p>CISCO-MEMORY-POOL-MIB::ciscoMemoryPoolName A textual name assigned to the memory pool.</p>|`SNMP agent`|ciscoMemoryPoolName<p>Update: 300</p>|
|Power Supplies|<p>CISCO-ENVMON-MIB::ciscoEnvMonSupplyStatusDescr Textual description of the power supply being instrumented.</p>|`SNMP agent`|ciscoEnvMonSupplyStatusDescr<p>Update: 300</p>|
|$1 Sensors|<p>The textual name of the physical entity.</p>|`SNMP agent`|entPhysicalName["Fan Tray"]<p>Update: 300</p>|
|BGP Peers|<p>BGP4-MIB::bgpPeerIdentifier</p>|`SNMP agent`|bgpPeerIdentifier<p>Update: 300</p>|
|$1 Sensors|<p>The textual name of the physical entity.</p>|`SNMP agent`|entPhysicalName[Module]<p>Update: 300</p>|
|$1 Sensors|<p>The textual name of the physical entity.</p>|`SNMP agent`|entPhysicalName[Amperage]<p>Update: 300</p>|
|CPU|<p>CISCO-PROCESS-MIB::cpmCPUTotalPhysicalIndex The entPhysicalIndex of the physical entity for which the CPU statistics in this entry are maintained. The physical entity can be a CPU chip, a group of CPUs, a CPU card etc. The exact type of this entity is described by its entPhysicalVendorType value. If the CPU statistics in this entry correspond to more than one physical entity (or to no physical entity), or if the entPhysicalTable is not supported on the SNMP agent, the value of this object must be zero.</p>|`SNMP agent`|cpmCPUTotalPhysicalIndex<p>Update: 300</p>|
|OSPF Interfaces|<p>OSPF-MIB::ospfIfIpAddress The IP address of this OSPF interface.</p>|`SNMP agent`|ospfIfIpAddress<p>Update: 300</p>|
|$1 Sensors|<p>The textual name of the physical entity.</p>|`SNMP agent`|entPhysicalName["Power"]<p>Update: 300</p>|
|$1 Sensors|<p>The textual name of the physical entity.</p>|`SNMP agent`|entPhysicalName[Voltage]<p>Update: 300</p>|
|Temperature Sensors|<p>CISCO-ENVMON-MIB::ciscoEnvMonTemperatureStatusDescr Textual description of the testpoint being instrumented.</p>|`SNMP agent`|ciscoEnvMonTemperatureStatusDescr<p>Update: 300</p>|
|OSPF Neighbors|<p>OSPF-MIB::ospfNbrIpAddr The IP address this neighbor is using in its IP source address. Note that, on addressless links, this will not be 0.0.0.0 but the address of another of the neighbor's interfaces.</p>|`SNMP agent`|ospfNbrIpAddr<p>Update: 300</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|snmptrap (OSPF Neighbor Up/Down)|<p>-</p>|`SNMP trap`|snmptrap[1.3.6.1.2.1.14.16.2.2]<p>Update: 0</p>|
|snmptrap (BGP Neighbor Up/Down)|<p>-</p>|`SNMP trap`|snmptrap[1.3.6.1.2.1.15.3.1.2|1.3.6.1.4.1.9.9.187.1.2.5.1.3]<p>Update: 0</p>|
|snmptrap (IF Down)|<p>-</p>|`SNMP trap`|snmptrap[.1.3.6.1.6.3.1.1.5.3]<p>Update: 0</p>|
|snmptrap (IF Up)|<p>-</p>|`SNMP trap`|snmptrap[.1.3.6.1.6.3.1.1.5.4]<p>Update: 0</p>|
|BGP Peer State|<p>BGP4-MIB::bgpPeerState CISCO-BGP4-MIB::cbgpPeer2State The BGP peer connection state.</p>|`SNMP trap`|snmptrap["bgpPeerState|cbgpPeer2State"]<p>Update: 0</p>|
|Source of Command|<p>-</p>|`SNMP trap`|snmptrap["ccmHistoryEventCommandSource"]<p>Update: 0</p>|
|BFD Sessions|<p>CISCO-IETF-BFD-MIB::ciscoBfdSessDown and ciscoBfdSessUp</p>|`SNMP trap`|snmptrap["ciscoBfdSess(Up|Down)"]<p>Update: 0</p>|
|Attack Filter changes|<p>The system generates this notification to indicate that the cscaFilterStatus of the attack filter for cscaType has changed due to the reason determined by cscaDescription. The system limits the generation of this notifications for the same cscaType to a five-second interval.</p>|`SNMP trap`|snmptrap["cscaFilterChange"]<p>Update: 0</p>|
|Status of Attack Filter|<p>-</p>|`SNMP trap`|snmptrap["cscaFilterStatus"]<p>Update: 0</p>|
|SSH Sessions|<p>CISCO-SECURE-SHELL-MIB::cssSessionHostAddr</p>|`SNMP trap`|snmptrap["cssSessionHostAddr"]<p>Update: 0</p>|
|MPLS L3 State|<p>MPLS-L3VPN-STD-MIB::mplsL3VpnVrfUp MPLS-L3VPN-STD-MIB::mplsL3VpnVrfDown</p>|`SNMP trap`|snmptrap["mplsL3VpnVrf[Up|Down]"]<p>Update: 0</p>|
|OSPF Interface State|<p>OSPF-MIB::ospfIfState The OSPF Interface State.</p>|`SNMP trap`|snmptrap["ospfIfState"]<p>Update: 0</p>|
|LSA aged to MaxAge|<p>-</p>|`SNMP trap`|snmptrap["ospfMaxAgeLsa"]<p>Update: 0</p>|
|OSPF neighbour state|<p>1 : down 2 : attempt 3 : init 4 : twoWay 5 : exchangeStart 6 : exchange 7 : loading 8 : full</p>|`SNMP trap`|snmptrap["ospfNbrStateChange.*ospfNbrState[[:space:]]"]<p>Update: 0</p>|
|LSA has been originated|<p>OSPF-TRAP-MIB::ospfOriginateLsa</p>|`SNMP trap`|snmptrap["ospfOriginateLsa"]<p>Update: 0</p>|
|OSP TX Retransmits|<p>-</p>|`SNMP trap`|snmptrap["ospfTxRetransmit"]<p>Update: 0</p>|
|Type of remote session|<p>-</p>|`SNMP trap`|snmptrap["tslineSesType"]<p>Update: 0</p>|
|Status of FAN "$1"|<p>CISCO-ENVMON-MIB::ciscoEnvMonFanState The current state of the fan being instrumented.</p>|`SNMP agent`|ciscoEnvMonFanState["{#SNMPVALUE}"]<p>Update: 60</p>|
|Free memory on Memory Pool "$1"|<p>CISCO-MEMORY-POOL-MIB::ciscoMemoryPoolFree Indicates the number of bytes from the memory pool that are currently unused on the managed device.</p>|`SNMP agent`|ciscoMemoryPoolFree["{#SNMPVALUE}"]<p>Update: 60</p>|
|Name of Memory Pool "$1"|<p>CISCO-MEMORY-POOL-MIB::ciscoMemoryPoolName A textual name assigned to the memory pool.</p>|`SNMP agent`|ciscoMemoryPoolName["{#SNMPVALUE}"]<p>Update: 3600</p>|
|Total Memory Pool "$1"|<p>-</p>|`Calculated`|ciscoMemoryPoolTotal["{#SNMPVALUE}"]<p>Update: 3600</p>|
|Used memory on Memory Pool "$1"|<p>CISCO-MEMORY-POOL-MIB::ciscoMemoryPoolUsed Indicates the number of bytes from the memory pool that are currently in use by applications on the managed device.</p>|`SNMP agent`|ciscoMemoryPoolUsed["{#SNMPVALUE}"]<p>Update: 300</p>|
|Status of Power Supply "$1"|<p>CISCO-ENVMON-MIB::ciscoEnvMonSupplyState The current state of the power supply being instrumented.</p>|`SNMP agent`|ciscoEnvMonSupplyState["{#SNMPVALUE}"]<p>Update: 60</p>|
|Manufacturer of $2 "$1"|<p>ENTITY-MIB::entPhysicalMfgName The name of the manufacturer of this physical component. The preferred value is the manufacturer name string actually printed on the component itself (if present).</p>|`SNMP agent`|entPhysicalMfgName["{#SNMPVALUE}","Fan Tray"]<p>Update: 86400</p>|
|Model Name of $2 "$1"|<p>ENTITY-MIB::entPhysicalModelName The vendor-specific model name identifier string associated with this physical component. The preferred value is the customer-visible part number, which may be printed on the component itself.</p>|`SNMP agent`|entPhysicalModelName["{#SNMPVALUE}","Fan Tray"]<p>Update: 86400</p>|
|Operational Status of $2 "$1"|<p>CISCO-ENTITY-FRU-CONTROL-MIB::cefcFanTrayOperStatus The operational state of the fan or fan tray.</p>|`SNMP agent`|cefcFanTrayOperStatus["{#SNMPVALUE}","Fan Tray"]<p>Update: 60</p>|
|Serial Number of $2 "$1"|<p>ENTITY-MIB::entPhysicalSerialNum The vendor-specific serial number string for the physical entity. The preferred value is the serial number string actually printed on the component itself (if present).</p>|`SNMP agent`|entPhysicalSerialNum["{#SNMPVALUE}","Fan Tray"]<p>Update: 3600</p>|
|BGP Peer "{#SNMPINDEX}" State|<p>-</p>|`SNMP trap`|snmptrap["(bgpEstablished|bgpBackwardTransition|cbgpFsmStateChange).*bgpPeerState\.{#SNMPINDEX}[[:space:]][a-zA-Z]+[[:space:]]"]<p>Update: 0</p>|
|BGP Peer "{#SNMPINDEX}" State|<p>-</p>|`SNMP trap`|snmptrap["(bgpBackwardTransition|cbgpFsmStateChange).*bgpPeerState\.{#SNMPINDEX}[[:space:]][a-zA-Z]+[[:space:]]"]<p>Update: 0</p>|
|Manufacturer of $2 "$1"|<p>ENTITY-MIB::entPhysicalMfgName The name of the manufacturer of this physical component. The preferred value is the manufacturer name string actually printed on the component itself (if present).</p>|`SNMP agent`|entPhysicalMfgName["{#SNMPVALUE}","Module"]<p>Update: 86400</p>|
|Model Name of $2 "$1"|<p>ENTITY-MIB::entPhysicalModelName The vendor-specific model name identifier string associated with this physical component. The preferred value is the customer-visible part number, which may be printed on the component itself.</p>|`SNMP agent`|entPhysicalModelName["{#SNMPVALUE}","Module"]<p>Update: 86400</p>|
|Operational Status of $2 "$1"|<p>ENTITY-STATE-MIB::entStateOper The operational state for this entity.</p>|`SNMP agent`|entStateOper["{#SNMPVALUE}","Module"]<p>Update: 60</p>|
|Serial Number of $2 "$1"|<p>ENTITY-MIB::entPhysicalSerialNum The vendor-specific serial number string for the physical entity. The preferred value is the serial number string actually printed on the component itself (if present).</p>|`SNMP agent`|entPhysicalSerialNum["{#SNMPVALUE}","Module"]<p>Update: 3600</p>|
|$2 of Sensor "$1"|<p>CISCO-ENTITY-SENSOR-MIB::entSensorValue This variable reports the most recent measurement seen by the sensor.</p>|`SNMP agent`|entSensorValue["{#SNMPVALUE}",Amperage]<p>Update: 60</p>|
|Status of $2 Sensor "$1"|<p>CISCO-ENTITY-SENSOR-MIB::entSensorStatus This variable indicates the present operational status of the sensor.</p>|`SNMP agent`|entSensorStatus["{#SNMPVALUE}",Amperage]<p>Update: 60</p>|
|CPU Usage 1min Rev ({#SNMPINDEX})|<p>CISCO-PROCESS-MIB::cpmCPUTotal1minRev The overall CPU busy percentage in the last 1 minute period. This object deprecates the object cpmCPUTotal1min and increases the value range to (0..100).</p>|`SNMP agent`|cpmCPUTotal1minRev[{#SNMPINDEX}]<p>Update: 60</p>|
|CPU Usage 5min Rev ({#SNMPINDEX})|<p>CISCO-PROCESS-MIB::cpmCPUTotal5minRev The overall CPU busy percentage in the last 5 minute period. This object deprecates the object cpmCPUTotal5min and increases the value range to (0..100).</p>|`SNMP agent`|cpmCPUTotal5minRev[{#SNMPINDEX}]<p>Update: 300</p>|
|CPU Usage 5sec Rev ({#SNMPINDEX})|<p>CISCO-PROCESS-MIB::cpmCPUTotal5secRev The overall CPU busy percentage in the last 5 second period. This object deprecates the object cpmCPUTotal5sec and increases the value range to (0..100). This object is deprecated by cpmCPUTotalMonIntervalValue.</p>|`SNMP agent`|cpmCPUTotal5secRev[{#SNMPINDEX}]<p>Update: 30</p>|
|OSPF Interface "{SNMPVALUE}" State|<p>-</p>|`SNMP trap`|snmptrap["ospfIfStateChange.+ospfIfIpAddress[[:space:]]{#SNMPVALUE}[[:space:]].+ospfIfState[[:space:]][a-zA-Z]+"]<p>Update: 0</p>|
|Status of $2 Sensor "$1"|<p>CISCO-ENTITY-SENSOR-MIB::entSensorStatus This variable indicates the present operational status of the sensor.</p>|`SNMP agent`|entSensorStatus["{#SNMPVALUE}",Power]<p>Update: 60</p>|
|Value of $2 Sensor "$1"|<p>CISCO-ENTITY-SENSOR-MIB::entSensorValue This variable reports the most recent measurement seen by the sensor.</p>|`SNMP agent`|entSensorValue["{#SNMPVALUE}",Power]<p>Update: 60</p>|
|$2 on Sensor "$1"|<p>CISCO-ENTITY-SENSOR-MIB::entSensorValue This variable reports the most recent measurement seen by the sensor.</p>|`SNMP agent`|entSensorValue["{#SNMPVALUE}",Voltage]<p>Update: 60</p>|
|Status of $2 Sensor "$1"|<p>CISCO-ENTITY-SENSOR-MIB::entSensorStatus This variable indicates the present operational status of the sensor.</p>|`SNMP agent`|entSensorStatus["{#SNMPVALUE}",Voltage]<p>Update: 60</p>|
|SNMP traps for "{#SNMPVALUE}" sensor|<p>-</p>|`SNMP trap`|snmptrap["ciscoEnvMonTemperatureState\.{#SNMPINDEX}[[:space:]](warning|critical|shutdown|normal)"]<p>Update: 0</p>|
|Status of Temperature Sensor "$1"|<p>CISCO-ENVMON-MIB::ciscoEnvMonTemperatureState The current state of the testpoint being instrumented.</p>|`SNMP agent`|ciscoEnvMonTemperatureState["{#SNMPVALUE}"]<p>Update: 60</p>|
|Temperature on Sensor "$1"|<p>CISCO-ENVMON-MIB::ciscoEnvMonTemperatureStatusValue The current measurement of the testpoint being instrumented.</p>|`SNMP agent`|ciscoEnvMonTemperatureStatusValue["{#SNMPVALUE}"]<p>Update: 60</p>|
|Threshold Temperature on Sensor "$1"|<p>CISCO-ENVMON-MIB::ciscoEnvMonTemperatureThreshold The highest value that the associated instance of the object ciscoEnvMonTemperatureStatusValue may obtain before an emergency shutdown of the managed device is initiated.</p>|`SNMP agent`|ciscoEnvMonTemperatureThreshold["{#SNMPVALUE}"]<p>Update: 1800</p>|
|OSPF "{#SNMPVALUE}" Neighbour State|<p>-</p>|`SNMP trap`|snmptrap["(ospfNbrStateChange).*ospfNbrIpAddr[[:space:]]{#SNMPVALUE}[[:space:]].*[[:space:]][a-zA-Z]+[[:space:]]$"]<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|BGP Peer State is idle|<p>-</p>|warning|
|Many OSPF TX Retransmits|<p>-</p>|warning|
|MPLS L3 is down|<p>-</p>|average|
|OSPF Interface State is down|<p>-</p>|warning|
|OSPF Interface State is loopback|<p>-</p>|warning|
|OSPF Interface State is waiting|<p>-</p>|warning|
|Status of FAN "{#SNMPVALUE}" is critical|<p>-</p>|average|
|Status of FAN "{#SNMPVALUE}" is non-operable|<p>-</p>|warning|
|Status of FAN "{#SNMPVALUE}" is not functioning|<p>-</p>|average|
|Status of FAN "{#SNMPVALUE}" is shutdown|<p>-</p>|high|
|High utilization of Memory Pool "{#SNMPVALUE}"|<p>-</p>|average|
|Status of Power Supply "{#SNMPVALUE}" is critical|<p>-</p>|average|
|Status of Power Supply "{#SNMPVALUE}" is non-operable|<p>-</p>|warning|
|Status of Power Supply "{#SNMPVALUE}" is not functioning|<p>-</p>|average|
|Status of Power Supply "{#SNMPVALUE}" is shutdown|<p>-</p>|high|
|Status of Fan Tray "{#SNMPVALUE}" is in partial failure|<p>-</p>|warning|
|Status of Fan Tray "{#SNMPVALUE}" is powered down|<p>-</p>|high|
|BGP Peer "{#SNMPINDEX}"->"{#SNMPVALUE}" State changed|<p>-</p>|average|
|BGP Peer "{#SNMPINDEX}"->"{#SNMPVALUE}" State changed|<p>-</p>|average|
|Module "{#SNMPVALUE}" is inoperable|<p>-</p>|disaster|
|Amperage Sensor "{#SNMPVALUE}" is nonoperational|<p>-</p>|high|
|Amperage Sensor "{#SNMPVALUE}" is unavailable|<p>-</p>|average|
|High CPU #{#SNMPINDEX} Usage|<p>-</p>|high|
|OSPF Interface "{#SNMPVALUE}" State has been changed|<p>-</p>|average|
|Power Sensor "{#SNMPVALUE}" is nonoperational|<p>-</p>|high|
|Power Sensor "{#SNMPVALUE}" is unavailable|<p>-</p>|average|
|Voltage Sensor "{#SNMPVALUE}" is nonoperational|<p>-</p>|high|
|Voltage Sensor "{#SNMPVALUE}" is unavailable|<p>-</p>|average|
|Temperature Sensor "{#SNMPVALUE}" is abnormal|<p>-</p>|warning|
|Temperature Sensor "{#SNMPVALUE}" is abnormal|<p>-</p>|high|
|Temperature Sensor "{#SNMPVALUE}" is not functioning|<p>-</p>|information|
|Temperature Sensor "{#SNMPVALUE}" is shutdown|<p>-</p>|disaster|
|OSPF Neighbor {#SNMPVALUE} has been changed|<p>-</p>|average|
# Template Cisco General

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
|BGP Peers|<p>BGP4-MIB::bgpPeerIdentifier</p>|`SNMP agent`|bgpPeerIdentifier<p>Update: 300</p>|
|OSPF Interfaces|<p>OSPF-MIB::ospfIfIpAddress The IP address of this OSPF interface.</p>|`SNMP agent`|ospfIfIpAddress<p>Update: 300</p>|
|OSPF Neighbors|<p>OSPF-MIB::ospfNbrIpAddr The IP address this neighbor is using in its IP source address. Note that, on addressless links, this will not be 0.0.0.0 but the address of another of the neighbor's interfaces.</p>|`SNMP agent`|ospfNbrIpAddr<p>Update: 300</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|BGP Peer "{#SNMPINDEX}" State|<p>-</p>|`SNMP trap`|snmptrap["(bgpEstablished|bgpBackwardTransition|cbgpFsmStateChange).*bgpPeerState\.{#SNMPINDEX}[[:space:]][a-zA-Z]+[[:space:]]"]<p>Update: 0</p>|
|BGP Peer "{#SNMPINDEX}" State|<p>-</p>|`SNMP trap`|snmptrap["(bgpBackwardTransition|cbgpFsmStateChange).*bgpPeerState\.{#SNMPINDEX}[[:space:]][a-zA-Z]+[[:space:]]"]<p>Update: 0</p>|
|OSPF Interface "{SNMPVALUE}" State|<p>-</p>|`SNMP trap`|snmptrap["ospfIfStateChange.+ospfIfIpAddress[[:space:]]{#SNMPVALUE}[[:space:]].+ospfIfState[[:space:]][a-zA-Z]+"]<p>Update: 0</p>|
|OSPF "{#SNMPVALUE}" Neighbour State|<p>-</p>|`SNMP trap`|snmptrap["(ospfNbrStateChange).*ospfNbrIpAddr[[:space:]]{#SNMPVALUE}[[:space:]].*[[:space:]][a-zA-Z]+[[:space:]]$"]<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|BGP Peer "{#SNMPINDEX}"->"{#SNMPVALUE}" State changed|<p>-</p>|average|
|BGP Peer "{#SNMPINDEX}"->"{#SNMPVALUE}" State changed|<p>-</p>|average|
|OSPF Interface "{#SNMPVALUE}" State has been changed|<p>-</p>|average|
|OSPF Neighbor {#SNMPVALUE} has been changed|<p>-</p>|average|
# Template_Cisco_Traps

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
|BGP Peer State|<p>BGP4-MIB::bgpPeerState CISCO-BGP4-MIB::cbgpPeer2State The BGP peer connection state.</p>|`SNMP trap`|snmptrap["bgpPeerState|cbgpPeer2State"]<p>Update: 0</p>|
|Source of Command|<p>-</p>|`SNMP trap`|snmptrap["ccmHistoryEventCommandSource"]<p>Update: 0</p>|
|BFD Sessions|<p>CISCO-IETF-BFD-MIB::ciscoBfdSessDown and ciscoBfdSessUp</p>|`SNMP trap`|snmptrap["ciscoBfdSess(Up|Down)"]<p>Update: 0</p>|
|Attack Filter changes|<p>The system generates this notification to indicate that the cscaFilterStatus of the attack filter for cscaType has changed due to the reason determined by cscaDescription. The system limits the generation of this notifications for the same cscaType to a five-second interval.</p>|`SNMP trap`|snmptrap["cscaFilterChange"]<p>Update: 0</p>|
|Status of Attack Filter|<p>-</p>|`SNMP trap`|snmptrap["cscaFilterStatus"]<p>Update: 0</p>|
|SSH Sessions|<p>CISCO-SECURE-SHELL-MIB::cssSessionHostAddr</p>|`SNMP trap`|snmptrap["cssSessionHostAddr"]<p>Update: 0</p>|
|MPLS L3 State|<p>MPLS-L3VPN-STD-MIB::mplsL3VpnVrfUp MPLS-L3VPN-STD-MIB::mplsL3VpnVrfDown</p>|`SNMP trap`|snmptrap["mplsL3VpnVrf[Up|Down]"]<p>Update: 0</p>|
|OSPF Interface State|<p>OSPF-MIB::ospfIfState The OSPF Interface State.</p>|`SNMP trap`|snmptrap["ospfIfState"]<p>Update: 0</p>|
|LSA aged to MaxAge|<p>-</p>|`SNMP trap`|snmptrap["ospfMaxAgeLsa"]<p>Update: 0</p>|
|OSPF neighbour state|<p>1 : down 2 : attempt 3 : init 4 : twoWay 5 : exchangeStart 6 : exchange 7 : loading 8 : full</p>|`SNMP trap`|snmptrap["ospfNbrStateChange.*ospfNbrState[[:space:]]"]<p>Update: 0</p>|
|LSA has been originated|<p>OSPF-TRAP-MIB::ospfOriginateLsa</p>|`SNMP trap`|snmptrap["ospfOriginateLsa"]<p>Update: 0</p>|
|OSP TX Retransmits|<p>-</p>|`SNMP trap`|snmptrap["ospfTxRetransmit"]<p>Update: 0</p>|
|Type of remote session|<p>-</p>|`SNMP trap`|snmptrap["tslineSesType"]<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|BGP Peer State is idle|<p>-</p>|warning|
|Many OSPF TX Retransmits|<p>-</p>|warning|
|MPLS L3 is down|<p>-</p>|average|
|OSPF Interface State is down|<p>-</p>|warning|
|OSPF Interface State is loopback|<p>-</p>|warning|
|OSPF Interface State is waiting|<p>-</p>|warning|
