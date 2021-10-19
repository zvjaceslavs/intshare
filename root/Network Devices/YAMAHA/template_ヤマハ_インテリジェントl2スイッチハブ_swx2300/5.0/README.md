# Temp_SWX2300

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
|Network interfaces|<p>You may also consider using IF-MIB::ifType or IF-MIB::ifAlias for discovery depending on your filtering needs. {$SNMP_COMMUNITY} is a global macro.</p>|`SNMP agent`|ifDescr<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Error Disable状態のトラップ通知設定|<p>-</p>|`SNMP agent`|ysedEnableTrap<p>Update: 600</p>|
|メモリ使用率|<p>-</p>|`SNMP agent`|yshMemoryUtil<p>Update: 180</p>|
|L2MSのトラップ通知設定|<p>-</p>|`SNMP agent`|ysl2msEnableTrap<p>Update: 600</p>|
|Device name|<p>An administratively-assigned name for this managed node. By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysName<p>Update: 3600</p>|
|メモリサイズ|<p>-</p>|`SNMP agent`|yshMemorySize<p>Update: 7200</p>|
|CPU使用率(5分間平均)|<p>-</p>|`SNMP agent`|yshCpuUtil5min<p>Update: 300</p>|
|Device uptime|<p>The time since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|sysUpTime<p>Update: 60</p>|
|Device description|<p>A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|sysDescr<p>Update: 3600</p>|
|Device contact details|<p>The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|sysContact<p>Update: 3600</p>|
|CPU使用率(1分間平均)|<p>-</p>|`SNMP agent`|yshCpuUtil1min<p>Update: 60</p>|
|CPU使用率(5秒間平均)|<p>-</p>|`SNMP agent`|yshCpuUtil5sec<p>Update: 60</p>|
|システム再起動|<p>-</p>|`SNMP agent`|ysfRestart<p>Update: 600</p>|
|Number of network interfaces|<p>The number of network interfaces (regardless of their current state) present on this system.</p>|`SNMP agent`|ifNumber<p>Update: 3600</p>|
|FlashROMサイズ|<p>-</p>|`SNMP agent`|yshFlashROMSize<p>Update: 7200</p>|
|ファームウェアのバージョン|<p>-</p>|`SNMP agent`|ysfRevision<p>Update: 3600</p>|
|起動コンフィグ|<p>-</p>|`SNMP agent`|ysfConfigFile<p>Update: 3600</p>|
|起動からの経過時間|<p>-</p>|`SNMP agent`|ysfUpTime<p>Update: 300</p>|
|Device location|<p>The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysLocation<p>Update: 3600</p>|
|Operational status of interface $1|<p>The current operational state of the interface.</p>|`SNMP agent`|ifOperStatus[{#SNMPVALUE}]<p>Update: 60</p>|
|Admin status of interface $1|<p>The desired state of the interface.</p>|`SNMP agent`|ifAdminStatus[{#SNMPVALUE}]<p>Update: 60</p>|
|Alias of interface $1|<p>-</p>|`SNMP agent`|ifAlias[{#SNMPVALUE}]<p>Update: 3600</p>|
|Description of interface $1|<p>A textual string containing information about the interface. This string should include the name of the manufacturer, the product name and the version of the interface hardware/software.</p>|`SNMP agent`|ifDescr[{#SNMPVALUE}]<p>Update: 3600</p>|
|Inbound errors on interface $1|<p>For packet-oriented interfaces, the number of inbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of inbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol.</p>|`SNMP agent`|ifInErrors[{#SNMPVALUE}]<p>Update: 60</p>|
|Incoming traffic on interface $1|<p>The number of octets in valid MAC frames received on this interface, including the MAC header and FCS.</p>|`SNMP agent`|ifInOctets[{#SNMPVALUE}]<p>Update: 60</p>|
|Outbound errors on interface $1|<p>For packet-oriented interfaces, the number of outbound packets that could not be transmitted because of errors. For character-oriented or fixed-length interfaces, the number of outbound transmission units that could not be transmitted because of errors.</p>|`SNMP agent`|ifOutErrors[{#SNMPVALUE}]<p>Update: 60</p>|
|Outgoing traffic on interface $1|<p>The number of octets transmitted in MAC frames on this interface, including the MAC header and FCS.</p>|`SNMP agent`|ifOutOctets[{#SNMPVALUE}]<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOSTNAME} has just been restarted|<p>-</p>|information|
|Operational status was changed on {HOST.NAME} interface {#SNMPVALUE}|<p>-</p>|information|
