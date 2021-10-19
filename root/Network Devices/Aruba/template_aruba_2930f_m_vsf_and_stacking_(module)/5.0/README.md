# Template_HPE_Module Aruba 2930 VSF or Stacking

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
|ChassisTemperature|<p>-</p>|`SNMP agent`|hpChassisTemperature<p>Update: 1h</p>|
|PowerSupply|<p>-</p>|`SNMP agent`|hpicfPsState<p>Update: 1h</p>|
|VSF Stack Links|<p>-</p>|`SNMP agent`|hpeVSFStackLinks<p>Update: 1h</p>|
|Stacking|<p>-</p>|`SNMP agent`|hpeStacking<p>Update: 1h</p>|
|VSF Stack ROM Version|<p>-</p>|`SNMP agent`|hpeVSFStackROMVersion<p>Update: 1h</p>|
|VSF Stack SN|<p>-</p>|`SNMP agent`|hpeVSFStackSN<p>Update: 1d</p>|
|FanState|<p>-</p>|`SNMP agent`|hpicfFanState<p>Update: 1h</p>|
|VSF Stack Status|<p>-</p>|`SNMP agent`|hpeVSFStackStatus<p>Update: 1h</p>|
|VSF Stack OS Version|<p>-</p>|`SNMP agent`|hpeVSFStackOSVersion<p>Update: 1h</p>|
|VSF Stack Member Status|<p>-</p>|`SNMP agent`|hpeVSFStackMemberStatus<p>Update: 1h</p>|
|VSF Stack Model|<p>-</p>|`SNMP agent`|hpeVSFStackModel<p>Update: 1d</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ChassisTemperature Value $1|<p>-</p>|`SNMP agent`|hpChassisTemperatureValue[{#SNMPVALUE}.{#SNMPINDEX}]<p>Update: 1m</p>|
|PowerSupply $1|<p>-</p>|`SNMP agent`|hpicfPsState[{#SNMPVALUE}.{#SNMPINDEX}]<p>Update: 1m</p>|
|VSF Stack Link $1|<p>-</p>|`SNMP agent`|hpeVSFStackLink[{#SNMPVALUE}]<p>Update: 1m</p>|
|Stacking Meber State $1|<p>-</p>|`SNMP agent`|hpicfVsfVCMemberState[{#SNMPVALUE}.{#SNMPINDEX}]<p>Update: 1m</p>|
|Stacking Admin Status|<p>-</p>|`SNMP agent`|hpStackSwitchAdminStatus.0<p>Update: 1m</p>|
|Stacking Oper Status|<p>-</p>|`SNMP agent`|hpStackSwitchOperStatus.0<p>Update: 1m</p>|
|VSF Stack ROM Version $1|<p>-</p>|`SNMP agent`|hpeVSFStackROMVersion[{#SNMPINDEX}]<p>Update: 1h</p>|
|VSF Stack Seriennummer $1|<p>-</p>|`SNMP agent`|hpeSerialnumber[{#SNMPINDEX}]<p>Update: 5m</p>|
|FanState $1|<p>-</p>|`SNMP agent`|hpicfFanState[{#SNMPVALUE}.{#SNMPINDEX}]<p>Update: 1m</p>|
|VSF Stack Admin Status|<p>-</p>|`SNMP agent`|hpicfVsfVCAdminStatus[{#SNMPINDEX}]<p>Update: 5m</p>|
|VSF Stack Oper Status|<p>-</p>|`SNMP agent`|hpicfVsfVCOperStatus[{#SNMPINDEX}]<p>Update: 5m</p>|
|VSF Stack OS Version $1|<p>-</p>|`SNMP agent`|hpeVSFStackOSVersion[{#SNMPINDEX}]<p>Update: 10m</p>|
|VSF Stack VC Member Status $1|<p>-</p>|`SNMP agent`|hpeVSFStackVCMeberStatus[{#SNMPINDEX}]<p>Update: 1m</p>|
|VSF Stack Model $1|<p>-</p>|`SNMP agent`|hpeVSFStackModel[{#SNMPINDEX}]<p>Update: 1h</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Temperature is over 50 °C|<p>-</p>|high|
|Power Supply State not OK|<p>-</p>|high|
|Keep-alive failure with peer port|<p>-</p>|high|
|Stacking Admin Status disabled|<p>-</p>|high|
|Stacking Oper Status not active|<p>-</p>|high|
|Fan State not OK|<p>-</p>|high|
|VSF Admin Status disabled|<p>-</p>|high|
|VSF Oper Status not active|<p>-</p>|high|
