# Template SNMP StormShield

## Overview

Template for StormShield Firewall appliances SNMP monitoring :


- Network Interfaces  
- System services (SNMP OID may change according to StormShield OS version and enabled services, may need renumbering )  
- Signatures update status (made for SNS version 3.x,need OID renumbering for 2.x )  
- High availability status


Created for zabbix 2.4, but may work with previous version


 


 

## Author

Emmanuel Andry

## Macros used

There are no macros links in this template.

## Template links

|Name|
|----|
|Template SNMP Processors|
|Template SNMP Interfaces|
|Template SNMP Disks|
|Template SNMP Generic|
|Template SNMP Device|
## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Processors|<p>{$SNMP_COMMUNITY} is a global macro.</p>|`SNMP agent`|hrProcessorLoad<p>Update: 3600</p>|
|Disk partitions|<p>The rule will discover all disk partitions matching the global regexp "Storage devices for SNMP discovery". {$SNMP_COMMUNITY} is a global macro.</p>|`SNMP agent`|hrStorageDescr<p>Update: 3600</p>|
|Network interfaces|<p>You may also consider using IF-MIB::ifType or IF-MIB::ifAlias for discovery depending on your filtering needs. {$SNMP_COMMUNITY} is a global macro.</p>|`SNMP agent`|ifDescr<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Dialup Interfaces Number|<p>-</p>|`SNMP agent`|DialuptInterfacesNumber<p>Update: 1d</p>|
|Ethernet Interfaces Number|<p>-</p>|`SNMP agent`|EthernetInterfacesNumber<p>Update: 1d</p>|
|HA Master Availability|<p>1 for UP, 2 for DOWN</p>|`SNMP agent`|HAMasterAvailability<p>Update: 1m</p>|
|HA Master Quality|<p>Give the quality of this Firewall (-1 if you can't reach the Firewall).</p>|`SNMP agent`|HAMasterQuality<p>Update: 1m</p>|
|HA Master Serial Number|<p>-</p>|`SNMP agent`|HAMasterSerialNumber<p>Update: 1m</p>|
|HA Master Status|<p>Give the status, 1 for active, 2 for passive</p>|`SNMP agent`|HAMasterStatus<p>Update: 1m</p>|
|HA Slave Availability|<p>1 for UP, 2 for DOWN</p>|`SNMP agent`|HASlaveAvailability<p>Update: 1m</p>|
|HA Slave Quality|<p>Give the quality of this Firewall (-1 if you can't reach the Firewall).</p>|`SNMP agent`|HASlaveQuality<p>Update: 1m</p>|
|HA Slave Serial Number|<p>-</p>|`SNMP agent`|HASlaveSerialNumber<p>Update: 1d</p>|
|HA Slave Status|<p>Give the status, 1 for active, 2 for passive</p>|`SNMP agent`|HASlaveStatus<p>Update: 1m</p>|
|Number of network interfaces|<p>The number of network interfaces (regardless of their current state) present on this system.</p>|`SNMP agent`|ifNumber<p>Update: 3600</p>|
|Model|<p>-</p>|`SNMP agent`|Model<p>Update: 1d</p>|
|Serial Number|<p>-</p>|`SNMP agent`|SerialNumber<p>Update: 1d</p>|
|Service DHCP|<p>-</p>|`SNMP agent`|ServiceDHCP<p>Update: 5m</p>|
|Service HA|<p>-</p>|`SNMP agent`|ServiceHA<p>Update: 5m</p>|
|Service HTTP proxy|<p>-</p>|`SNMP agent`|ServiceHTTPproxy<p>Update: 5m</p>|
|Service SMTP proxy|<p>-</p>|`SNMP agent`|ServiceSMTPproxy<p>Update: 5m</p>|
|Service VPN IPSEC IKEv2|<p>-</p>|`SNMP agent`|ServiceVPNIPSECIKEv2<p>Update: 5m</p>|
|Service VPN SSL|<p>-</p>|`SNMP agent`|ServiceVPNSSL<p>Update: 5m</p>|
|StormShield SNMP Trap - WAN Alarms|<p>-</p>|`SNMP trap`|snmptrap[WAN]<p>Update: 0</p>|
|Software Version|<p>-</p>|`SNMP agent`|SoftwareVersion<p>Update: 1h</p>|
|Device contact details|<p>The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|sysContact<p>Update: 3600</p>|
|Device description|<p>A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|sysDescr<p>Update: 3600</p>|
|Device location|<p>The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysLocation<p>Update: 3600</p>|
|Device name|<p>An administratively-assigned name for this managed node. By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysName<p>Update: 3600</p>|
|Device uptime|<p>The time since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|sysUpTime<p>Update: 60</p>|
|Update Status : Antispam DNSRBL|<p>-</p>|`SNMP agent`|UpdateStatusAntispamDNSRBL<p>Update: 1h</p>|
|Update Status : Antispam Heuristic|<p>-</p>|`SNMP agent`|UpdateStatusAntispamHeuristic<p>Update: 1h</p>|
|Update Status : Antivirus|<p>-</p>|`SNMP agent`|UpdateStatusAntivirus<p>Update: 1h</p>|
|Update Status : GeoIP|<p>-</p>|`SNMP agent`|UpdateStatusGeoIP<p>Update: 1h</p>|
|Update Status : IPS|<p>-</p>|`SNMP agent`|UpdateStatusIPS<p>Update: 1h</p>|
|Update Status : RootCertificates|<p>-</p>|`SNMP agent`|UpdateStatusRootCertificates<p>Update: 1h</p>|
|Update Status : Vulnerability Management|<p>-</p>|`SNMP agent`|UpdateStatusVulnerabilityManagement<p>Update: 1h</p>|
|VLAN Interfaces Number|<p>-</p>|`SNMP agent`|VLANInterfacesNumber<p>Update: 1d</p>|
|Utilization of processor #$1 (LLD)|<p>The average, over the last minute, of the percentage of time that this processor was not idle. Implementations may approximate this one minute smoothing period if necessary.</p>|`SNMP agent`|hrProcessorLoad[{#SNMPINDEX}]<p>Update: 60</p>|
|Allocation units for storage $1 (LLD)|<p>The size, in bytes, of the data objects allocated from this pool. If this entry is monitoring sectors, blocks, buffers, or packets, for example, this number will commonly be greater than one. Otherwise this number will typically be one.</p>|`SNMP agent`|hrStorageAllocationUnits[{#SNMPVALUE}]<p>Update: 3600</p>|
|Description of storage $1 (LLD)|<p>A description of the type and instance of the storage described by this entry.</p>|`SNMP agent`|hrStorageDescr[{#SNMPVALUE}]<p>Update: 3600</p>|
|Total disk space on $1 (LLD)|<p>This is a calculated item, we need it to get total disk space in bytes.</p>|`Calculated`|hrStorageSizeInBytes[{#SNMPVALUE}]<p>Update: 3600</p>|
|Total disk space on $1 in units (LLD)|<p>The size of the storage represented by this entry, in units of hrStorageAllocationUnits. This object is writable to allow remote configuration of the size of the storage area in those cases where such an operation makes sense and is possible on the underlying system. For example, the amount of main memory allocated to a buffer pool might be modified or the amount of disk space allocated to virtual memory might be modified.</p>|`SNMP agent`|hrStorageSize[{#SNMPVALUE}]<p>Update: 3600</p>|
|Used disk space on $1 (LLD)|<p>This is a calculated item, we need it to get used disk space in bytes.</p>|`Calculated`|hrStorageUsedInBytes[{#SNMPVALUE}]<p>Update: 60</p>|
|Used disk space on $1 in units (LLD)|<p>The amount of the storage represented by this entry that is allocated, in units of hrStorageAllocationUnits.</p>|`SNMP agent`|hrStorageUsed[{#SNMPVALUE}]<p>Update: 60</p>|
|Operational status of interface $1 (LLD)|<p>The current operational state of the interface.</p>|`SNMP agent`|ifOperStatus[{#SNMPVALUE}]<p>Update: 60</p>|
|Admin status of interface $1 (LLD)|<p>The desired state of the interface.</p>|`SNMP agent`|ifAdminStatus[{#SNMPVALUE}]<p>Update: 60</p>|
|Alias of interface $1 (LLD)|<p>-</p>|`SNMP agent`|ifAlias[{#SNMPVALUE}]<p>Update: 3600</p>|
|Description of interface $1 (LLD)|<p>A textual string containing information about the interface. This string should include the name of the manufacturer, the product name and the version of the interface hardware/software.</p>|`SNMP agent`|ifDescr[{#SNMPVALUE}]<p>Update: 3600</p>|
|Inbound errors on interface $1 (LLD)|<p>For packet-oriented interfaces, the number of inbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of inbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol.</p>|`SNMP agent`|ifInErrors[{#SNMPVALUE}]<p>Update: 60</p>|
|Incoming traffic on interface $1 (LLD)|<p>The number of octets in valid MAC frames received on this interface, including the MAC header and FCS.</p>|`SNMP agent`|ifInOctets[{#SNMPVALUE}]<p>Update: 60</p>|
|Outbound errors on interface $1 (LLD)|<p>For packet-oriented interfaces, the number of outbound packets that could not be transmitted because of errors. For character-oriented or fixed-length interfaces, the number of outbound transmission units that could not be transmitted because of errors.</p>|`SNMP agent`|ifOutErrors[{#SNMPVALUE}]<p>Update: 60</p>|
|Outgoing traffic on interface $1 (LLD)|<p>The number of octets transmitted in MAC frames on this interface, including the MAC header and FCS.</p>|`SNMP agent`|ifOutOctets[{#SNMPVALUE}]<p>Update: 60</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Free disk space is less than 20% on volume {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {Template SNMP StormShield:hrStorageUsed[{#SNMPVALUE}].last(0)} / {Template SNMP StormShield:hrStorageSize[{#SNMPVALUE}].last(0)} > 0.8</p><p>**Recovery expression**: </p>|warning|
|Operational status was changed on {HOST.NAME} interface {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {Template SNMP StormShield:ifOperStatus[{#SNMPVALUE}].diff(0)}=1</p><p>**Recovery expression**: </p>|information|
|Free disk space is less than 20% on volume {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP StormShield:hrStorageUsed[{#SNMPVALUE}].last(0)} / {Template SNMP StormShield:hrStorageSize[{#SNMPVALUE}].last(0)} > 0.8</p><p>**Recovery expression**: </p>|warning|
|Operational status was changed on {HOST.NAME} interface {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP StormShield:ifOperStatus[{#SNMPVALUE}].diff(0)}=1</p><p>**Recovery expression**: </p>|information|
