# Template SNMP Brocade

## Overview

Due OID/MIB limitations on Brocade side the trigger for PowerSupply based on diff(!!) not on "not normal", because not presents powersupplys will be marked as failure, so you will get some false positives triggers.


Was tested on Brocade FCX/MLX/ICX and old FastIrons(Firmware >07.2.02eT7f1).


It only discovered "UP"-ports. 


Discoveryrules for: temperatur, fan and power supply. every Port is an "Application"

## Author

Stefan Krüger

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$CRITTEMP}|<p>-</p>|`100`|Text macro|
|{$WARNTEMP}|<p>-</p>|`90`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Fan|<p>Describes the temperature sensor in a human readable form. This is the same as snAgentTempSensorId, which is numeric and used to traverse the temperature sensor table. The description provides the meaning and purpose of this senor.</p>|`SNMP agent`|snChassis.snChasFan<p>Update: 3600</p>|
|Temperatur sensors|<p>Describes the temperature sensor in a human readable form. This is the same as snAgentTempSensorId, which is numeric and used to traverse the temperature sensor table. The description provides the meaning and purpose of this senor.</p>|`SNMP agent`|snAgentTempSensorDescr<p>Update: 3600</p>|
|power supply information|<p>-</p>|`SNMP agent`|snChasPwr.snChasPwrSupplyTable<p>Update: 30</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 60</p>|
|Number of network interfaces|<p>The number of network interfaces (regardless of their current state) present on this system.</p>|`SNMP agent`|ifNumber<p>Update: 3600</p>|
|Number of VLANs|<p>The number of VLAN IDs include VLAN 1</p>|`SNMP agent`|ifVLAN<p>Update: 3600</p>|
|CPU utilization|<p>The statistical CPU utilization in units of a percent.</p>|`SNMP agent`|snAgentCpuUtilPercent<p>Update: 120</p>|
|Memory Utilization|<p>The system dynamic memory utilization, in unit of percentage. Deprecated:Refer to snAgSystemDRAMUtil</p>|`SNMP agent`|snAgGblDynMemUtil<p>Update: 120</p>|
|Serialnumber|<p>The serial number of the chassis. If the serial number is unknown or unavailable then the value should be a zero length string.</p>|`SNMP agent`|snChasSerNum<p>Update: 7200</p>|
|Device contact details|<p>The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|sysContact<p>Update: 3600</p>|
|Device description|<p>A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|sysDescr<p>Update: 3600</p>|
|Device location|<p>The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysLocation<p>Update: 3600</p>|
|Device name|<p>An administratively-assigned name for this managed node. By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysName<p>Update: 3600</p>|
|Device uptime|<p>The time since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|sysUpTime<p>Update: 60</p>|
|State of Fan Number {#SNMPINDEX} (LLD)|<p>-</p>|`SNMP agent`|snChasFanOperStatus[{#SNMPINDEX}]<p>Update: 120</p>|
|{#SNMPVALUE} Chassi: {#SNMPINDEX} (LLD)|<p>-</p>|`SNMP agent`|snAgentTempValue[{#SNMPINDEX}]<p>Update: 240</p>|
|Power Supply {#SNMPINDEX} Status (LLD)|<p>-</p>|`SNMP agent`|snChasPwrSupplyDescription[{#SNMPINDEX}]<p>Update: 120</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Temperature is > {$CRITTEMP} on {#SNMPVALUE} Chassi: {#SNMPINDEX}|<p>Temperature ist mire than {$CRITTEMP}</p>|<p>**Expression**: {Template SNMP Brocade:snAgentTempValue[{#SNMPINDEX}].last()}>100</p><p>**Recovery expression**: </p>|high|
|Temperature is > {$WARNTEMP} on {#SNMPVALUE} Chassi: {#SNMPINDEX}|<p>Temperature ist mire than {$WARNTEMP}</p>|<p>**Expression**: {Template SNMP Brocade:snAgentTempValue[{#SNMPINDEX}].last()}>90</p><p>**Recovery expression**: </p>|average|
|Operational status was changed on Power Supply {#PWRSUPID}|<p>The power supply operation has been changed</p>|<p>**Expression**: {Template SNMP Brocade:snChasPwrSupplyDescription[{#SNMPINDEX}].diff()}=1</p><p>**Recovery expression**: </p>|average|
|Fan Number {#SNMPINDEX} Failure|<p>-</p>|<p>**Expression**: {Template SNMP Brocade:snChasFanOperStatus[{#SNMPINDEX}].last()}<>2</p><p>**Recovery expression**: </p>|average|
|Fan Number {#SNMPINDEX} Failure (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP Brocade:snChasFanOperStatus[{#SNMPINDEX}].last()}<>2</p><p>**Recovery expression**: </p>|average|
|Temperature is > {$CRITTEMP} on {#SNMPVALUE} Chassi: {#SNMPINDEX} (LLD)|<p>Temperature ist mire than {$CRITTEMP}</p>|<p>**Expression**: {Template SNMP Brocade:snAgentTempValue[{#SNMPINDEX}].last()}>100</p><p>**Recovery expression**: </p>|high|
|Temperature is > {$WARNTEMP} on {#SNMPVALUE} Chassi: {#SNMPINDEX} (LLD)|<p>Temperature ist mire than {$WARNTEMP}</p>|<p>**Expression**: {Template SNMP Brocade:snAgentTempValue[{#SNMPINDEX}].last()}>90</p><p>**Recovery expression**: </p>|average|
|Operational status was changed on Power Supply {#PWRSUPID} (LLD)|<p>The power supply operation has been changed</p>|<p>**Expression**: {Template SNMP Brocade:snChasPwrSupplyDescription[{#SNMPINDEX}].diff()}=1</p><p>**Recovery expression**: </p>|average|
# Template SNMP Brocade-Copper

## Overview

Due OID/MIB limitations on Brocade side the trigger for PowerSupply based on diff(!!) not on "not normal", because not presents powersupplys will be marked as failure, so you will get some false positives triggers.


Was tested on Brocade FCX/MLX/ICX and old FastIrons(Firmware >07.2.02eT7f1).


It only discovered "UP"-ports. 


Discoveryrules for: temperatur, fan and power supply. every Port is an "Application"

## Author

Stefan Krüger

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|PortDiscover|<p>-</p>|`SNMP agent`|snSwIfInfoConnectorTypeCopper<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Inbound errors on interface $1 (LLD)|<p>For packet-oriented interfaces, the number of inbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of inbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol.</p>|`SNMP agent`|ifInErrors[{#IFDESCRCOP}]<p>Update: 60</p>|
|Outbound errors on interface $1 (LLD)|<p>For packet-oriented interfaces, the number of outbound packets that could not be transmitted because of errors. For character-oriented or fixed-length interfaces, the number of outbound transmission units that could not be transmitted because of errors.</p>|`SNMP agent`|ifOutErrors[{#IFDESCRCOP}]<p>Update: 60</p>|
|Incoming traffic on interface $1 (LLD)|<p>The total number of packets transmitted out of the interface.</p>|`SNMP agent`|snSwIfStatsInFrames[{#IFDESCRCOP}]<p>Update: 60</p>|
|Outgoing traffic on interface $1 (LLD)|<p>The total number of packets received on the interface.</p>|`SNMP agent`|snSwIfStatsOutFrames[{#IFDESCRCOP}]<p>Update: 60</p>|
|Status of interface $1 (LLD)|<p>The current operational state of the interface. The testing(3) state indicates that no operational packets can be passed.</p>|`SNMP agent`|snSwPortInfoLinkStatus[{#IFDESCRCOP}]<p>Update: 60</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Operational status was changed on {HOST.NAME} interface {#IFDESCRCOP}|<p>-</p>|<p>**Expression**: {Template SNMP Brocade-Copper:snSwPortInfoLinkStatus[{#IFDESCRCOP}].diff()}=1</p><p>**Recovery expression**: </p>|average|
|Operational status was changed on {HOST.NAME} interface {#IFDESCRCOP} (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP Brocade-Copper:snSwPortInfoLinkStatus[{#IFDESCRCOP}].diff()}=1</p><p>**Recovery expression**: </p>|average|
# Template SNMP Brocade-Fiber

## Overview

Due OID/MIB limitations on Brocade side the trigger for PowerSupply based on diff(!!) not on "not normal", because not presents powersupplys will be marked as failure, so you will get some false positives triggers.


Was tested on Brocade FCX/MLX/ICX and old FastIrons(Firmware >07.2.02eT7f1).


It only discovered "UP"-ports. 


Discoveryrules for: temperatur, fan and power supply. every Port is an "Application"

## Author

Stefan Krüger

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|PortDiscover|<p>-</p>|`SNMP agent`|snSwIfInfoConnectorTypeFiber<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Inbound errors on interface $1 (LLD)|<p>For packet-oriented interfaces, the number of inbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of inbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol.</p>|`SNMP agent`|ifInErrors[{#IFDESCRFIB}]<p>Update: 60</p>|
|Outbound errors on interface $1 (LLD)|<p>For packet-oriented interfaces, the number of outbound packets that could not be transmitted because of errors. For character-oriented or fixed-length interfaces, the number of outbound transmission units that could not be transmitted because of errors.</p>|`SNMP agent`|ifOutErrors[{#IFDESCRFIB}]<p>Update: 60</p>|
|Incoming traffic on interface $1 (LLD)|<p>The total number of packets transmitted out of the interface.</p>|`SNMP agent`|snSwIfStatsInFrames[{#IFDESCRFIB}]<p>Update: 60</p>|
|Outgoing traffic on interface $1 (LLD)|<p>The total number of packets received on the interface.</p>|`SNMP agent`|snSwIfStatsOutFrames[{#IFDESCRFIB}]<p>Update: 60</p>|
|Status of interface $1 (LLD)|<p>The current operational state of the interface. The testing(3) state indicates that no operational packets can be passed.</p>|`SNMP agent`|snSwPortInfoLinkStatus[{#IFDESCRFIB}]<p>Update: 60</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Operational status was changed on {HOST.NAME} interface {#IFDESCRFIB}|<p>-</p>|<p>**Expression**: {Template SNMP Brocade-Fiber:snSwPortInfoLinkStatus[{#IFDESCRFIB}].diff()}=1</p><p>**Recovery expression**: </p>|average|
|Operational status was changed on {HOST.NAME} interface {#IFDESCRFIB} (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP Brocade-Fiber:snSwPortInfoLinkStatus[{#IFDESCRFIB}].diff()}=1</p><p>**Recovery expression**: </p>|average|
