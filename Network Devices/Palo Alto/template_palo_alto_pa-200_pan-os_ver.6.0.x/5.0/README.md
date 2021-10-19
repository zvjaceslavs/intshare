# Template_Palo_Alto_PA200

## Overview

Hi,


I prepared a template for Palo Alto devices, I made it testing it with my Palo Alto PA-200, so I only can assure it works with PA-200 without any issue, but should work with other models as well.


It is compatible with PAN-OS version 6.0.x, I was working with 6.0.12


Template gaves You 175 checks (on PA-200 which has 6 network interfaces). Template is based on SNMP checks. 


You don't need to use default interface template as I added interface checks in that template. 


There is also few graphs and some triggers configured.


Feel free to comment and suggest what could be improved.


All was done with zabbix 3.0.2 so I recommend to use it with version 3.0.x  
  



MACRO :


There is only one {$SNMP\_COMMUNITY} and must be configured on the host level, You need to define SNMP community string there.


VALUE MAPS for ports please add manually, I can't attach it here.


Name: Palo port status


Value: 1 Mapped to: Up


Value: 2 Mapped to: Down


Enjoy!

## Author

Jacek Tymoczko

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Storage|<p>-</p>|`SNMP agent`|hrStorageDescr<p>Update: 300</p>|
|Interfaces Totals|<p>-</p>|`SNMP agent`|snmp.discoverytotal<p>Update: 300</p>|
|$1 Discovery|<p>ENTITY-SENSOR-MIB::entPhySensorType The type of data returned by the associated entPhySensorValue object.</p>|`SNMP agent`|entPhySensorType[FAN]<p>Update: 300</p>|
|Interfaces|<p>-</p>|`SNMP agent`|snmp.discovery<p>Update: 300</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|System Temperature|<p>-</p>|`SNMP agent`|entPhySensorValue.3<p>Update: 60</p>|
|Core Temperature|<p>-</p>|`SNMP agent`|entPhySensorValue.4<p>Update: 60</p>|
|CPU utilization on management plane|<p>CPU load average over last 60 seconds. This value will match the value shown on the GUI dashboard-> resource information-> % CPU in PAN-OS 3.x</p>|`SNMP agent`|hrProcessorLoad1<p>Update: 300</p>|
|Utilization of CPUs on dataplane that are used for system functions|<p>CPU load average over last 60 seconds</p>|`SNMP agent`|hrProcessorLoad2<p>Update: 60</p>|
|System uptime|<p>-</p>|`SNMP agent`|hrSystemUptime.0<p>Update: 900</p>|
|Chassis Type|<p>-</p>|`SNMP agent`|panChassisType<p>Update: 86400</p>|
|Total Active Sessions|<p>-</p>|`SNMP agent`|panSessionActive.0<p>Update: 60</p>|
|Active TCP Sessions|<p>-</p>|`SNMP agent`|panSessionActiveTcp.0<p>Update: 60</p>|
|Active UDP Sessions|<p>-</p>|`SNMP agent`|panSessionActiveUdp.0<p>Update: 60</p>|
|Session Utilization|<p>PAN-COMMON-MIB::panSessionUtilization Session table utilization percentage.</p>|`SNMP agent`|panSessionUtilization<p>Update: 300</p>|
|Hardware Version|<p>-</p>|`SNMP agent`|panSysHwVersion<p>Update: 3600</p>|
|PAN-OS Version|<p>-</p>|`SNMP agent`|panSysSwVersion<p>Update: 3600</p>|
|System Name|<p>-</p>|`SNMP agent`|sysName<p>Update: 3600</p>|
|{#SNMPVALUE} Size (LLD)|<p>-</p>|`SNMP agent`|hrStorageSize[{#SNMPINDEX}]<p>Update: 300</p>|
|{#SNMPVALUE} Used (LLD)|<p>-</p>|`SNMP agent`|hrStorageUsed[{#SNMPINDEX}]<p>Update: 300</p>|
|Total broadcast packets incoming on interface $1 (LLD)|<p>-</p>|`SNMP agent`|ifHCInBroadcastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
|Total multicast packets incoming on interface $1 (LLD)|<p>-</p>|`SNMP agent`|ifHCInMulticastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
|Total traffic incoming on interface $1 (LLD)|<p>-</p>|`SNMP agent`|ifHCInOctets[{#SNMPVALUE}]<p>Update: 60</p>|
|Total unicast packets incoming on interface $1 (LLD)|<p>-</p>|`SNMP agent`|ifHCInUcastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
|Total broadcast packets incoming on interface $1 (LLD)|<p>-</p>|`SNMP agent`|ifHCOutBroadcastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
|Total multicast packets outgoing on interface $1 (LLD)|<p>-</p>|`SNMP agent`|ifHCOutMulticastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
|Total traffic outgoing on interface $1 (LLD)|<p>-</p>|`SNMP agent`|ifHCOutOctets[{#SNMPVALUE}]<p>Update: 60</p>|
|Total unicast packets outgoing on interface $1 (LLD)|<p>-</p>|`SNMP agent`|ifHCOutUcastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
|Broadcast packets incoming on interface $1 (LLD)|<p>-</p>|`SNMP agent`|ifInBroadcastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
|Multicast packets incoming on interface $1 (LLD)|<p>-</p>|`SNMP agent`|ifInMulticastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
|Broadcast packets outgoing on interface $1 (LLD)|<p>-</p>|`SNMP agent`|ifOutBroadcastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
|Multicast packets outgoing on interface $1 (LLD)|<p>-</p>|`SNMP agent`|ifOutMulticastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
|Operational status of FAN $1 (LLD)|<p>-</p>|`SNMP agent`|entPhySensorOperStatus[{#SNMPVALUE},FAN]<p>Update: 30</p>|
|Current speed of $2 $1 (LLD)|<p>-</p>|`SNMP agent`|entPhySensorValue[{#SNMPVALUE},FAN]<p>Update: 60</p>|
|Interface $1 admin status (LLD)|<p>-</p>|`SNMP agent`|ifAdminStatus[{#SNMPVALUE}]<p>Update: 60</p>|
|Incoming discarded packets on interface $1 (LLD)|<p>-</p>|`SNMP agent`|ifInDiscards[{#SNMPVALUE}]<p>Update: 60</p>|
|Incoming packets with errors on interface $1 (LLD)|<p>-</p>|`SNMP agent`|ifInErrors[{#SNMPVALUE}]<p>Update: 60</p>|
|Incoming non-unicast packets on interface $1 (LLD)|<p>-</p>|`SNMP agent`|ifInNUcastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
|Incoming traffic on interface $1 (LLD)|<p>-</p>|`SNMP agent`|ifInOctets[{#SNMPVALUE}]<p>Update: 60</p>|
|Incoming unicast packets on interface $1 (LLD)|<p>-</p>|`SNMP agent`|ifInUcastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
|Interface $1 operational status (LLD)|<p>-</p>|`SNMP agent`|ifOperStatus[{#SNMPVALUE}]<p>Update: 60</p>|
|Outgoing discarded packets on interface $1 (LLD)|<p>-</p>|`SNMP agent`|ifOutDiscards[{#SNMPVALUE}]<p>Update: 60</p>|
|Outgoing packets with errors on interface $1 (LLD)|<p>-</p>|`SNMP agent`|ifOutErrors[{#SNMPVALUE}]<p>Update: 60</p>|
|Outgoing non-unicast packets on interface $1 (LLD)|<p>-</p>|`SNMP agent`|ifOutNUcastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
|Outgoing traffic on interface $1 (LLD)|<p>-</p>|`SNMP agent`|ifOutOctets[{#SNMPVALUE}]<p>Update: 60</p>|
|Outgoing unicast packets on interface $1 (LLD)|<p>-</p>|`SNMP agent`|ifOutUcastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|FAN #{#SNMPINDEX} is nonoperational|<p>-</p>|<p>**Expression**: {Template_Palo_Alto_PA200:entPhySensorOperStatus[{#SNMPVALUE},FAN].last()}=3</p><p>**Recovery expression**: </p>|high|
|FAN #{#SNMPINDEX} is unavailable|<p>-</p>|<p>**Expression**: {Template_Palo_Alto_PA200:entPhySensorOperStatus[{#SNMPVALUE},FAN].last()}=2</p><p>**Recovery expression**: </p>|average|
|#{#SNMPVALUE} usage is high [{ITEM.LASTVALUE1}]|<p>-</p>|<p>**Expression**: {Template_Palo_Alto_PA200:hrStorageUsed[{#SNMPINDEX}].avg(5m)}>{Template_Palo_Alto_PA200:hrStorageSize[{#SNMPINDEX}].last()}*0.9</p><p>**Recovery expression**: </p>|average|
|Interface {#SNMPVALUE} status on {HOSTNAME} is down|<p>-</p>|<p>**Expression**: {Template_Palo_Alto_PA200:ifOperStatus[{#SNMPVALUE}].last(0)}=2</p><p>**Recovery expression**: </p>|information|
|Operational status was changed on {HOSTNAME} interface {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {Template_Palo_Alto_PA200:ifOperStatus[{#SNMPVALUE}].diff(0)}=1</p><p>**Recovery expression**: </p>|average|
|#{#SNMPVALUE} usage is high [{ITEM.LASTVALUE1}] (LLD)|<p>-</p>|<p>**Expression**: {Template_Palo_Alto_PA200:hrStorageUsed[{#SNMPINDEX}].avg(5m)}>{Template_Palo_Alto_PA200:hrStorageSize[{#SNMPINDEX}].last()}*0.9</p><p>**Recovery expression**: </p>|average|
|FAN #{#SNMPINDEX} is nonoperational (LLD)|<p>-</p>|<p>**Expression**: {Template_Palo_Alto_PA200:entPhySensorOperStatus[{#SNMPVALUE},FAN].last()}=3</p><p>**Recovery expression**: </p>|high|
|FAN #{#SNMPINDEX} is unavailable (LLD)|<p>-</p>|<p>**Expression**: {Template_Palo_Alto_PA200:entPhySensorOperStatus[{#SNMPVALUE},FAN].last()}=2</p><p>**Recovery expression**: </p>|average|
|Interface {#SNMPVALUE} status on {HOSTNAME} is down (LLD)|<p>-</p>|<p>**Expression**: {Template_Palo_Alto_PA200:ifOperStatus[{#SNMPVALUE}].last(0)}=2</p><p>**Recovery expression**: </p>|information|
|Operational status was changed on {HOSTNAME} interface {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Palo_Alto_PA200:ifOperStatus[{#SNMPVALUE}].diff(0)}=1</p><p>**Recovery expression**: </p>|average|
