# Template SNMPv3 Palo alto OS 8.1

## Overview

#### # Paloalto\_SNMPv3\_zabbix4.0


Template for monitoring Palo alto firewall PAN OS 8.1 for zabbix 4.0


#### # Features


- CPU discovery


- Fan discovery


- Temperature discovery


- Storage discovery


- Interface discovery


- Traps for restart and HA failuire


##### ## Triggers


 - CPU status


 - Physical sensor status


 - Temperature


 - Free disk space on storage


 - Physical interface down


#### # Tested


 - zabbix 4.0 (CentOS 7)


 - PANOS 8.1


####  # Configuration


1. cofigure palo alto SNMPv3 use this guide: <https://knowledgebase.paloaltonetworks.com/KCSArticleDetail?id=kA10g000000ClG6CAK>


 - If you have HA configured in step 2. of this guide when polling the engineID you need to poll it for both servers because it differs.


2. download and add MIB files for palo alto from official site: <https://docs.paloaltonetworks.com/resources/snmp-mib-files>


3. configure zabbix snmptraps support if you haven't done so allready: <https://www.zabbix.com/documentation/4.0/manual/config/items/itemtypes/snmptrap> 


4. add theese lines in /etc/snmptt.conf file:



```
EVENT general panGeneralSystemShutdownTrap "System shutdown" Critical
```


```
FORMAT ZBXTRAP $ar $Fn $8 - eventID: $9 - $13
```


```
 
```


```
EVENT general panGeneralGeneralTrap "General trap" Normal
```


```
FORMAT ZBXTRAP $ar $Fn $8 - eventID: $9 - $13
```


```
 
```


```
EVENT general panHAHa2LinkChangeTrap "HA link change" Critical
```


```
FORMAT ZBXTRAP $ar $Fn $8 - eventID: $9 - $13
```


```
 
```


```
EVENT general panHASessionSynchTrap "HA session synchronization" Critical
```


```
FORMAT ZBXTRAP $ar $Fn $8 - eventID: $9 - $13
```


```
 
```


```
EVENT general panHAConnectChangeTrap "HA connection" Critical
```


```
FORMAT ZBXTRAP $ar $Fn $8 - eventID: $9 - $13
```


```
 
```


```
EVENT general .* "General event" Normal
```


```
FORMAT ZBXTRAP $ar $Fn $+*
```


## Author

