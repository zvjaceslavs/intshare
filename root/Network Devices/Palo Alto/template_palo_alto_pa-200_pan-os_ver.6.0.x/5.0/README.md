# Template_Palo_Alto_PA200

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
|Storage|<p>-</p>|`SNMP agent`|hrStorageDescr<p>Update: 300</p>|
|Interfaces Totals|<p>-</p>|`SNMP agent`|snmp.discoverytotal<p>Update: 300</p>|
|$1 Discovery|<p>ENTITY-SENSOR-MIB::entPhySensorType The type of data returned by the associated entPhySensorValue object.</p>|`SNMP agent`|entPhySensorType[FAN]<p>Update: 300</p>|
|Interfaces|<p>-</p>|`SNMP agent`|snmp.discovery<p>Update: 300</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Active UDP Sessions|<p>-</p>|`SNMP agent`|panSessionActiveUdp.0<p>Update: 60</p>|
|CPU utilization on management plane|<p>CPU load average over last 60 seconds. This value will match the value shown on the GUI dashboard-> resource information-> % CPU in PAN-OS 3.x</p>|`SNMP agent`|hrProcessorLoad1<p>Update: 300</p>|
|Utilization of CPUs on dataplane that are used for system functions|<p>CPU load average over last 60 seconds</p>|`SNMP agent`|hrProcessorLoad2<p>Update: 60</p>|
|Chassis Type|<p>-</p>|`SNMP agent`|panChassisType<p>Update: 86400</p>|
|System uptime|<p>-</p>|`SNMP agent`|hrSystemUptime.0<p>Update: 900</p>|
|Active TCP Sessions|<p>-</p>|`SNMP agent`|panSessionActiveTcp.0<p>Update: 60</p>|
|Session Utilization|<p>PAN-COMMON-MIB::panSessionUtilization Session table utilization percentage.</p>|`SNMP agent`|panSessionUtilization<p>Update: 300</p>|
|PAN-OS Version|<p>-</p>|`SNMP agent`|panSysSwVersion<p>Update: 3600</p>|
|System Name|<p>-</p>|`SNMP agent`|sysName<p>Update: 3600</p>|
|Hardware Version|<p>-</p>|`SNMP agent`|panSysHwVersion<p>Update: 3600</p>|
|System Temperature|<p>-</p>|`SNMP agent`|entPhySensorValue.3<p>Update: 60</p>|
|Total Active Sessions|<p>-</p>|`SNMP agent`|panSessionActive.0<p>Update: 60</p>|
|Core Temperature|<p>-</p>|`SNMP agent`|entPhySensorValue.4<p>Update: 60</p>|
|{#SNMPVALUE} Size|<p>-</p>|`SNMP agent`|hrStorageSize[{#SNMPINDEX}]<p>Update: 300</p>|
|{#SNMPVALUE} Used|<p>-</p>|`SNMP agent`|hrStorageUsed[{#SNMPINDEX}]<p>Update: 300</p>|
|Total broadcast packets incoming on interface $1|<p>-</p>|`SNMP agent`|ifHCInBroadcastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
|Total multicast packets incoming on interface $1|<p>-</p>|`SNMP agent`|ifHCInMulticastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
|Total traffic incoming on interface $1|<p>-</p>|`SNMP agent`|ifHCInOctets[{#SNMPVALUE}]<p>Update: 60</p>|
|Total unicast packets incoming on interface $1|<p>-</p>|`SNMP agent`|ifHCInUcastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
|Total broadcast packets incoming on interface $1|<p>-</p>|`SNMP agent`|ifHCOutBroadcastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
|Total multicast packets outgoing on interface $1|<p>-</p>|`SNMP agent`|ifHCOutMulticastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
|Total traffic outgoing on interface $1|<p>-</p>|`SNMP agent`|ifHCOutOctets[{#SNMPVALUE}]<p>Update: 60</p>|
|Total unicast packets outgoing on interface $1|<p>-</p>|`SNMP agent`|ifHCOutUcastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
|Broadcast packets incoming on interface $1|<p>-</p>|`SNMP agent`|ifInBroadcastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
|Multicast packets incoming on interface $1|<p>-</p>|`SNMP agent`|ifInMulticastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
|Broadcast packets outgoing on interface $1|<p>-</p>|`SNMP agent`|ifOutBroadcastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
|Multicast packets outgoing on interface $1|<p>-</p>|`SNMP agent`|ifOutMulticastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
|Operational status of FAN $1|<p>-</p>|`SNMP agent`|entPhySensorOperStatus[{#SNMPVALUE},FAN]<p>Update: 30</p>|
|Current speed of $2 $1|<p>-</p>|`SNMP agent`|entPhySensorValue[{#SNMPVALUE},FAN]<p>Update: 60</p>|
|Interface $1 admin status|<p>-</p>|`SNMP agent`|ifAdminStatus[{#SNMPVALUE}]<p>Update: 60</p>|
|Incoming discarded packets on interface $1|<p>-</p>|`SNMP agent`|ifInDiscards[{#SNMPVALUE}]<p>Update: 60</p>|
|Incoming packets with errors on interface $1|<p>-</p>|`SNMP agent`|ifInErrors[{#SNMPVALUE}]<p>Update: 60</p>|
|Incoming non-unicast packets on interface $1|<p>-</p>|`SNMP agent`|ifInNUcastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
|Incoming traffic on interface $1|<p>-</p>|`SNMP agent`|ifInOctets[{#SNMPVALUE}]<p>Update: 60</p>|
|Incoming unicast packets on interface $1|<p>-</p>|`SNMP agent`|ifInUcastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
|Interface $1 operational status|<p>-</p>|`SNMP agent`|ifOperStatus[{#SNMPVALUE}]<p>Update: 60</p>|
|Outgoing discarded packets on interface $1|<p>-</p>|`SNMP agent`|ifOutDiscards[{#SNMPVALUE}]<p>Update: 60</p>|
|Outgoing packets with errors on interface $1|<p>-</p>|`SNMP agent`|ifOutErrors[{#SNMPVALUE}]<p>Update: 60</p>|
|Outgoing non-unicast packets on interface $1|<p>-</p>|`SNMP agent`|ifOutNUcastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
|Outgoing traffic on interface $1|<p>-</p>|`SNMP agent`|ifOutOctets[{#SNMPVALUE}]<p>Update: 60</p>|
|Outgoing unicast packets on interface $1|<p>-</p>|`SNMP agent`|ifOutUcastPkts[{#SNMPVALUE}]<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Core temperature on {HOSTNAME} is ({ITEM.LASTVALUE}) and is too high|<p>-</p>|high|
|Data plane CPU usage on {HOSTNAME} is ({ITEM.LASTVALUE}) and is too high|<p>-</p>|warning|
|Data plane CPU usage on {HOSTNAME} is ({ITEM.LASTVALUE}) and is too high|<p>-</p>|average|
|Data plane CPU usage on {HOSTNAME} is ({ITEM.LASTVALUE}) and is too high|<p>-</p>|high|
|Data plane CPU usage on {HOSTNAME} is ({ITEM.LASTVALUE}) and is too high|<p>-</p>|disaster|
|Management plane CPU usage on {HOSTNAME} is ({ITEM.LASTVALUE}) and is too high|<p>-</p>|warning|
|Management plane CPU usage on {HOSTNAME} is ({ITEM.LASTVALUE}) and is too high|<p>-</p>|average|
|Management plane CPU usage on {HOSTNAME} is ({ITEM.LASTVALUE}) and is too high|<p>-</p>|high|
|Management plane CPU usage on {HOSTNAME} is ({ITEM.LASTVALUE}) and is too high|<p>-</p>|disaster|
|System temperature on {HOSTNAME} is ({ITEM.LASTVALUE}) and is too high|<p>-</p>|high|
|#{#SNMPVALUE} usage is high [{ITEM.LASTVALUE1}]|<p>-</p>|average|
|FAN #{#SNMPINDEX} is nonoperational|<p>-</p>|high|
|FAN #{#SNMPINDEX} is unavailable|<p>-</p>|average|
|Interface {#SNMPVALUE} status on {HOSTNAME} is down|<p>-</p>|information|
|Operational status was changed on {HOSTNAME} interface {#SNMPVALUE}|<p>-</p>|average|
