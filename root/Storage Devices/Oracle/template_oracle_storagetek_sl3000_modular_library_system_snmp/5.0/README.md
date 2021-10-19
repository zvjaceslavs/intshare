# Template SNMP Oracle SL3000

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMMUNITY}|<p>-</p>|`snmpTech50`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Robot|<p>-</p>|`SNMP agent`|Robotindex<p>Update: 30</p>|
|Drive|<p>-</p>|`SNMP agent`|DriveIndex<p>Update: 30</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|CapState|<p>-</p>|`SNMP agent`|slCapState<p>Update: 30</p>|
|CapAccessibility (open allow/prevent)|<p>-</p>|`SNMP agent`|slCapAccessibility<p>Update: 30</p>|
|ControllerHaId[1] (0=active/1=standby)|<p>-</p>|`SNMP agent`|slControllerHaId<p>Update: 30</p>|
|TapeCount|<p>-</p>|`SNMP agent`|slTapeCount<p>Update: 30</p>|
|State of the robot [{#SNMPVALUE}] hand (cartridge =1, no cartridge =0)|<p>State of the robot hand regarding a cartridge (cartridge =1, no cartridge =0)</p>|`SNMP agent`|RobotHandCartStatus[{#SNMPVALUE}]<p>Update: 30</p>|
|RobotState[{#SNMPVALUE}]|<p>-</p>|`SNMP agent`|RobotState[{#SNMPVALUE}]<p>Update: 30</p>|
|DriveCellContentLabel[{#SNMPVALUE}]|<p>Label of the cartridge in the drive</p>|`SNMP agent`|DriveCellContentLabel[{#SNMPVALUE}]<p>Update: 30</p>|
|DriveFibreNodeName[{#SNMPVALUE}]|<p>-</p>|`SNMP agent`|DriveFibreNodeName[{#SNMPVALUE}]<p>Update: 600</p>|
|Drive[{#SNMPVALUE}]SerialNum|<p>-</p>|`SNMP agent`|DriveSerialNum[{#SNMPVALUE}]<p>Update: 600</p>|
|DriveState[{#SNMPVALUE}]|<p>-</p>|`SNMP agent`|DriveState[{#SNMPVALUE}]<p>Update: 30</p>|
|DriveType[{#SNMPVALUE}]|<p>-</p>|`SNMP agent`|DriveType[{#SNMPVALUE}]<p>Update: 600</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|ControllerHA_changestatus|<p>-</p>|high|
|RobotState[{#SNMPVALUE}] is {ITEM.VALUE1}|<p>-</p>|high|
|DriveState[{#SNMPVALUE}] is {ITEM.VALUE1}|<p>-</p>|high|
