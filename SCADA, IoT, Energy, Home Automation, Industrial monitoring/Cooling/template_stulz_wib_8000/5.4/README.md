# Stulz Climate

## Overview

Template for monitoring the Stulz WIB 8000 air conditioning system

## Author

Aleksandr Kalugin

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$MAX_RET_TEMP}|<p>Maximum return temperature</p>|`30`|Text macro|
|{$MAX_SUP_TEMP}|<p>Maximum supply temperature</p>|`20`|Text macro|
|{$MIN_RET_TEMP}|<p>Minimum return temperature</p>|`15`|Text macro|
|{$MIN_SUP_TEMP}|<p>Minimum supply temperature</p>|`5`|Text macro|
## Template links

|Name|
|----|
|ICMP Ping|
|Generic SNMP|
## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Module Data Discovery|<p>-</p>|`SNMP agent`|Module.Data.Discovery<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|SNMP agent availability|<p>-</p>|`Zabbix internal`|zabbix[host,snmp,available]<p>Update: 1m</p>|
|System location|<p>MIB: SNMPv2-MIB The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|system.location[sysLocation.0]<p>Update: 1h</p>|
|System description|<p>MIB: SNMPv2-MIB A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|system.descr[sysDescr.0]<p>Update: 1h</p>|
|System name|<p>MIB: SNMPv2-MIB An administratively-assigned name for this managed node.By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|system.name<p>Update: 1h</p>|
|Uptime|<p>MIB: SNMPv2-MIB The time (in hundredths of a second) since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|system.uptime[sysUpTime.0]<p>Update: 30s</p>|
|System object ID|<p>MIB: SNMPv2-MIB The vendor's authoritative identification of the network management subsystem contained in the entity. This value is allocated within the SMI enterprises subtree (1.3.6.1.4.1) and provides an easy and unambiguous means for determining`what kind of box' is being managed. For example, if vendor`Flintstones, Inc.' was assigned the subtree1.3.6.1.4.1.4242, it could assign the identifier 1.3.6.1.4.1.4242.1.1 to its `Fred Router'.</p>|`SNMP agent`|system.objectid[sysObjectID.0]<p>Update: 15m</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 1m</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 1m</p>|
|System contact details|<p>MIB: SNMPv2-MIB The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|system.contact[sysContact.0]<p>Update: 1h</p>|
|SNMP traps (fallback)|<p>Item is used to collect all SNMP traps unmatched by other snmptrap items</p>|`SNMP trap`|snmptrap.fallback<p>Update: 1m</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 1m</p>|
|{#MODULE_NAME}: Compressor Speed (LLD)|<p>-</p>|`SNMP agent`|compressor.speed.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#MODULE_NAME}: Limit room temp max (LLD)|<p>-</p>|`SNMP agent`|limit.room.temp.max.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#MODULE_NAME}: Supply air temperature 3 (LLD)|<p>-</p>|`SNMP agent`|supply.temperature.3.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#MODULE_NAME}: Supply air temperature 2 (LLD)|<p>-</p>|`SNMP agent`|supply.temperature.2.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#MODULE_NAME}: Supply air temperature 1 (LLD)|<p>-</p>|`SNMP agent`|supply.temperature.1.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#MODULE_NAME}: Сlimate control system status (LLD)|<p>-</p>|`SNMP agent`|stulz.status.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#MODULE_NAME}: Return air temperature (LLD)|<p>-</p>|`SNMP agent`|return.temperature.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#MODULE_NAME}: Return air temperature 3 (LLD)|<p>-</p>|`SNMP agent`|return.temperature.3.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#MODULE_NAME}: Return air temperature 2 (LLD)|<p>-</p>|`SNMP agent`|return.temperature.2.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#MODULE_NAME}: Return air temperature 1 (LLD)|<p>-</p>|`SNMP agent`|return.temperature.1.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#MODULE_NAME}: Low temperature alarm threshold (LLD)|<p>-</p>|`SNMP agent`|low.temperature.alarm.threshold.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#MODULE_NAME}: Limit room temp min (LLD)|<p>-</p>|`SNMP agent`|limit.room.temp.min.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#MODULE_NAME}: Inverter Status (LLD)|<p>-</p>|`SNMP agent`|inberter.status.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#MODULE_NAME}: Compressor Status (LLD)|<p>-</p>|`SNMP agent`|compressor.status.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#MODULE_NAME}: High temperature alarm threshold (LLD)|<p>-</p>|`SNMP agent`|high.temperature.alarm.threshold.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#MODULE_NAME}: Fans Status (LLD)|<p>-</p>|`SNMP agent`|fans.status.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#MODULE_NAME}: Fan 3 speed (LLD)|<p>-</p>|`SNMP agent`|fan.3.speed.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#MODULE_NAME}: Fan 3 runtime (LLD)|<p>-</p>|`SNMP agent`|fan.3.runtime.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#MODULE_NAME}: Fan 2 speed (LLD)|<p>-</p>|`SNMP agent`|fan.2.speed.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#MODULE_NAME}: Fan 2 runtime (LLD)|<p>-</p>|`SNMP agent`|fan.2.runtime.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#MODULE_NAME}: Fan 1 speed (LLD)|<p>-</p>|`SNMP agent`|fan.1.speed.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#MODULE_NAME}: Fan 1 runtime (LLD)|<p>-</p>|`SNMP agent`|fan.1.runtime.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#MODULE_NAME}: Evaporation pressure (LLD)|<p>-</p>|`SNMP agent`|evaporation.pressure.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#MODULE_NAME}: Cooling Setpoint (LLD)|<p>-</p>|`SNMP agent`|cooling.setpoint.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#MODULE_NAME}: Condensation pressure (LLD)|<p>-</p>|`SNMP agent`|condensation.pressure.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#MODULE_NAME}: Supply air temperature (LLD)|<p>-</p>|`SNMP agent`|supply.temperature.[{#SNMPINDEX}]<p>Update: 1m</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|{HOST.NAME}: {#MODULE_NAME}: Compressor Stopped|<p>-</p>|<p>**Expression**: max(/Stulz Climate/compressor.status.[{#SNMPINDEX}],5m)<1</p><p>**Recovery expression**: </p>|information|
|{HOST.NAME}: {#MODULE_NAME}: Cooling set point has been changed to {ITEM.VALUE}|<p>-</p>|<p>**Expression**: (last(/Stulz Climate/cooling.setpoint.[{#SNMPINDEX}],#1)<>last(/Stulz Climate/cooling.setpoint.[{#SNMPINDEX}],#2))=1</p><p>**Recovery expression**: </p>|information|
|{HOST.NAME}: {#MODULE_NAME}: Fans Stopped|<p>-</p>|<p>**Expression**: max(/Stulz Climate/fans.status.[{#SNMPINDEX}],5m)<1</p><p>**Recovery expression**: </p>|information|
|{HOST.NAME}: {#MODULE_NAME}: Inverter NOT OK|<p>-</p>|<p>**Expression**: last(/Stulz Climate/inberter.status.[{#SNMPINDEX}])<>0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature 1 is too low (<{$MIN_RET_TEMP})|<p>-</p>|<p>**Expression**: max(/Stulz Climate/return.temperature.1.[{#SNMPINDEX}],5m)<15</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature 2 is too high (>{#MAX_RET_TEMP})|<p>-</p>|<p>**Expression**: min(/Stulz Climate/return.temperature.2.[{#SNMPINDEX}],5m)>{#MAX_RET_TEMP}</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature 2 is too low (<{$MIN_RET_TEMP})|<p>-</p>|<p>**Expression**: max(/Stulz Climate/return.temperature.2.[{#SNMPINDEX}],5m)<15</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature 3 is too high (>{#MAX_RET_TEMP})|<p>-</p>|<p>**Expression**: min(/Stulz Climate/return.temperature.3.[{#SNMPINDEX}],5m)>{#MAX_RET_TEMP}</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature 3 is too low (<{$MIN_RET_TEMP})|<p>-</p>|<p>**Expression**: max(/Stulz Climate/return.temperature.3.[{#SNMPINDEX}],5m)<15</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature is too high (>{#MAX_RET_TEMP})|<p>-</p>|<p>**Expression**: min(/Stulz Climate/return.temperature.[{#SNMPINDEX}],5m)>{#MAX_RET_TEMP}</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature is too low (<{$MIN_RET_TEMP})|<p>-</p>|<p>**Expression**: max(/Stulz Climate/return.temperature.[{#SNMPINDEX}],5m)<15</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Climate Control System NOT OK|<p>-</p>|<p>**Expression**: last(/Stulz Climate/stulz.status.[{#SNMPINDEX}])<>0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature 1 is too high (>{$MAX_SUP_TEMP})|<p>-</p>|<p>**Expression**: min(/Stulz Climate/supply.temperature.1.[{#SNMPINDEX}],5m)>20</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature 1 is too low (<{$MIN_SUP_TEMP})|<p>-</p>|<p>**Expression**: max(/Stulz Climate/supply.temperature.1.[{#SNMPINDEX}],5m)<5</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature 2 is too high (>{$MAX_SUP_TEMP})|<p>-</p>|<p>**Expression**: min(/Stulz Climate/supply.temperature.2.[{#SNMPINDEX}],5m)>20</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature 2 is too low (<{$MIN_SUP_TEMP})|<p>-</p>|<p>**Expression**: max(/Stulz Climate/supply.temperature.2.[{#SNMPINDEX}],5m)<5</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature 3 is too high (>{$MAX_SUP_TEMP})|<p>-</p>|<p>**Expression**: min(/Stulz Climate/supply.temperature.3.[{#SNMPINDEX}],5m)>20</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature 3 is too low (<{$MIN_SUP_TEMP})|<p>-</p>|<p>**Expression**: max(/Stulz Climate/supply.temperature.3.[{#SNMPINDEX}],5m)<5</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature is too high (>{$MAX_SUP_TEMP})|<p>-</p>|<p>**Expression**: min(/Stulz Climate/supply.temperature.[{#SNMPINDEX}],5m)>20</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature is too low (<{$MIN_SUP_TEMP})|<p>-</p>|<p>**Expression**: max(/Stulz Climate/supply.temperature.[{#SNMPINDEX}],5m)<5</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Compressor Stopped (LLD)|<p>-</p>|<p>**Expression**: max(/Stulz Climate/compressor.status.[{#SNMPINDEX}],5m)<1</p><p>**Recovery expression**: </p>|information|
|{HOST.NAME}: {#MODULE_NAME}: Cooling set point has been changed to {ITEM.VALUE} (LLD)|<p>-</p>|<p>**Expression**: (last(/Stulz Climate/cooling.setpoint.[{#SNMPINDEX}],#1)<>last(/Stulz Climate/cooling.setpoint.[{#SNMPINDEX}],#2))=1</p><p>**Recovery expression**: </p>|information|
|{HOST.NAME}: {#MODULE_NAME}: Fans Stopped (LLD)|<p>-</p>|<p>**Expression**: max(/Stulz Climate/fans.status.[{#SNMPINDEX}],5m)<1</p><p>**Recovery expression**: </p>|information|
|{HOST.NAME}: {#MODULE_NAME}: Inverter NOT OK (LLD)|<p>-</p>|<p>**Expression**: last(/Stulz Climate/inberter.status.[{#SNMPINDEX}])<>0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature 1 is too low (<{$MIN_RET_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: max(/Stulz Climate/return.temperature.1.[{#SNMPINDEX}],5m)<15</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature 2 is too high (>{#MAX_RET_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: min(/Stulz Climate/return.temperature.2.[{#SNMPINDEX}],5m)>{#MAX_RET_TEMP}</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature 2 is too low (<{$MIN_RET_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: max(/Stulz Climate/return.temperature.2.[{#SNMPINDEX}],5m)<15</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature 3 is too high (>{#MAX_RET_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: min(/Stulz Climate/return.temperature.3.[{#SNMPINDEX}],5m)>{#MAX_RET_TEMP}</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature 3 is too low (<{$MIN_RET_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: max(/Stulz Climate/return.temperature.3.[{#SNMPINDEX}],5m)<15</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature is too high (>{#MAX_RET_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: min(/Stulz Climate/return.temperature.[{#SNMPINDEX}],5m)>{#MAX_RET_TEMP}</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Return air temperature is too low (<{$MIN_RET_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: max(/Stulz Climate/return.temperature.[{#SNMPINDEX}],5m)<15</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Climate Control System NOT OK (LLD)|<p>-</p>|<p>**Expression**: last(/Stulz Climate/stulz.status.[{#SNMPINDEX}])<>0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature 1 is too high (>{$MAX_SUP_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: min(/Stulz Climate/supply.temperature.1.[{#SNMPINDEX}],5m)>20</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature 1 is too low (<{$MIN_SUP_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: max(/Stulz Climate/supply.temperature.1.[{#SNMPINDEX}],5m)<5</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature 2 is too high (>{$MAX_SUP_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: min(/Stulz Climate/supply.temperature.2.[{#SNMPINDEX}],5m)>20</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature 2 is too low (<{$MIN_SUP_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: max(/Stulz Climate/supply.temperature.2.[{#SNMPINDEX}],5m)<5</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature 3 is too high (>{$MAX_SUP_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: min(/Stulz Climate/supply.temperature.3.[{#SNMPINDEX}],5m)>20</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature 3 is too low (<{$MIN_SUP_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: max(/Stulz Climate/supply.temperature.3.[{#SNMPINDEX}],5m)<5</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature is too high (>{$MAX_SUP_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: min(/Stulz Climate/supply.temperature.[{#SNMPINDEX}],5m)>20</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: {#MODULE_NAME}: Supply air temperature is too low (<{$MIN_SUP_TEMP}) (LLD)|<p>-</p>|<p>**Expression**: max(/Stulz Climate/supply.temperature.[{#SNMPINDEX}],5m)<5</p><p>**Recovery expression**: </p>|high|
