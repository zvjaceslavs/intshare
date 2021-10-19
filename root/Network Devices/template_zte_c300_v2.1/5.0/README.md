# Template ICMP Ping GPON

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
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 1s</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 1s</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 1s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Unavailable by ICMP|<p>-</p>|disaster|
|ICMP loss {ITEM.LASTVALUE1}%|<p>-</p>|average|
|ICMP reply {ITEM.LASTVALUE1}ms|<p>-</p>|warning|
# Template SNMP Device GPON PARKS

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
|Network interfaces|<p>-</p>|`SNMP agent`|ifDescr<p>Update: 1d</p>|
|ONUs|<p>-</p>|`SNMP agent`|onuAlias<p>Update: 1d</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|CPU Load|<p>-</p>|`SNMP agent`|cpu-la<p>Update: 10m</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 1s</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 1s</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 1s</p>|
|Memory|<p>-</p>|`Calculated`|memory<p>Update: 10m</p>|
|Memory Total|<p>-</p>|`SNMP agent`|memory-total<p>Update: 1h</p>|
|Memory Used|<p>-</p>|`SNMP agent`|memory-used<p>Update: 10m</p>|
|Device contact details|<p>The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|sysContact<p>Update: 1d</p>|
|Device description|<p>A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|sysDescr<p>Update: 1d</p>|
|Device location|<p>The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysLocation<p>Update: 1d</p>|
|Device name|<p>An administratively-assigned name for this managed node. By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysName<p>Update: 1d</p>|
|Temperature|<p>-</p>|`SNMP agent`|temperature<p>Update: 10m</p>|
|Uptime|<p>-</p>|`SNMP agent`|uptime<p>Update: 10m</p>|
|Incoming traffic on interface $1|<p>-</p>|`SNMP agent`|ifInOctets[{#SNMPVALUE}]<p>Update: 10m</p>|
|Operational status of interface $1|<p>-</p>|`SNMP agent`|ifOperStatus[{#SNMPVALUE}]<p>Update: 10m</p>|
|Outgoing traffic on interface $1|<p>-</p>|`SNMP agent`|ifOutOctets[{#SNMPVALUE}]<p>Update: 10m</p>|
|ONU $1 DOWNSTREAM SIGNAL|<p>-</p>|`SNMP agent`|onuDwRx[{#SNMPVALUE}]<p>Update: 600s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Memory above 85%|<p>-</p>|high|
|CPU above 85%|<p>-</p>|high|
|Device has rebooted|<p>Device rebooted in the last 2min</p>|high|
|Unavailable by ICMP|<p>-</p>|disaster|
|ICMP loss {ITEM.LASTVALUE1}%|<p>-</p>|average|
|ICMP reply {ITEM.LASTVALUE1}ms|<p>-</p>|warning|
|Interface {#SNMPVALUE} operational status changed|<p>-</p>|average|
|ONU {#SNMPVALUE} LOW SIGNAL|<p>-</p>|information|
# Template SNMP Device GPON ZTE fw 2.1

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
|OLT Cards|<p>-</p>|`SNMP agent`|cardindex<p>Update: 1d;wd1-5h3</p>|
|Network interfaces|<p>-</p>|`SNMP agent`|ifDescr<p>Update: 1d;wd1-5h4</p>|
|ONUs|<p>-</p>|`SNMP agent`|onuindex<p>Update: 1d;wd1-5h2</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 1s</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 1s</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 1s</p>|
|OLT Current #0|<p>-</p>|`SNMP agent`|olt[current0]<p>Update: 1m</p>|
|OLT Current #1|<p>-</p>|`SNMP agent`|olt[current1]<p>Update: 1m</p>|
|OLT Power #0|<p>-</p>|`SNMP agent`|olt[power0]<p>Update: 1m</p>|
|OLT Power #1|<p>-</p>|`SNMP agent`|olt[power1]<p>Update: 1m</p>|
|OLT Temperature|<p>-</p>|`SNMP agent`|olt[temperature]<p>Update: 1m</p>|
|OLT Voltage #0|<p>-</p>|`SNMP agent`|olt[voltage0]<p>Update: 1m</p>|
|OLT Voltage #1|<p>-</p>|`SNMP agent`|olt[voltage1]<p>Update: 1m</p>|
|Traps UNMATCHED|<p>-</p>|`SNMP trap`|snmptrap.fallback<p>Update: 0</p>|
|Traps Login|<p>-</p>|`SNMP trap`|snmptrap["zte\.1015\.1\.1\.3\.53\.1\.3\.2"]<p>Update: 0</p>|
|Traps Looping|<p>ONU detects a loop at the Ethernet UNI Varbinds: 0. zxAnGponRmEthUniExpectedType (INTEGER32) The following coding is used for this attribute: 0x00 = by autosensing, 0x01 to 0xFE (1 to 254) = one of the values from Table 3 that is compatible with the type of the LIM. Upon autonomous instantiation, the value 0x00 is used.</p>|`SNMP trap`|snmptrap["zxAnGponRmEthUniLoopIndicat"]<p>Update: 0</p>|
|Traps DGi|<p>ONU is powering off imminently due to loss of power to the ONU itself. Varbinds: 0. zxAnGponRmOnuSerialNum (OCTETSTR) The serial number is unique for each ONU. It is defined in [ITU-T G.984.3] and [ITU-T G.987.3] and contains the vendor ID and version number. The first four bytes are an ASCII-encoded four-letter vendor ID. The second four bytes are a binary encoded serial number, under the control of the ONU vendor.</p>|`SNMP trap`|snmptrap["zxGponOltDGi"]<p>Update: 0</p>|
|Traps LOAMi|<p>LOAMi is Loss of PLOAM for ONUi. Send 3 times Deactivate_ONU-ID messages. Generate Loss_of_phy_layer_I notification. Varbinds: 0. zxAnGponOnuMgmtName (OCTETSTR) The name of the ONU. 1. zxAnGponOnuMgmtTypeName (OCTETSTR) The ONU type name which should refer to the entry of zxAnPonOnuTypeTable. 2. zxAnGponOnuMgmtDesc (OCTETSTR) The description of the ONU. 3. zxAnGponOnuMgmtRegistrationInfo (OCTETSTR) ONU registration information. This attribute is made up of registration mode and registration values. Commas are used to separate registration mode and registration values. A number is used to represent registration mode of the attribute. The number's value is on the list of zxAnGponOnuMgmtRegMode defined values. Correspondingly, the registration values' formats are also defined in zxAnGponOnuMgmtRegMode's description. The valid ONU registration information formats are as follows: 1, SN 2, password 3, SN,password 4, register ID 5, register ID,8021x 6, register ID,mutual 7, hex password 8, SN,hex password 9, LOID 10, LOID,password 11, SN,register ID 12, PSK It's used for trap only. When read this object always returns SN.</p>|`SNMP trap`|snmptrap["zxGponOltLOAMi"]<p>Update: 0</p>|
|Traps LOFi|<p>LOFi is Loss of Frame of ONUi. Send 3 times Deactivate_ONU-ID messages. Generate Loss_of_phy_layer_I notification. Varbinds: 0. zxAnGponOnuMgmtName (OCTETSTR) The name of the ONU. 1. zxAnGponOnuMgmtTypeName (OCTETSTR) The ONU type name which should refer to the entry of zxAnPonOnuTypeTable. 2. zxAnGponOnuMgmtDesc (OCTETSTR) The description of the ONU. 3. zxAnGponOnuMgmtRegistrationInfo (OCTETSTR) ONU registration information. This attribute is made up of registration mode and registration values. Commas are used to separate registration mode and registration values. A number is used to represent registration mode of the attribute. The number's value is on the list of zxAnGponOnuMgmtRegMode defined values. Correspondingly, the registration values' formats are also defined in zxAnGponOnuMgmtRegMode's description. The valid ONU registration information formats are as follows: 1, SN 2, password 3, SN,password 4, register ID 5, register ID,8021x 6, register ID,mutual 7, hex password 8, SN,hex password 9, LOID 10, LOID,password 11, SN,register ID 12, PSK It's used for trap only. When read this object always returns SN.</p>|`SNMP trap`|snmptrap["zxGponOltLOFi"]<p>Update: 0</p>|
|Traps LOSi|<p>LOSi is Loss of Signal for ONUi. Generate notification. Varbinds: 0. zxAnGponOnuMgmtName (OCTETSTR) The name of the ONU. 1. zxAnGponOnuMgmtTypeName (OCTETSTR) The ONU type name which should refer to the entry of zxAnPonOnuTypeTable. 2. zxAnGponOnuMgmtDesc (OCTETSTR) The description of the ONU. 3. zxAnGponOnuMgmtRegistrationInfo (OCTETSTR) ONU registration information. This attribute is made up of registration mode and registration values. Commas are used to separate registration mode and registration values. A number is used to represent registration mode of the attribute. The number's value is on the list of zxAnGponOnuMgmtRegMode defined values. Correspondingly, the registration values' formats are also defined in zxAnGponOnuMgmtRegMode's description. The valid ONU registration information formats are as follows: 1, SN 2, password 3, SN,password 4, register ID 5, register ID,8021x 6, register ID,mutual 7, hex password 8, SN,hex password 9, LOID 10, LOID,password 11, SN,register ID 12, PSK It's used for trap only. When read this object always returns SN. 4. zxAnPonProtectGroupName</p>|`SNMP trap`|snmptrap["zxGponOltLOSi|zxGponOltLosi"]<p>Update: 0</p>|
|Traps MEMi|<p>MEMi is Message_Error Message from ONUi. Varbinds: 0. zxAnGponOnuMgmtName (OCTETSTR) The name of the ONU. 1. zxAnGponOnuMgmtTypeName (OCTETSTR) The ONU type name which should refer to the entry of zxAnPonOnuTypeTable. 2. zxAnGponOnuMgmtDesc (OCTETSTR) The description of the ONU. 3. zxAnGponOnuMgmtRegistrationInfo (OCTETSTR) ONU registration information. This attribute is made up of registration mode and registration values. Commas are used to separate registration mode and registration values. A number is used to represent registration mode of the attribute. The number's value is on the list of zxAnGponOnuMgmtRegMode defined values. Correspondingly, the registration values' formats are also defined in zxAnGponOnuMgmtRegMode's description. The valid ONU registration information formats are as follows: 1, SN 2, password 3, SN,password 4, register ID 5, register ID,8021x 6, register ID,mutual 7, hex password 8, SN,hex password 9, LOID 10, LOID,password 11, SN,register ID 12, PSK It's used for trap only. When read this object always returns SN.</p>|`SNMP trap`|snmptrap["zxGponOltMEMi"]<p>Update: 0</p>|
|Traps RDIi|<p>RDIi is Remote Defect Indication of ONUi. Varbinds: 0. zxAnGponOnuMgmtName (OCTETSTR) The name of the ONU. 1. zxAnGponOnuMgmtTypeName (OCTETSTR) The ONU type name which should refer to the entry of zxAnPonOnuTypeTable. 2. zxAnGponOnuMgmtDesc (OCTETSTR) The description of the ONU. 3. zxAnGponOnuMgmtRegistrationInfo (OCTETSTR) ONU registration information. This attribute is made up of registration mode and registration values. Commas are used to separate registration mode and registration values. A number is used to represent registration mode of the attribute. The number's value is on the list of zxAnGponOnuMgmtRegMode defined values. Correspondingly, the registration values' formats are also defined in zxAnGponOnuMgmtRegMode's description. The valid ONU registration information formats are as follows: 1, SN 2, password 3, SN,password 4, register ID 5, register ID,8021x 6, register ID,mutual 7, hex password 8, SN,hex password 9, LOID 10, LOID,password 11, SN,register ID 12, PSK It's used for trap only. When read this object always returns SN.</p>|`SNMP trap`|snmptrap["zxGponOltRDIi"]<p>Update: 0</p>|
|Traps SDi|<p>SDi is Signal Degraded of ONUi. Varbinds: 0. zxAnGponOnuMgmtName (OCTETSTR) The name of the ONU. 1. zxAnGponOnuMgmtTypeName (OCTETSTR) The ONU type name which should refer to the entry of zxAnPonOnuTypeTable. 2. zxAnGponOnuMgmtDesc (OCTETSTR) The description of the ONU. 3. zxAnGponOnuMgmtRegistrationInfo (OCTETSTR) ONU registration information. This attribute is made up of registration mode and registration values. Commas are used to separate registration mode and registration values. A number is used to represent registration mode of the attribute. The number's value is on the list of zxAnGponOnuMgmtRegMode defined values. Correspondingly, the registration values' formats are also defined in zxAnGponOnuMgmtRegMode's description. The valid ONU registration information formats are as follows: 1, SN 2, password 3, SN,password 4, register ID 5, register ID,8021x 6, register ID,mutual 7, hex password 8, SN,hex password 9, LOID 10, LOID,password 11, SN,register ID 12, PSK It's used for trap only. When read this object always returns SN.</p>|`SNMP trap`|snmptrap["zxGponOltSDi"]<p>Update: 0</p>|
|Traps SFi|<p>SFi is Signal Fail of ONUi. Send 3 times Deactivate_ONU-ID messages. Generate Loss_of_phy_layer_I notification. Varbinds: 0. zxAnGponOnuMgmtName (OCTETSTR) The name of the ONU. 1. zxAnGponOnuMgmtTypeName (OCTETSTR) The ONU type name which should refer to the entry of zxAnPonOnuTypeTable. 2. zxAnGponOnuMgmtDesc (OCTETSTR) The description of the ONU. 3. zxAnGponOnuMgmtRegistrationInfo (OCTETSTR) ONU registration information. This attribute is made up of registration mode and registration values. Commas are used to separate registration mode and registration values. A number is used to represent registration mode of the attribute. The number's value is on the list of zxAnGponOnuMgmtRegMode defined values. Correspondingly, the registration values' formats are also defined in zxAnGponOnuMgmtRegMode's description. The valid ONU registration information formats are as follows: 1, SN 2, password 3, SN,password 4, register ID 5, register ID,8021x 6, register ID,mutual 7, hex password 8, SN,hex password 9, LOID 10, LOID,password 11, SN,register ID 12, PSK It's used for trap only. When read this object always returns SN.</p>|`SNMP trap`|snmptrap["zxGponOltSFi"]<p>Update: 0</p>|
|Traps SUFi|<p>SUFi is Start-up Failure of ONUi. Send 3 times Deactivate_ONU-ID messages. Varbinds: 0. zxAnGponOnuMgmtName (OCTETSTR) The name of the ONU. 1. zxAnGponOnuMgmtTypeName (OCTETSTR) The ONU type name which should refer to the entry of zxAnPonOnuTypeTable. 2. zxAnGponOnuMgmtDesc (OCTETSTR) The description of the ONU. 3. zxAnGponOnuMgmtRegistrationInfo (OCTETSTR) ONU registration information. This attribute is made up of registration mode and registration values. Commas are used to separate registration mode and registration values. A number is used to represent registration mode of the attribute. The number's value is on the list of zxAnGponOnuMgmtRegMode defined values. Correspondingly, the registration values' formats are also defined in zxAnGponOnuMgmtRegMode's description. The valid ONU registration information formats are as follows: 1, SN 2, password 3, SN,password 4, register ID 5, register ID,8021x 6, register ID,mutual 7, hex password 8, SN,hex password 9, LOID 10, LOID,password 11, SN,register ID 12, PSK It's used for trap only. When read this object always returns SN.</p>|`SNMP trap`|snmptrap["zxGponOltSUFi"]<p>Update: 0</p>|
|Traps Onu Uni Lan Los|<p>No carrier at the Ethernet UNI Varbinds: 0. zxAnGponRmEthUniExpectedType (INTEGER32) The following coding is used for this attribute: 0x00 = by autosensing, 0x01 to 0xFE (1 to 254) = one of the values from Table 3 that is compatible with the type of the LIM. Upon autonomous instantiation, the value 0x00 is used.</p>|`SNMP trap`|snmptrap["zxGponRootMib\.50\.6\.1\.1\.1"]<p>Update: 0</p>|
|Traps UnCfg|<p>-</p>|`SNMP trap`|snmptrap["zxGponUnCfg"]<p>Update: 0</p>|
|Device contact details|<p>The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|sysContact<p>Update: 1d</p>|
|Device description|<p>A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|sysDescr<p>Update: 1d</p>|
|Device location|<p>The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysLocation<p>Update: 1d</p>|
|Device name|<p>An administratively-assigned name for this managed node. By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysName<p>Update: 1d</p>|
|Uptime|<p>-</p>|`SNMP agent`|uptime<p>Update: 10m</p>|
|OLT CARD CPU LOAD {#SNMPVALUE} $1|<p>-</p>|`SNMP agent`|cardcpu[{#SNMPINDEX}]<p>Update: 60s</p>|
|OLT CARD MEMORY {#SNMPVALUE} $1|<p>-</p>|`SNMP agent`|cardmem[{#SNMPINDEX}]<p>Update: 60s</p>|
|OLT CARD OPERATIONAL STATUS {#SNMPVALUE} $1|<p>-</p>|`SNMP agent`|cardoperstat[{#SNMPINDEX}]<p>Update: 60s</p>|
|OLT CARD STANDBY STATUS {#SNMPVALUE} $1|<p>-</p>|`SNMP agent`|cardstandby[{#SNMPINDEX}]<p>Update: 60s</p>|
|Incoming traffic on interface $1|<p>-</p>|`SNMP agent`|ifInOctets[{#SNMPVALUE}]<p>Update: 10m</p>|
|Operational status of interface $1|<p>-</p>|`SNMP agent`|ifOperStatus[{#SNMPVALUE}]<p>Update: 10m</p>|
|Outgoing traffic on interface $1|<p>-</p>|`SNMP agent`|ifOutOctets[{#SNMPVALUE}]<p>Update: 10m</p>|
|rx 1310nm {#ONUDESC}|<p>-</p>|`SNMP agent`|rx1310[{#SNMPINDEX}]<p>Update: 1h</p>|
|rx 1490nm {#ONUDESC}|<p>-</p>|`SNMP agent`|rx1490[{#SNMPINDEX}]<p>Update: 1h</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Unavailable by ICMP|<p>-</p>|disaster|
|ICMP loss {ITEM.LASTVALUE1}%|<p>-</p>|average|
|ICMP reply {ITEM.LASTVALUE1}ms|<p>-</p>|warning|
|Temperature {ITEM.LASTVALUE1}|<p>-</p>|high|
|Temperature {ITEM.LASTVALUE1}|<p>-</p>|disaster|
|{HOST.NAME} Rebooted|<p>Device rebooted in the last 2min</p>|high|
|CARD {#SNMPVALUE} {#SNMPINDEX} CPU too high!|<p>-</p>|high|
|CARD {#SNMPVALUE} {#SNMPINDEX} MEMORY too high!|<p>-</p>|high|
|CARD {#SNMPVALUE} operational status changed|<p>-</p>|high|
|CARD {#SNMPVALUE} standby status changed|<p>-</p>|high|
|Interface {#SNMPVALUE} operational status changed|<p>-</p>|high|
|SIGNAL LOW rx 1310nm {#ONUDESC}|<p>-</p>|information|
|SIGNAL LOW rx 1490nm {#ONUDESC}|<p>-</p>|information|
