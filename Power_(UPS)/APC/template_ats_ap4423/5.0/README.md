# Template APC ATS

## Description

APC Rack Automatic Transfer Switches (rack ATS) provide reliable, redundant rack mount power to single-corded equipment. The rack ATS has dual input power cords supplying power to the connected load. If the primary power source becomes unavailable, the rack ATS will seamlessly source power from the secondary source without interrupting critical loads.

## Overview

APC ATS Template 


Model : AP4423


Update APC To the Last Version. otherwise Snmpget wouldnt work fine.


 



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
|Internal APC Sensor|<p>-</p>|`SNMP agent`|apc18953A<p>Update: 5</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|atsInputVoltage.1|<p>-</p>|`SNMP agent`|atsInputVoltage.1.1.1<p>Update: 30s</p>|
|atsInputVoltage.2|<p>-</p>|`SNMP agent`|atsInputVoltage.2.1.1<p>Update: 30s</p>|
|#atsNumInputs|<p>-</p>|`SNMP agent`|atsNumInputs.0<p>Update: 30s</p>|
|atsOutputCurrent|<p>-</p>|`SNMP agent`|atsOutputCurrent.1.1.1<p>Update: 30s</p>|
|atsOutputVoltage|<p>-</p>|`SNMP agent`|atsOutputVoltage.1.1.1<p>Update: 30s</p>|
|Operational status of interface $1|<p>The current operational state of the interface.</p>|`SNMP agent`|ifOperStatus[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Admin status of interface $1|<p>The desired state of the interface.</p>|`SNMP agent`|ifAdminStatus[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Alias of interface $1|<p>-</p>|`SNMP agent`|ifAlias[{#SNMPVALUE}]<p>Update: 3600</p><p>LLD</p>|
|Description of interface $1|<p>A textual string containing information about the interface. This string should include the name of the manufacturer, the product name and the version of the interface hardware/software.</p>|`SNMP agent`|ifDescr[{#SNMPVALUE}]<p>Update: 3600</p><p>LLD</p>|
|Inbound errors on interface $1|<p>For packet-oriented interfaces, the number of inbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of inbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol.</p>|`SNMP agent`|ifInErrors[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Incoming traffic on interface $1|<p>The number of octets in valid MAC frames received on this interface, including the MAC header and FCS.</p>|`SNMP agent`|ifInOctets[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Outbound errors on interface $1|<p>For packet-oriented interfaces, the number of outbound packets that could not be transmitted because of errors. For character-oriented or fixed-length interfaces, the number of outbound transmission units that could not be transmitted because of errors.</p>|`SNMP agent`|ifOutErrors[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Outgoing traffic on interface $1|<p>The number of octets transmitted in MAC frames on this interface, including the MAC header and FCS.</p>|`SNMP agent`|ifOutOctets[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|atsOutputVoltage|<p>{#SNMPVALUE}</p>|`SNMP agent`|atsOutputVoltage.["{#SNMPINDEX}"]<p>Update: 5</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Operational status was changed on {HOST.NAME} interface {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {Template APC ATS:ifOperStatus[{#SNMPVALUE}].diff(0)}=1</p><p>**Recovery expression**: </p>|information|
|Operational status was changed on {HOST.NAME} interface {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template APC ATS:ifOperStatus[{#SNMPVALUE}].diff(0)}=1</p><p>**Recovery expression**: </p>|information|
