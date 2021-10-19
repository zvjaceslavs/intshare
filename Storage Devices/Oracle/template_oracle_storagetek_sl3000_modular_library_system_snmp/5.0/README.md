# Template SNMP Oracle SL3000

## Overview

 This is simple SNMP template for monitoring Oracle StorageTek SL3000 Modular Library System


Checks:


CapAccessibility (open allow/prevent)


CapState


ControllerHaId[1] (0=active/1=standby)


TapeCount


 


Triggers:


ControllerHA\_changestatus


 


LLD:


Checks:


DriveCellContentLabel


DriveFibreNodeName


DriveState


DriveType


Drive


RobotState


State of the robot


 


Triggers:


DriveState


RobotState

## Author

Vsevolod Sidorov

## Macros used

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
|CapAccessibility (open allow/prevent)|<p>-</p>|`SNMP agent`|slCapAccessibility<p>Update: 30</p>|
|CapState|<p>-</p>|`SNMP agent`|slCapState<p>Update: 30</p>|
|ControllerHaId[1] (0=active/1=standby)|<p>-</p>|`SNMP agent`|slControllerHaId<p>Update: 30</p>|
|TapeCount|<p>-</p>|`SNMP agent`|slTapeCount<p>Update: 30</p>|
|State of the robot [{#SNMPVALUE}] hand (cartridge =1, no cartridge =0) (LLD)|<p>State of the robot hand regarding a cartridge (cartridge =1, no cartridge =0)</p>|`SNMP agent`|RobotHandCartStatus[{#SNMPVALUE}]<p>Update: 30</p>|
|RobotState[{#SNMPVALUE}] (LLD)|<p>-</p>|`SNMP agent`|RobotState[{#SNMPVALUE}]<p>Update: 30</p>|
|DriveCellContentLabel[{#SNMPVALUE}] (LLD)|<p>Label of the cartridge in the drive</p>|`SNMP agent`|DriveCellContentLabel[{#SNMPVALUE}]<p>Update: 30</p>|
|DriveFibreNodeName[{#SNMPVALUE}] (LLD)|<p>-</p>|`SNMP agent`|DriveFibreNodeName[{#SNMPVALUE}]<p>Update: 600</p>|
|Drive[{#SNMPVALUE}]SerialNum (LLD)|<p>-</p>|`SNMP agent`|DriveSerialNum[{#SNMPVALUE}]<p>Update: 600</p>|
|DriveState[{#SNMPVALUE}] (LLD)|<p>-</p>|`SNMP agent`|DriveState[{#SNMPVALUE}]<p>Update: 30</p>|
|DriveType[{#SNMPVALUE}] (LLD)|<p>-</p>|`SNMP agent`|DriveType[{#SNMPVALUE}]<p>Update: 600</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|DriveState[{#SNMPVALUE}] is {ITEM.VALUE1}|<p>-</p>|<p>**Expression**: {Template SNMP Oracle SL3000:DriveState[{#SNMPVALUE}].str(empty)}<>1 and {Template SNMP Oracle SL3000:DriveState[{#SNMPVALUE}].str(loaded)}<>1 and {Template SNMP Oracle SL3000:DriveState[{#SNMPVALUE}].str(unloading)}<>1</p><p>**Recovery expression**: {Template SNMP Oracle SL3000:DriveState[{#SNMPVALUE}].str(empty)}=1 or {Template SNMP Oracle SL3000:DriveState[{#SNMPVALUE}].str(loaded)}=1 or {Template SNMP Oracle SL3000:DriveState[{#SNMPVALUE}].str(unloading)}=1</p>|high|
|RobotState[{#SNMPVALUE}] is {ITEM.VALUE1}|<p>-</p>|<p>**Expression**: {Template SNMP Oracle SL3000:RobotState[{#SNMPVALUE}].str(Error)}=1</p><p>**Recovery expression**: {Template SNMP Oracle SL3000:RobotState[{#SNMPVALUE}].str(Ready)}=1</p>|high|
|RobotState[{#SNMPVALUE}] is {ITEM.VALUE1} (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP Oracle SL3000:RobotState[{#SNMPVALUE}].str(Error)}=1</p><p>**Recovery expression**: {Template SNMP Oracle SL3000:RobotState[{#SNMPVALUE}].str(Ready)}=1</p>|high|
|DriveState[{#SNMPVALUE}] is {ITEM.VALUE1} (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP Oracle SL3000:DriveState[{#SNMPVALUE}].str(empty)}<>1 and {Template SNMP Oracle SL3000:DriveState[{#SNMPVALUE}].str(loaded)}<>1 and {Template SNMP Oracle SL3000:DriveState[{#SNMPVALUE}].str(unloading)}<>1</p><p>**Recovery expression**: {Template SNMP Oracle SL3000:DriveState[{#SNMPVALUE}].str(empty)}=1 or {Template SNMP Oracle SL3000:DriveState[{#SNMPVALUE}].str(loaded)}=1 or {Template SNMP Oracle SL3000:DriveState[{#SNMPVALUE}].str(unloading)}=1</p>|high|
