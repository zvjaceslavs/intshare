# Template Huawei NE20S2

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
|BGP4 Peer(s)|<p>-</p>|`SNMP agent`|BgpPeerRemoteAddr<p>Update: 300</p>|
|BGP4 Peer(s) Name(s)|<p>-</p>|`SNMP agent`|BgpPeerRemoteName<p>Update: 300</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Average CPU Usage (1 minute)|<p>-</p>|`SNMP agent`|hwAvgDuty1min<p>Update: 60</p>|
|Device ESN|<p>-</p>|`SNMP agent`|hwDeviceEsn<p>Update: 7200</p>|
|Total IPv4 FIB Routes|<p>-</p>|`SNMP agent`|hwIPv4FibRoutes<p>Update: 300</p>|
|Total IPv4 RIB Routes|<p>-</p>|`SNMP agent`|hwIPv4RibRoutes<p>Update: 300</p>|
|Product Name|<p>-</p>|`SNMP agent`|hwProductName<p>Update: 7200</p>|
|Product Version|<p>-</p>|`SNMP agent`|hwProductVersion<p>Update: 7200</p>|
|Number of network interfaces|<p>The number of network interfaces (regardless of their current state) present on this system.</p>|`SNMP agent`|ifNumber<p>Update: 1h</p>|
|Device contact details|<p>The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|sysContact<p>Update: 3600</p>|
|Device description|<p>A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|sysDescr<p>Update: 3600</p>|
|Device location|<p>The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysLocation<p>Update: 3600</p>|
|Device name|<p>An administratively-assigned name for this managed node. By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysName<p>Update: 3600</p>|
|Device uptime|<p>The time since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|sysUpTime<p>Update: 60</p>|
|Operational status of interface $1 (LLD)|<p>The current operational state of the interface.</p>|`SNMP agent`|ifOperStatus[{#SNMPVALUE}]<p>Update: 60</p>|
|Incoming traffic on interface $1 (LLD)|<p>The number of octets in valid MAC frames received on this interface, including the MAC header and FCS.</p>|`SNMP agent`|ifHCInOctets[{#SNMPVALUE}]<p>Update: 60</p>|
|Outgoing traffic on interface $1 (LLD)|<p>The number of octets transmitted in MAC frames on this interface, including the MAC header and FCS.</p>|`SNMP agent`|ifHCOutOctets[{#SNMPVALUE}]<p>Update: 60</p>|
|AS Name for IPv4 peer {#SNMPVALUE} (LLD)|<p>-</p>|`External check`|as.name["-p","{#SNMPVALUE}"]<p>Update: 300</p>|
|Administrative status for peer $1 (LLD)|<p>-</p>|`SNMP agent`|BgpPeerAdminStatus[{#SNMPVALUE}]<p>Update: 300</p>|
|Established time for peer $1 (LLD)|<p>-</p>|`SNMP agent`|BgpPeerFsmEstablishedTime[{#SNMPVALUE}]<p>Update: 300</p>|
|Total IPv4 routes from peer $1 (LLD)|<p>-</p>|`SNMP agent`|BgpPeerIPv4Routes[{#SNMPVALUE}]<p>Update: 300</p>|
|Remote AS for peer $1 (LLD)|<p>-</p>|`SNMP agent`|BgpPeerRemoteAs[{#SNMPVALUE}]<p>Update: 300</p>|
|Operational status for peer $1 (LLD)|<p>-</p>|`SNMP agent`|BgpPeerState[{#SNMPVALUE}]<p>Update: 300</p>|
|AS Name para o AS{#SNMPVALUE} (LLD)|<p>-</p>|`External check`|as_name["-p","{#SNMPVALUE}"]<p>Update: 300</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|BGP peer {#SNMPVALUE} is DOWN|<p>Trigger for peer that has a remote AS not matching {$BGP_PEER_AS} macro.</p>|<p>**Expression**: {Template Huawei NE20S2:BgpPeerRemoteAs[{#SNMPVALUE}].regexp({$BGP_PEER_AS})}=0 and {Template Huawei NE20S2:BgpPeerState[{#SNMPVALUE}].last(#3)}<>6 and {Template Huawei NE20S2:BgpPeerAdminStatus[{#SNMPVALUE}].last(0)}=2</p><p>**Recovery expression**: </p>|average|
|BGP peer {#SNMPVALUE} is DOWN|<p>Trigger for peer that has a remote AS matching {$BGP_PEER_AS} macro.</p>|<p>**Expression**: {Template Huawei NE20S2:BgpPeerRemoteAs[{#SNMPVALUE}].regexp({$BGP_PEER_AS})}=1 and {Template Huawei NE20S2:BgpPeerState[{#SNMPVALUE}].last(#3)}<>6 and {Template Huawei NE20S2:BgpPeerAdminStatus[{#SNMPVALUE}].last(0)}=2</p><p>**Recovery expression**: </p>|disaster|
|O status operacional foi alterado no {HOST.NAME} na interface {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {Template Huawei NE20S2:ifOperStatus[{#SNMPVALUE}].diff(0)}=1</p><p>**Recovery expression**: </p>|information|
|O status operacional foi alterado no {HOST.NAME} na interface {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template Huawei NE20S2:ifOperStatus[{#SNMPVALUE}].diff(0)}=1</p><p>**Recovery expression**: </p>|information|
|BGP peer {#SNMPVALUE} is DOWN (LLD)|<p>Trigger for peer that has a remote AS not matching {$BGP_PEER_AS} macro.</p>|<p>**Expression**: {Template Huawei NE20S2:BgpPeerRemoteAs[{#SNMPVALUE}].regexp({$BGP_PEER_AS})}=0 and {Template Huawei NE20S2:BgpPeerState[{#SNMPVALUE}].last(#3)}<>6 and {Template Huawei NE20S2:BgpPeerAdminStatus[{#SNMPVALUE}].last(0)}=2</p><p>**Recovery expression**: </p>|average|
|BGP peer {#SNMPVALUE} is DOWN (LLD)|<p>Trigger for peer that has a remote AS matching {$BGP_PEER_AS} macro.</p>|<p>**Expression**: {Template Huawei NE20S2:BgpPeerRemoteAs[{#SNMPVALUE}].regexp({$BGP_PEER_AS})}=1 and {Template Huawei NE20S2:BgpPeerState[{#SNMPVALUE}].last(#3)}<>6 and {Template Huawei NE20S2:BgpPeerAdminStatus[{#SNMPVALUE}].last(0)}=2</p><p>**Recovery expression**: </p>|disaster|