Pavol Rehak

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|entPhysical discovery - Fan|<p>-</p>|`SNMP agent`|entPhysicalName.discovery.fan<p>Update: 1d</p>|
|entPhysical discovery - Temperature|<p>-</p>|`SNMP agent`|entPhysicalName.discovery<p>Update: 1d</p>|
|interface discovery|<p>-</p>|`SNMP agent`|ifName.discovery<p>Update: 1d</p>|
|CPU discovery|<p>-</p>|`SNMP agent`|hrDeviceDescr.discovery<p>Update: 1d</p>|
|hrStorage discovery|<p>-</p>|`SNMP agent`|hrStorageDescr.discovery<p>Update: 1d</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Uptime|<p>"The amount of time since this host was last initialized. Note that this is different from sysUpTime in the SNMPv2-MIB [RFC1907] because sysUpTime is the uptime of the network management portion of the system."</p>|`SNMP agent`|hrSystemUptime.0<p>Update: 1m</p>|
|HA mode|<p>Current high-availability peer state.</p>|`SNMP agent`|panSysHAMode.0<p>Update: 12h</p>|
|HA peer state|<p>Current high-availability peer state.</p>|`SNMP agent`|panSysHAPeerState.0<p>Update: 1m</p>|
|HA state|<p>Current high-availability state.</p>|`SNMP agent`|panSysHAState.0<p>Update: 1m</p>|
|Undefined traps|<p>-</p>|`SNMP trap`|snmptrap.fallback<p>Update: 0</p>|
|General trap|<p>-</p>|`SNMP trap`|snmptrap["General trap"]<p>Update: 0</p>|
|HA status trap|<p>-</p>|`SNMP trap`|snmptrap["HA link change"]<p>Update: 0</p>|
|System shutdown|<p>-</p>|`SNMP trap`|snmptrap["System shutdown"]<p>Update: 0</p>|
|Device description|<p>A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software. It is mandatory that this only contain printable ASCII characters.</p>|`SNMP agent`|sysDescr.0<p>Update: 1d</p>|
|Hostname|<p>An administratively-assigned name for this managed node. By convention, this is the node's fully-qualified domain name.</p>|`SNMP agent`|sysName.0<p>Update: 1d</p>|
|$1 opration status (LLD)|<p>-</p>|`SNMP agent`|entPhySensorOperStatus.fan.["{#PHY}"]<p>Update: 1m</p>|
|$1 sensor value (LLD)|<p>-</p>|`SNMP agent`|entPhySensorValue.fan.["{#PHY}"]<p>Update: 1m</p>|
|$1 class (LLD)|<p>-</p>|`SNMP agent`|entPhysicalClass.fan.["{#PHY}"]<p>Update: 1m</p>|
|$1 sensor description (LLD)|<p>-</p>|`SNMP agent`|entPhysicalDescr.fan.["{#PHY}"]<p>Update: 1d</p>|
|$1 opration status (LLD)|<p>"The operational status of the sensor."</p>|`SNMP agent`|entPhySensorOperStatus.["{#PHY}"]<p>Update: 1m</p>|
|$1 sensor value (LLD)|<p>The most recent measurement obtained by the agent for this sensor.</p>|`SNMP agent`|entPhySensorValue.["{#PHY}"]<p>Update: 1m</p>|
|$1 class (LLD)|<p>-</p>|`SNMP agent`|entPhysicalClass.["{#PHY}"]<p>Update: 1m</p>|
|$1 sensor description (LLD)|<p>-</p>|`SNMP agent`|entPhysicalDescr.["{#PHY}"]<p>Update: 1d</p>|
|$1 admin status (LLD)|<p>-</p>|`SNMP agent`|ifAdminStatus.["{#IFNAME}"]<p>Update: 2m</p>|
|$1 alias (description) (LLD)|<p>-</p>|`SNMP agent`|ifAlias.["{#IFNAME}"]<p>Update: 6h</p>|
|$1 input traffic (30 sec) (LLD)|<p>-</p>|`SNMP agent`|ifHCInOctets.["{#IFNAME}"]<p>Update: 30s</p>|
|$1 output traffic (30 sec) (LLD)|<p>-</p>|`SNMP agent`|ifHCOutOctets.["{#IFNAME}"]<p>Update: 30s</p>|
|$1 link status (LLD)|<p>-</p>|`SNMP agent`|ifOperStatus.["{#IFNAME}"]<p>Update: 2m</p>|
|{#CPU} status (LLD)|<p>"The current operational state of the device described by this row of the table. A value unknown(1) indicates that the current state of the device is unknown. running(2) indicates that the device is up and running and that no unusual error conditions are known. The warning(3) state indicates that agent has been informed of an unusual error condition by the operational software (e.g., a disk device driver) but that the device is still 'operational'. An example would be a high number of soft errors on a disk. A value of testing(4), indicates that the device is not available for use because it is in the testing state. The state of down(5) is used only when the agent has been informed that the device is not available for any use."</p>|`SNMP agent`|hrDeviceStatus.["{#CPU}"]<p>Update: 1m</p>|
|{#CPU} load - percentage (LLD)|<p>"The average, over the last minute, of the percentage of time that this processor was not idle. Implementations may approximate this one minute smoothing period if necessary."</p>|`SNMP agent`|hrProcessorLoad.["{#CPU}"]<p>Update: 1m</p>|
|$1 storage size (LLD)|<p>-</p>|`SNMP agent`|hrStorageSize.["{#STOR}"]<p>Update: 30m</p>|
|$1 storage type (LLD)|<p>-</p>|`SNMP agent`|hrStorageType.["{#STOR}"]<p>Update: 12h</p>|
|$1 storage used (LLD)|<p>-</p>|`SNMP agent`|hrStorageUsed.["{#STOR}"]<p>Update: 1m</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|{#PHY} sensor status not ok|<p>-</p>|<p>**Expression**: {Template SNMPv3 Palo alto OS 8.1:entPhySensorOperStatus.["{#PHY}"].last()}<>1</p><p>**Recovery expression**: </p>|average|
|{#PHY} temperature above 65 °C|<p>-</p>|<p>**Expression**: {Template SNMPv3 Palo alto OS 8.1:entPhySensorValue.["{#PHY}"].last()}>65</p><p>**Recovery expression**: </p>|average|
|{#PHY} temperature above 70 °C|<p>-</p>|<p>**Expression**: {Template SNMPv3 Palo alto OS 8.1:entPhySensorValue.["{#PHY}"].last()}>70</p><p>**Recovery expression**: </p>|high|
|{#PHY} temperature above 80 °C|<p>-</p>|<p>**Expression**: {Template SNMPv3 Palo alto OS 8.1:entPhySensorValue.["{#PHY}"].last()}>80</p><p>**Recovery expression**: </p>|disaster|
|{#PHY} sensor status not ok|<p>-</p>|<p>**Expression**: {Template SNMPv3 Palo alto OS 8.1:entPhySensorOperStatus.fan.["{#PHY}"].last()}<>1</p><p>**Recovery expression**: </p>|average|
|CPU load on {#CPU} more than 90%|<p>-</p>|<p>**Expression**: {Template SNMPv3 Palo alto OS 8.1:hrProcessorLoad.["{#CPU}"].last()}>90</p><p>**Recovery expression**: </p>|average|
|CPU load on {#CPU} more than 95%|<p>-</p>|<p>**Expression**: {Template SNMPv3 Palo alto OS 8.1:hrProcessorLoad.["{#CPU}"].last()}>95</p><p>**Recovery expression**: </p>|high|
|{#CPU} status down|<p>-</p>|<p>**Expression**: {Template SNMPv3 Palo alto OS 8.1:hrDeviceStatus.["{#CPU}"].last()}=5</p><p>**Recovery expression**: </p>|average|
|{#CPU} status warning|<p>-</p>|<p>**Expression**: {Template SNMPv3 Palo alto OS 8.1:hrDeviceStatus.["{#CPU}"].last()}=3</p><p>**Recovery expression**: </p>|warning|
|Free disk space is less than 2% on {#STOR}|<p>-</p>|<p>**Expression**: {Template SNMPv3 Palo alto OS 8.1:hrStorageUsed.["{#STOR}"].last()} / {Template SNMPv3 Palo alto OS 8.1:hrStorageSize.["{#STOR}"].last()} * 100 > 98</p><p>**Recovery expression**: </p>|disaster|
|Free disk space is less than 5% on {#STOR}|<p>-</p>|<p>**Expression**: {Template SNMPv3 Palo alto OS 8.1:hrStorageUsed.["{#STOR}"].last()} / {Template SNMPv3 Palo alto OS 8.1:hrStorageSize.["{#STOR}"].last()} * 100 > 95</p><p>**Recovery expression**: </p>|high|
|Free disk space is less than 10% on {#STOR}|<p>-</p>|<p>**Expression**: {Template SNMPv3 Palo alto OS 8.1:hrStorageUsed.["{#STOR}"].last()} / {Template SNMPv3 Palo alto OS 8.1:hrStorageSize.["{#STOR}"].last()} * 100 > 90</p><p>**Recovery expression**: </p>|average|
|{#IFNAME} interface down|<p>interface ifAdminStatus is up(1) and ifOperStatus is down(2)</p>|<p>**Expression**: {Template SNMPv3 Palo alto OS 8.1:ifAdminStatus.["{#IFNAME}"].last()}=1 and {Template SNMPv3 Palo alto OS 8.1:ifOperStatus.["{#IFNAME}"].last()}=2</p><p>**Recovery expression**: </p>|high|
|{#PHY} sensor status not ok (LLD)|<p>-</p>|<p>**Expression**: {Template SNMPv3 Palo alto OS 8.1:entPhySensorOperStatus.fan.["{#PHY}"].last()}<>1</p><p>**Recovery expression**: </p>|average|
|{#PHY} sensor status not ok (LLD)|<p>-</p>|<p>**Expression**: {Template SNMPv3 Palo alto OS 8.1:entPhySensorOperStatus.["{#PHY}"].last()}<>1</p><p>**Recovery expression**: </p>|average|
|{#PHY} temperature above 65 °C (LLD)|<p>-</p>|<p>**Expression**: {Template SNMPv3 Palo alto OS 8.1:entPhySensorValue.["{#PHY}"].last()}>65</p><p>**Recovery expression**: </p>|average|
|{#PHY} temperature above 70 °C (LLD)|<p>-</p>|<p>**Expression**: {Template SNMPv3 Palo alto OS 8.1:entPhySensorValue.["{#PHY}"].last()}>70</p><p>**Recovery expression**: </p>|high|
|{#PHY} temperature above 80 °C (LLD)|<p>-</p>|<p>**Expression**: {Template SNMPv3 Palo alto OS 8.1:entPhySensorValue.["{#PHY}"].last()}>80</p><p>**Recovery expression**: </p>|disaster|
|{#IFNAME} interface down (LLD)|<p>interface ifAdminStatus is up(1) and ifOperStatus is down(2)</p>|<p>**Expression**: {Template SNMPv3 Palo alto OS 8.1:ifAdminStatus.["{#IFNAME}"].last()}=1 and {Template SNMPv3 Palo alto OS 8.1:ifOperStatus.["{#IFNAME}"].last()}=2</p><p>**Recovery expression**: </p>|high|
|CPU load on {#CPU} more than 90% (LLD)|<p>-</p>|<p>**Expression**: {Template SNMPv3 Palo alto OS 8.1:hrProcessorLoad.["{#CPU}"].last()}>90</p><p>**Recovery expression**: </p>|average|
|CPU load on {#CPU} more than 95% (LLD)|<p>-</p>|<p>**Expression**: {Template SNMPv3 Palo alto OS 8.1:hrProcessorLoad.["{#CPU}"].last()}>95</p><p>**Recovery expression**: </p>|high|
|{#CPU} status down (LLD)|<p>-</p>|<p>**Expression**: {Template SNMPv3 Palo alto OS 8.1:hrDeviceStatus.["{#CPU}"].last()}=5</p><p>**Recovery expression**: </p>|average|
|{#CPU} status warning (LLD)|<p>-</p>|<p>**Expression**: {Template SNMPv3 Palo alto OS 8.1:hrDeviceStatus.["{#CPU}"].last()}=3</p><p>**Recovery expression**: </p>|warning|
|Free disk space is less than 2% on {#STOR} (LLD)|<p>-</p>|<p>**Expression**: {Template SNMPv3 Palo alto OS 8.1:hrStorageUsed.["{#STOR}"].last()} / {Template SNMPv3 Palo alto OS 8.1:hrStorageSize.["{#STOR}"].last()} * 100 > 98</p><p>**Recovery expression**: </p>|disaster|
|Free disk space is less than 5% on {#STOR} (LLD)|<p>-</p>|<p>**Expression**: {Template SNMPv3 Palo alto OS 8.1:hrStorageUsed.["{#STOR}"].last()} / {Template SNMPv3 Palo alto OS 8.1:hrStorageSize.["{#STOR}"].last()} * 100 > 95</p><p>**Recovery expression**: </p>|high|
|Free disk space is less than 10% on {#STOR} (LLD)|<p>-</p>|<p>**Expression**: {Template SNMPv3 Palo alto OS 8.1:hrStorageUsed.["{#STOR}"].last()} / {Template SNMPv3 Palo alto OS 8.1:hrStorageSize.["{#STOR}"].last()} * 100 > 90</p><p>**Recovery expression**: </p>|average|
