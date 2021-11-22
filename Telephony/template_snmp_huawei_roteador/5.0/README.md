# Huawei NE20S2

## Macros used

There are no macros links in this template.

## Template links

|Name|
|----|
|Template SNMP Generic|
|Template SNMP Interfaces|
|Template SNMP Device|
## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|BGP4 Peer(s)|<p>-</p>|`SNMP agent`|BgpPeerRemoteAddr<p>Update: 300</p>|
|BGP4 Peer(s) Name(s)|<p>-</p>|`SNMP agent`|BgpPeerRemoteName<p>Update: 300</p>|
|Network interfaces|<p>You may also consider using IF-MIB::ifType or IF-MIB::ifAlias for discovery depending on your filtering needs. {$SNMP_COMMUNITY} is a global macro.</p>|`SNMP agent`|ifDescr<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Device ESN|<p>-</p>|`SNMP agent`|hwDeviceEsn<p>Update: 7200</p>|
|Total IPv4 FIB Routes|<p>-</p>|`SNMP agent`|hwIPv4FibRoutes<p>Update: 300</p>|
|Total IPv4 RIB Routes|<p>-</p>|`SNMP agent`|hwIPv4RibRoutes<p>Update: 300</p>|
|Product Version|<p>-</p>|`SNMP agent`|hwProductVersion<p>Update: 7200</p>|
|Product Name|<p>-</p>|`SNMP agent`|hwProductName<p>Update: 7200</p>|
|Average CPU Usage (1 minute)|<p>-</p>|`SNMP agent`|hwAvgDuty1min<p>Update: 60</p>|
|AS Name for IPv4 peer {#SNMPVALUE}|<p>-</p>|`External check`|as.name["-p","{#SNMPVALUE}"]<p>Update: 300</p><p>LLD</p>|
|Administrative status for peer $1|<p>-</p>|`SNMP agent`|BgpPeerAdminStatus[{#SNMPVALUE}]<p>Update: 300</p><p>LLD</p>|
|Established time for peer $1|<p>-</p>|`SNMP agent`|BgpPeerFsmEstablishedTime[{#SNMPVALUE}]<p>Update: 300</p><p>LLD</p>|
|Total IPv4 routes from peer $1|<p>-</p>|`SNMP agent`|BgpPeerIPv4Routes[{#SNMPVALUE}]<p>Update: 300</p><p>LLD</p>|
|Remote AS for peer $1|<p>-</p>|`SNMP agent`|BgpPeerRemoteAs[{#SNMPVALUE}]<p>Update: 300</p><p>LLD</p>|
|Operational status for peer $1|<p>-</p>|`SNMP agent`|BgpPeerState[{#SNMPVALUE}]<p>Update: 300</p><p>LLD</p>|
|AS Name para o AS{#SNMPVALUE}|<p>-</p>|`External check`|as_name["-p","{#SNMPVALUE}"]<p>Update: 300</p><p>LLD</p>|
|Incoming traffic on interface $1|<p>The number of octets in valid MAC frames received on this interface, including the MAC header and FCS.</p>|`SNMP agent`|ifHCInOctets[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Outgoing traffic on interface $1|<p>The number of octets transmitted in MAC frames on this interface, including the MAC header and FCS.</p>|`SNMP agent`|ifHCOutOctets[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
|Operational status of interface $1|<p>The current operational state of the interface.</p>|`SNMP agent`|ifOperStatus[{#SNMPVALUE}]<p>Update: 60</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|O status operacional foi alterado no {HOST.NAME} na interface {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {Huawei NE20S2:ifOperStatus[{#SNMPVALUE}].diff(0)}=1</p><p>**Recovery expression**: </p>|information|
|BGP peer {#SNMPVALUE} is DOWN|<p>Trigger for peer that has a remote AS not matching {$BGP_PEER_AS} macro.</p>|<p>**Expression**: {Huawei NE20S2:BgpPeerRemoteAs[{#SNMPVALUE}].regexp({$BGP_PEER_AS})}=0 and {Huawei NE20S2:BgpPeerState[{#SNMPVALUE}].last(#3)}<>6 and {Huawei NE20S2:BgpPeerAdminStatus[{#SNMPVALUE}].last(0)}=2</p><p>**Recovery expression**: </p>|average|
|BGP peer {#SNMPVALUE} is DOWN|<p>Trigger for peer that has a remote AS matching {$BGP_PEER_AS} macro.</p>|<p>**Expression**: {Huawei NE20S2:BgpPeerRemoteAs[{#SNMPVALUE}].regexp({$BGP_PEER_AS})}=1 and {Huawei NE20S2:BgpPeerState[{#SNMPVALUE}].last(#3)}<>6 and {Huawei NE20S2:BgpPeerAdminStatus[{#SNMPVALUE}].last(0)}=2</p><p>**Recovery expression**: </p>|disaster|
|BGP peer {#SNMPVALUE} is DOWN (LLD)|<p>Trigger for peer that has a remote AS not matching {$BGP_PEER_AS} macro.</p>|<p>**Expression**: {Huawei NE20S2:BgpPeerRemoteAs[{#SNMPVALUE}].regexp({$BGP_PEER_AS})}=0 and {Huawei NE20S2:BgpPeerState[{#SNMPVALUE}].last(#3)}<>6 and {Huawei NE20S2:BgpPeerAdminStatus[{#SNMPVALUE}].last(0)}=2</p><p>**Recovery expression**: </p>|average|
|BGP peer {#SNMPVALUE} is DOWN (LLD)|<p>Trigger for peer that has a remote AS matching {$BGP_PEER_AS} macro.</p>|<p>**Expression**: {Huawei NE20S2:BgpPeerRemoteAs[{#SNMPVALUE}].regexp({$BGP_PEER_AS})}=1 and {Huawei NE20S2:BgpPeerState[{#SNMPVALUE}].last(#3)}<>6 and {Huawei NE20S2:BgpPeerAdminStatus[{#SNMPVALUE}].last(0)}=2</p><p>**Recovery expression**: </p>|disaster|
|O status operacional foi alterado no {HOST.NAME} na interface {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Huawei NE20S2:ifOperStatus[{#SNMPVALUE}].diff(0)}=1</p><p>**Recovery expression**: </p>|information|
