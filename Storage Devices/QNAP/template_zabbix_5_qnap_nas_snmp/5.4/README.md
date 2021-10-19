# QNAP NAS Template SNMP

## Overview

Based on template: "Zabbix 4.2 QNAP NAS SNMP template"


Changes:  
- added Disk free disk calculation for older QNAP Systems


Before using, define Macros (Administration -> General -> Macros):


* {$SNMP\_COMMUNITY} : public
* {$SNMP\_PORT} : 161


 

## Author

TommXP

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$HD_TEMPERATURE_ALARM}|<p>-</p>|`51`|Text macro|
|{$HD_TEMPERATURE_WARNING}|<p>-</p>|`40`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Hard disks discovery|<p>-</p>|`SNMP agent`|sysHDs.discovery<p>Update: 3600</p>|
|Network interfaces discovery|<p>-</p>|`SNMP agent`|netIfs.discovery<p>Update: 3600</p>|
|System fans discovery|<p>-</p>|`SNMP agent`|sysFans.discovery<p>Update: 3600</p>|
|Volumes discovery|<p>-</p>|`SNMP agent`|sysVolumes.discovery<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Operating System|<p>Operating System Info</p>|`SNMP agent`|OS<p>Update: 1d</p>|
|System temperature|<p>System temperature in centigrade</p>|`SNMP agent`|SystemTemperatureEX<p>Update: 60</p>|
|Total size of Disk Volume|<p>-</p>|`SNMP agent`|sysVolumeTotalSize.[1]<p>Update: 60</p>|
|PhysAddress.5|<p>-</p>|`SNMP agent`|ifPhysAddress.5<p>Update: 1d</p>|
|PhysAddress.3|<p>-</p>|`SNMP agent`|ifPhysAddress.3<p>Update: 1d</p>|
|PhysAddress.7|<p>-</p>|`SNMP agent`|ifPhysAddress.7<p>Update: 1d</p>|
|System uptime|<p>-</p>|`SNMP agent`|sysUptime<p>Update: 60s</p>|
|PhysAddress.8|<p>-</p>|`SNMP agent`|ifPhysAddress.8<p>Update: 1d</p>|
|System free memory|<p>-</p>|`SNMP agent`|SystemFreeMemEX<p>Update: 60</p>|
|Device Serial No|<p>Operating System Info</p>|`SNMP agent`|enclosureSerialNum.1<p>Update: 1d</p>|
|PhysAddress.9|<p>-</p>|`SNMP agent`|ifPhysAddress.9<p>Update: 1d</p>|
|PhysAddress.1|<p>-</p>|`SNMP agent`|ifPhysAddress.1<p>Update: 1d</p>|
|Device model name|<p>-</p>|`SNMP agent`|ModelNameEX<p>Update: 1d</p>|
|Free size of Disk Volume|<p>-</p>|`SNMP agent`|sysVolumeFreeSize.[1]<p>Update: 60</p>|
|Device hardware revision|<p>-</p>|`SNMP agent`|PhysicalHardwareRev<p>Update: 1d</p>|
|CPU usage|<p>System CPU usage</p>|`SNMP agent`|SystemCPU-UsageEX<p>Update: 60</p>|
|System free memory (%)|<p>-</p>|`Calculated`|SystemPFreeMemEX<p>Update: 60</p>|
|Device software revision|<p>-</p>|`SNMP agent`|PhysicalSoftwareRev<p>Update: 1d</p>|
|System total memory|<p>-</p>|`SNMP agent`|systemTotalMemEX.0<p>Update: 1d</p>|
|CPU temperature|<p>CPU temperature in centigrade</p>|`SNMP agent`|CPU-TemperatureEX<p>Update: 60</p>|
|PhysAddress.11|<p>-</p>|`SNMP agent`|ifPhysAddress.11<p>Update: 1d</p>|
|Device firmware revision|<p>-</p>|`SNMP agent`|PhysicalFirmwareRev<p>Update: 1d</p>|
|Device vendor name|<p>-</p>|`SNMP agent`|sysPhysicalMfgName<p>Update: 1d</p>|
|Free size of Disk Volume (%)|<p>-</p>|`Calculated`|SysVolumeFreeSizeP<p>Update: 60</p>|
|PhysAddress.2|<p>-</p>|`SNMP agent`|ifPhysAddress.2<p>Update: 1d</p>|
|Device system name|<p>Host name</p>|`SNMP agent`|HostNameEX<p>Update: 1d</p>|
|PhysAddress.10|<p>-</p>|`SNMP agent`|ifPhysAddress.10<p>Update: 1d</p>|
|PhysAddress.4|<p>-</p>|`SNMP agent`|ifPhysAddress.4<p>Update: 1d</p>|
|Capacity of {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|HdCapacityEX[{#SNMPINDEX}]<p>Update: 3600</p>|
|Model of {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|HdModelEX[{#SNMPINDEX}]<p>Update: 3600</p>|
|S.M.A.R.T. info of {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|HdSmartInfoEX[{#SNMPINDEX}]<p>Update: 60</p>|
|Status of {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|HdStatusEX[{#SNMPINDEX}]<p>Update: 60</p>|
|Temperature of {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|HdTemperatureEX[{#SNMPINDEX}]<p>Update: 60</p>|
|Error $2 on $1 (LLD)|<p>-</p>|`SNMP agent`|net.if.err[{#SNMPVALUE},bps]<p>Update: 60</p>|
|Received $2 on $1 (LLD)|<p>-</p>|`SNMP agent`|net.if.in[{#SNMPVALUE}, bps]<p>Update: 60</p>|
|Sent $2 on $1 (LLD)|<p>-</p>|`SNMP agent`|net.if.out[{#SNMPVALUE}, bps]<p>Update: 60</p>|
|Speed of {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|SysFanSpeedEX[{#SNMPINDEX}]<p>Update: 60</p>|
|Free size of {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|SysVolumeFreeSizeEX[{#SNMPINDEX}]<p>Update: 60</p>|
|Free size of {#SNMPVALUE} (%) (LLD)|<p>-</p>|`Calculated`|SysVolumePFreeSizeEX[{#SNMPINDEX}]<p>Update: 60</p>|
|Status of {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|SysVolumeStatusEX[{#SNMPINDEX}]<p>Update: 60</p>|
|Total size of {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|SysVolumeTotalSizeEX[{#SNMPINDEX}]<p>Update: 3600</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|{#SNMPVALUE} fan on {HOST.NAME} possibly is stopped|<p>-</p>|<p>**Expression**: max(/QNAP NAS Template SNMP/SysFanSpeedEX[{#SNMPINDEX}],60s)=0</p><p>**Recovery expression**: </p>|warning|
|SMART state of {#SNMPVALUE} on {HOST.NAME} is ABNORMAL|<p>Abnormal 1. Any SMART value is equal or less than trhreshold. 2. Hard Disk temperature is higher than 65 degree C. -------- QNAP Knowledgebase</p>|<p>**Expression**: find(/QNAP NAS Template SNMP/HdSmartInfoEX[{#SNMPINDEX}],,"iregexp","abnormal")=1</p><p>**Recovery expression**: </p>|average|
|SMART state of {#SNMPVALUE} on {HOST.NAME} is not GOOD ({ITEM.VALUE1})|<p>Normal 1. Any Smart value is equal or less than threhold + (initial_SMART_value - threhold)/2. For example, if the initial SMART value is 100, the current value is 50, the threshold is 20, then the Smart value, 50, is less than 20+(100-20)/2. Thus, the health level would be Normal. 2. Any SMART test(Rapid or Complete) result of last 20 times is abnormal. 3. Hard Disk temperature is between 55 to 65 degree C. -------- QNAP Knowledgebase</p>|<p>**Expression**: find(/QNAP NAS Template SNMP/HdSmartInfoEX[{#SNMPINDEX}],,"iregexp","normal")=1</p><p>**Recovery expression**: </p>|warning|
|State of {#SNMPVALUE} on {HOST.NAME} is "Invalid"|<p>State "Invalid"</p>|<p>**Expression**: last(/QNAP NAS Template SNMP/HdStatusEX[{#SNMPINDEX}])=-6</p><p>**Recovery expression**: </p>|warning|
|State of {#SNMPVALUE} on {HOST.NAME} is "noDisk"|<p>State "noDisk"</p>|<p>**Expression**: last(/QNAP NAS Template SNMP/HdStatusEX[{#SNMPINDEX}])=-5</p><p>**Recovery expression**: </p>|information|
|State of {#SNMPVALUE} on {HOST.NAME} is "rwError"|<p>State "rwError"</p>|<p>**Expression**: last(/QNAP NAS Template SNMP/HdStatusEX[{#SNMPINDEX}])=-9</p><p>**Recovery expression**: </p>|warning|
|State of {#SNMPVALUE} on {HOST.NAME} is not "Ready" ({ITEM.VALUE1})|<p>-</p>|<p>**Expression**: last(/QNAP NAS Template SNMP/HdStatusEX[{#SNMPINDEX}])<>0</p><p>**Recovery expression**: </p>|information|
|Temperature of {#SNMPVALUE} on {HOST.NAME} is over {$HD_TEMPERATURE_ALARM} for 2 min|<p>-</p>|<p>**Expression**: min(/QNAP NAS Template SNMP/HdTemperatureEX[{#SNMPINDEX}],2m)>51</p><p>**Recovery expression**: </p>|high|
|Temperature of {#SNMPVALUE} on {HOST.NAME} is over {$HD_TEMPERATURE_WARNING} for 2min|<p>-</p>|<p>**Expression**: min(/QNAP NAS Template SNMP/HdTemperatureEX[{#SNMPINDEX}],2m)>40</p><p>**Recovery expression**: </p>|information|
|Free space is less than 20% on volume {#SNMPVALUE}|<p>-</p>|<p>**Expression**: last(/QNAP NAS Template SNMP/SysVolumePFreeSizeEX[{#SNMPINDEX}])<20</p><p>**Recovery expression**: </p>|warning|
|SMART state of {#SNMPVALUE} on {HOST.NAME} is ABNORMAL (LLD)|<p>Abnormal 1. Any SMART value is equal or less than trhreshold. 2. Hard Disk temperature is higher than 65 degree C. -------- QNAP Knowledgebase</p>|<p>**Expression**: find(/QNAP NAS Template SNMP/HdSmartInfoEX[{#SNMPINDEX}],,"iregexp","abnormal")=1</p><p>**Recovery expression**: </p>|average|
|SMART state of {#SNMPVALUE} on {HOST.NAME} is not GOOD ({ITEM.VALUE1}) (LLD)|<p>Normal 1. Any Smart value is equal or less than threhold + (initial_SMART_value - threhold)/2. For example, if the initial SMART value is 100, the current value is 50, the threshold is 20, then the Smart value, 50, is less than 20+(100-20)/2. Thus, the health level would be Normal. 2. Any SMART test(Rapid or Complete) result of last 20 times is abnormal. 3. Hard Disk temperature is between 55 to 65 degree C. -------- QNAP Knowledgebase</p>|<p>**Expression**: find(/QNAP NAS Template SNMP/HdSmartInfoEX[{#SNMPINDEX}],,"iregexp","normal")=1</p><p>**Recovery expression**: </p>|warning|
|State of {#SNMPVALUE} on {HOST.NAME} is "Invalid" (LLD)|<p>State "Invalid"</p>|<p>**Expression**: last(/QNAP NAS Template SNMP/HdStatusEX[{#SNMPINDEX}])=-6</p><p>**Recovery expression**: </p>|warning|
|State of {#SNMPVALUE} on {HOST.NAME} is "noDisk" (LLD)|<p>State "noDisk"</p>|<p>**Expression**: last(/QNAP NAS Template SNMP/HdStatusEX[{#SNMPINDEX}])=-5</p><p>**Recovery expression**: </p>|information|
|State of {#SNMPVALUE} on {HOST.NAME} is "rwError" (LLD)|<p>State "rwError"</p>|<p>**Expression**: last(/QNAP NAS Template SNMP/HdStatusEX[{#SNMPINDEX}])=-9</p><p>**Recovery expression**: </p>|warning|
|State of {#SNMPVALUE} on {HOST.NAME} is not "Ready" ({ITEM.VALUE1}) (LLD)|<p>-</p>|<p>**Expression**: last(/QNAP NAS Template SNMP/HdStatusEX[{#SNMPINDEX}])<>0</p><p>**Recovery expression**: </p>|information|
|Temperature of {#SNMPVALUE} on {HOST.NAME} is over {$HD_TEMPERATURE_ALARM} for 2 min (LLD)|<p>-</p>|<p>**Expression**: min(/QNAP NAS Template SNMP/HdTemperatureEX[{#SNMPINDEX}],2m)>51</p><p>**Recovery expression**: </p>|high|
|Temperature of {#SNMPVALUE} on {HOST.NAME} is over {$HD_TEMPERATURE_WARNING} for 2min (LLD)|<p>-</p>|<p>**Expression**: min(/QNAP NAS Template SNMP/HdTemperatureEX[{#SNMPINDEX}],2m)>40</p><p>**Recovery expression**: </p>|information|
|{#SNMPVALUE} fan on {HOST.NAME} possibly is stopped (LLD)|<p>-</p>|<p>**Expression**: max(/QNAP NAS Template SNMP/SysFanSpeedEX[{#SNMPINDEX}],60s)=0</p><p>**Recovery expression**: </p>|warning|
|Free space is less than 20% on volume {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: last(/QNAP NAS Template SNMP/SysVolumePFreeSizeEX[{#SNMPINDEX}])<20</p><p>**Recovery expression**: </p>|warning|
