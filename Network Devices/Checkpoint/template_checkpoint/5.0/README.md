# Template CheckPoint SNMP

## Macros used

There are no macros links in this template.

## Template links

|Name|
|----|
|Template SNMP Interfaces|
|Template SNMP Disks|
|Template SNMP Generic|
|Template SNMP Device|
## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|HA Status|<p>-</p>|`SNMP agent`|haProblemName<p>Update: 3600</p>|
|Disk partitions|<p>The rule will discover all disk partitions matching the global regexp "Storage devices for SNMP discovery". {$SNMP_COMMUNITY} is a global macro.</p>|`SNMP agent`|hrStorageDescr<p>Update: 3600</p>|
|Temperature|<p>-</p>|`SNMP agent`|tempartureSensorTable<p>Update: 3600</p>|
|Processor Discovery|<p>-</p>|`SNMP agent`|multiProc<p>Update: 240</p>|
|FanState|<p>-</p>|`SNMP agent`|fanSpeedSensorTable<p>Update: 3600</p>|
|Network interfaces|<p>You may also consider using IF-MIB::ifType or IF-MIB::ifAlias for discovery depending on your filtering needs. {$SNMP_COMMUNITY} is a global macro.</p>|`SNMP agent`|ifDescr<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Firewall Policy Install Time|<p>-</p>|`SNMP agent`|fwInstallTime<p>Update: 900</p>|
|Last Install Policy time|<p>-</p>|`SNMP agent`|fwInstallTime1<p>Update: 600</p>|
|Firewall Module State|<p>-</p>|`SNMP agent`|fwModuleState<p>Update: 900</p>|
|Number of current connections|<p>-</p>|`SNMP agent`|fwNumConn<p>Update: 120</p>|
|Policy name|<p>-</p>|`SNMP agent`|fwPolicyName<p>Update: 600</p>|
|High Availability State|<p>-</p>|`SNMP agent`|haState<p>Update: 900</p>|
|High Availability Mode|<p>-</p>|`SNMP agent`|haWorkMode<p>Update: 900</p>|
|Number of network interfaces|<p>The number of network interfaces (regardless of their current state) present on this system.</p>|`SNMP agent`|ifNumber<p>Update: 3600</p>|
|Memory Used|<p>-</p>|`SNMP agent`|memActiveReal<p>Update: 120</p>|
|Memory Free|<p>-</p>|`SNMP agent`|memFreeReal<p>Update: 120</p>|
|Memory Total|<p>-</p>|`SNMP agent`|memTotalReal<p>Update: 120</p>|
|Manufacturer|<p>-</p>|`SNMP agent`|svnApplianceManufacturer<p>Update: 30</p>|
|Appliance model|<p>-</p>|`SNMP agent`|svnApplianceProductName<p>Update: 30</p>|
|Appliance serial number|<p>-</p>|`SNMP agent`|svnApplianceSerialNumber<p>Update: 30</p>|
|Product Version|<p>-</p>|`SNMP agent`|svnVersion<p>Update: 3600</p>|
|Device contact details|<p>The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|sysContact<p>Update: 3600</p>|
|Device description|<p>A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|sysDescr<p>Update: 3600</p>|
|Device location|<p>The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysLocation<p>Update: 3600</p>|
|Device name|<p>An administratively-assigned name for this managed node. By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysName<p>Update: 3600</p>|
|Device uptime|<p>The time since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|sysUpTime<p>Update: 60</p>|
|HA Problem Status [{#SNMPVALUE}] (LLD)|<p>-</p>|`SNMP agent`|haProblemStatus[{#SNMPVALUE}]<p>Update: 120</p>|
|Allocation units for storage $1 (LLD)|<p>The size, in bytes, of the data objects allocated from this pool. If this entry is monitoring sectors, blocks, buffers, or packets, for example, this number will commonly be greater than one. Otherwise this number will typically be one.</p>|`SNMP agent`|hrStorageAllocationUnits[{#SNMPVALUE}]<p>Update: 3600</p>|
|Description of storage $1 (LLD)|<p>A description of the type and instance of the storage described by this entry.</p>|`SNMP agent`|hrStorageDescr[{#SNMPVALUE}]<p>Update: 3600</p>|
|Total disk space on $1 (LLD)|<p>This is a calculated item, we need it to get total disk space in bytes.</p>|`Calculated`|hrStorageSizeInBytes[{#SNMPVALUE}]<p>Update: 3600</p>|
|Total disk space on $1 in units (LLD)|<p>The size of the storage represented by this entry, in units of hrStorageAllocationUnits. This object is writable to allow remote configuration of the size of the storage area in those cases where such an operation makes sense and is possible on the underlying system. For example, the amount of main memory allocated to a buffer pool might be modified or the amount of disk space allocated to virtual memory might be modified.</p>|`SNMP agent`|hrStorageSize[{#SNMPVALUE}]<p>Update: 3600</p>|
|Used disk space on $1 (LLD)|<p>This is a calculated item, we need it to get used disk space in bytes.</p>|`Calculated`|hrStorageUsedInBytes[{#SNMPVALUE}]<p>Update: 60</p>|
|Used disk space on $1 in units (LLD)|<p>The amount of the storage represented by this entry that is allocated, in units of hrStorageAllocationUnits.</p>|`SNMP agent`|hrStorageUsed[{#SNMPVALUE}]<p>Update: 60</p>|
|Temperature [{#SNMPVALUE}] (LLD)|<p>-</p>|`SNMP agent`|tempertureSensorValue[{#SNMPVALUE}]<p>Update: 120</p>|
|Processor [{#SNMPVALUE}] Idle Time (LLD)|<p>-</p>|`SNMP agent`|multiProcIdleTime[{#SNMPVALUE}]<p>Update: 90</p>|
|Processor [{#SNMPVALUE}] System Time (LLD)|<p>-</p>|`SNMP agent`|multiProcSystemTime[{#SNMPVALUE}]<p>Update: 90</p>|
|Processor [{#SNMPVALUE}] User Time (LLD)|<p>-</p>|`SNMP agent`|multiProcUserTime[{#SNMPVALUE}]<p>Update: 90</p>|
|FanStatus [{#SNMPVALUE}] (LLD)|<p>-</p>|`SNMP agent`|fanSpeedSensorValue[{#SNMPVALUE}]<p>Update: 120</p>|
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
|Free disk space is less than 20% on volume {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {Template CheckPoint SNMP:hrStorageUsed[{#SNMPVALUE}].last(0)} / {Template CheckPoint SNMP:hrStorageSize[{#SNMPVALUE}].last(0)} > 0.8</p><p>**Recovery expression**: </p>|warning|
|HA Status [{#SNMPVALUE}]|<p>-</p>|<p>**Expression**: {Template CheckPoint SNMP:haProblemStatus[{#SNMPVALUE}].str(OK)}=0</p><p>**Recovery expression**: </p>|average|
|{HOSTNAME} Processor usage high on CPU {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {Template CheckPoint SNMP:multiProcIdleTime[{#SNMPVALUE}].avg(300)}<25</p><p>**Recovery expression**: </p>|average|
|Operational status was changed on {HOST.NAME} interface {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {Template CheckPoint SNMP:ifOperStatus[{#SNMPVALUE}].diff(0)}=1</p><p>**Recovery expression**: </p>|information|
|HA Status [{#SNMPVALUE}] (LLD)|<p>-</p>|<p>**Expression**: {Template CheckPoint SNMP:haProblemStatus[{#SNMPVALUE}].str(OK)}=0</p><p>**Recovery expression**: </p>|average|
|Free disk space is less than 20% on volume {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template CheckPoint SNMP:hrStorageUsed[{#SNMPVALUE}].last(0)} / {Template CheckPoint SNMP:hrStorageSize[{#SNMPVALUE}].last(0)} > 0.8</p><p>**Recovery expression**: </p>|warning|
|{HOSTNAME} Processor usage high on CPU {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template CheckPoint SNMP:multiProcIdleTime[{#SNMPVALUE}].avg(300)}<25</p><p>**Recovery expression**: </p>|average|
|Operational status was changed on {HOST.NAME} interface {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template CheckPoint SNMP:ifOperStatus[{#SNMPVALUE}].diff(0)}=1</p><p>**Recovery expression**: </p>|information|