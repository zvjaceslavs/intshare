# Template APC ATS

## Description

APC Rack Automatic Transfer Switches (rack ATS) provide reliable, redundant rack mount power to single-corded equipment. The rack ATS has dual input power cords supplying power to the connected load. If the primary power source becomes unavailable, the rack ATS will seamlessly source power from the secondary source without interrupting critical loads.

## Overview

This is basic template for automatic transfer switches by APC. Template was tested on APC   
AP7723, included value mapping, using standart MIBs.


**Installation:**


1. download the attached template
2. import this template to your zabbix
3. create new host
4. apply imported "Template APC ATS" to new host
5. set {$SNMP\_COMMUNITY} to new host in "Macro" section (by default is public).


 


 


 



## Author

Michal Noga

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
|Network interfaces|<p>You may also consider using IF-MIB::ifType or IF-MIB::ifAlias for discovery depending on your filtering needs. {$SNMP_COMMUNITY} is a global macro.</p>|`SNMP agent`|ifDescr<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Alarm Power Limit|<p>The threshold (in Amps) at which an Over Current Alarm will be generated</p>|`SNMP agent`|atsConfigCurrentLimit<p>Update: 86400</p>|
|Name A source|<p>A name given to a particular input.</p>|`SNMP agent`|atsInputNameA<p>Update: 86400</p>|
|Name B source|<p>A name given to a particular input.</p>|`SNMP agent`|atsInputNameB<p>Update: 86400</p>|
|Current output load (Amperes)|<p>The output current in 0.1 amperes drawn by the load on the ATS, or -1 if it's unsupported by this ATS.</p>|`SNMP agent`|atsOutputCurrent<p>Update: 60</p>|
|Output Voltage|<p>-</p>|`SNMP agent`|atsOutputVoltage<p>Update: 60</p>|
|Front panel lock status|<p>This variable returns the status of the Source A.</p>|`SNMP agent`|atsStatusFrontPanel<p>Update: 3600</p>|
|Hardware status|<p>This variable returns the status of display board hardware.</p>|`SNMP agent`|atsStatusHardwareStatus<p>Update: 60</p>|
|Switch state status|<p>This variable returns the output current state of the ATS. atsOverCurrent(1) indicates that the ATS has exceeded the output current threshold and will not allow a switch over to the alternate power source if the current source fails. atsCurrentOK(2) indicates that the output current is below the output current threshold. This OID returns the value of the OID atsOutputPhaseState for the 1U ATS and OID atsOutputBankState for the 2U ATS.</p>|`SNMP agent`|atsStatusOverCurrentState<p>Update: 60</p>|
|Power Redundancy state|<p>This variable returns the current redundancy state of the ATS atsRedundancyLost(1) indicates that the ATS is unable to switch over to the alternate power source if the current source fails. atsFullyRedundant(2) indicates that the ATS will switch over to the alternate power source if the current source fails</p>|`SNMP agent`|atsStatusRedundancyState<p>Update: 60</p>|
|Current selected source|<p>This variable returns the current source of power.</p>|`SNMP agent`|atsStatusSelectedSource.0<p>Update: 15</p>|
|A Source status|<p>This variable returns the status of the Source A.</p>|`SNMP agent`|atsStatusSourceAStatus<p>Update: 60</p>|
|B Source status|<p>This variable returns the status of the Source B.</p>|`SNMP agent`|atsStatusSourceBStatus<p>Update: 60</p>|
|Operational status of interface $1|<p>The current operational state of the interface.</p>|`SNMP agent`|ifOperStatus[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Admin status of interface $1|<p>The desired state of the interface.</p>|`SNMP agent`|ifAdminStatus[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Alias of interface $1|<p>-</p>|`SNMP agent`|ifAlias[{#SNMPVALUE}]<p>Update: 3600</p><p>LLD</p>|
|Description of interface $1|<p>A textual string containing information about the interface. This string should include the name of the manufacturer, the product name and the version of the interface hardware/software.</p>|`SNMP agent`|ifDescr[{#SNMPVALUE}]<p>Update: 3600</p><p>LLD</p>|
|Inbound errors on interface $1|<p>For packet-oriented interfaces, the number of inbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of inbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol.</p>|`SNMP agent`|ifInErrors[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Incoming traffic on interface $1|<p>The number of octets in valid MAC frames received on this interface, including the MAC header and FCS.</p>|`SNMP agent`|ifInOctets[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Outbound errors on interface $1|<p>For packet-oriented interfaces, the number of outbound packets that could not be transmitted because of errors. For character-oriented or fixed-length interfaces, the number of outbound transmission units that could not be transmitted because of errors.</p>|`SNMP agent`|ifOutErrors[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Outgoing traffic on interface $1|<p>The number of octets transmitted in MAC frames on this interface, including the MAC header and FCS.</p>|`SNMP agent`|ifOutOctets[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Operational status was changed on {HOST.NAME} interface {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {Template APC ATS:ifOperStatus[{#SNMPVALUE}].diff(0)}=1</p><p>**Recovery expression**: </p>|information|
|Operational status was changed on {HOST.NAME} interface {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template APC ATS:ifOperStatus[{#SNMPVALUE}].diff(0)}=1</p><p>**Recovery expression**: </p>|information|
