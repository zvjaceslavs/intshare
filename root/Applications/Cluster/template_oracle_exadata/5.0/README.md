# Template ILOM ORACLE SRV X8-2 SNMP Trap

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
|sunHwTrapPowerSupplyFault|<p>-</p>|`SNMP trap`|snmptrap[".42.2.175.103.2.0.31"]<p>Update: 0</p>|
|sunHwTrapFanFault|<p>-</p>|`SNMP trap`|snmptrap[".42.2.175.103.2.0.34"]<p>Update: 0</p>|
|sunHwTrapProcessorFault|<p>-</p>|`SNMP trap`|snmptrap[".42.2.175.103.2.0.37"]<p>Update: 0</p>|
|sunHwTrapProcessorError|<p>-</p>|`SNMP trap`|snmptrap[".42.2.175.103.2.0.38"]<p>Update: 0</p>|
|sunHwTrapMemoryFault|<p>-</p>|`SNMP trap`|snmptrap[".42.2.175.103.2.0.40"]<p>Update: 0</p>|
|sunHwTrapHardDriveFault|<p>-</p>|`SNMP trap`|snmptrap[".42.2.175.103.2.0.43"]<p>Update: 0</p>|
|sunHwTrapHardDriveError|<p>-</p>|`SNMP trap`|snmptrap[".42.2.175.103.2.0.44"]<p>Update: 0</p>|
|sunHwTrapIOFault|<p>-</p>|`SNMP trap`|snmptrap[".42.2.175.103.2.0.46"]<p>Update: 0</p>|
|sunHwTrapIOError|<p>-</p>|`SNMP trap`|snmptrap[".42.2.175.103.2.0.47"]<p>Update: 0</p>|
|sunHwTrapSlotOrConnectorFault|<p>-</p>|`SNMP trap`|snmptrap[".42.2.175.103.2.0.49"]<p>Update: 0</p>|
|sunHwTrapComponentFault|<p>-</p>|`SNMP trap`|snmptrap[".42.2.175.103.2.0.52"]<p>Update: 0</p>|
|sunHwTrapDriveControllerFault|<p>-</p>|`SNMP trap`|snmptrap[".42.2.175.103.2.0.74"]<p>Update: 0</p>|
|sunHwTrapStorageVolumeFault|<p>-</p>|`SNMP trap`|snmptrap[".42.2.175.103.2.0.77"]<p>Update: 0</p>|
|sunHwTrapStorageVolumeError|<p>-</p>|`SNMP trap`|snmptrap[".42.2.175.103.2.0.79"]<p>Update: 0</p>|
|sunHwTrapPsuRedundancyLost|<p>-</p>|`SNMP trap`|snmptrap[".42.2.175.103.2.0.83"]<p>Update: 0</p>|
|sunHwTrapHostState|<p>-</p>|`SNMP trap`|snmptrap[".42.2.175.103.2.0.85"]<p>Update: 0</p>|
|sunHwTrapHostPowerAction|<p>-</p>|`SNMP trap`|snmptrap[".42.2.175.103.2.0.90"]<p>Update: 0</p>|
|sunHwTrapHeartbeat|<p>A heartbeat used to verify the SNMP trap configuration. This trap is periodically generated and used to verify ongoing trap configuration, network connectivity and system identification. This functionality is required by Oracle Auto Service Request (ASR): http://www.oracle.com/us/support/auto-service-request/</p>|`SNMP trap`|snmptrap[".42.2.175.103.2.0.91"]<p>Update: 0</p>|
|ilomSystemTrapMemoryOkay|<p>Memory okay</p>|`SNMP trap`|snmptrap[".42.2.2.6.4.2.0.31"]<p>Update: 0</p>|
|ilomSystemTrapMemoryDimmOkay|<p>Memory Dimm okay</p>|`SNMP trap`|snmptrap[".42.2.2.6.4.2.0.34"]<p>Update: 0</p>|
|ilomSystemTrapMemoryDimmInserted|<p>DIMM Inserted</p>|`SNMP trap`|snmptrap[".42.2.2.6.4.2.0.37"]<p>Update: 0</p>|
|ilomSystemTrapMemoryDimmRemoved|<p>Memory Dimm okay</p>|`SNMP trap`|snmptrap[".42.2.2.6.4.2.0.38"]<p>Update: 0</p>|
|ilomSystemTrapPowerWarning|<p>-</p>|`SNMP trap`|snmptrap[".42.2.2.6.4.2.0.40"]<p>Update: 0</p>|
|ilomSystemTrapPowerSupplyWarning|<p>-</p>|`SNMP trap`|snmptrap[".42.2.2.6.4.2.0.43"]<p>Update: 0</p>|
|ilomSystemTrapPowerSupplyOkay|<p>Power Supply okay</p>|`SNMP trap`|snmptrap[".42.2.2.6.4.2.0.44"]<p>Update: 0</p>|
|ilomSystemTrapPowerSupplyRemoved|<p>-</p>|`SNMP trap`|snmptrap[".42.2.2.6.4.2.0.46"]<p>Update: 0</p>|
|ilomSystemTrapStorageServiceRequired|<p>-</p>|`SNMP trap`|snmptrap[".42.2.2.6.4.2.0.47"]<p>Update: 0</p>|
|ilomSystemTrapStorageOkay|<p>-</p>|`SNMP trap`|snmptrap[".42.2.2.6.4.2.0.49"]<p>Update: 0</p>|
|ilomSystemTrapStorageDiskOkay|<p>-</p>|`SNMP trap`|snmptrap[".42.2.2.6.4.2.0.52"]<p>Update: 0</p>|
|ilomSystemTrapCmuWarning|<p>-</p>|`SNMP trap`|snmptrap[".42.2.2.6.4.2.0.74"]<p>Update: 0</p>|
|ilomSystemTrapCmuEnabled|<p>-</p>|`SNMP trap`|snmptrap[".42.2.2.6.4.2.0.76"]<p>Update: 0</p>|
|ilomSystemTrapCmuDisabled|<p>-</p>|`SNMP trap`|snmptrap[".42.2.2.6.4.2.0.77"]<p>Update: 0</p>|
|ilomSystemTrapCmuPowerOff|<p>-</p>|`SNMP trap`|snmptrap[".42.2.2.6.4.2.0.79"]<p>Update: 0</p>|
|ilomSystemTrapSystemHostBootComplete|<p>-</p>|`SNMP trap`|snmptrap[".42.2.2.6.4.2.0.83"]<p>Update: 0</p>|
|ilomSystemTrapSystemHostBootbegin|<p>-</p>|`SNMP trap`|snmptrap[".42.2.2.6.4.2.0.85"]<p>Update: 0</p>|
|ilomSystemTrapCpuModuleWarning|<p>-</p>|`SNMP trap`|snmptrap[".42.2.2.6.4.2.0.90"]<p>Update: 0</p>|
|ilomSystemTrapFallback|<p>-</p>|`SNMP trap`|snmptrap.fallback<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Not received heartbeat from {HOST.NAME}|<p>A heartbeat used to verify the SNMP trap configuration. This trap is periodically generated and used to verify ongoing trap configuration, network connectivity and system identification. This functionality is required by Oracle Auto Service Request (ASR): http://www.oracle.com/us/support/auto-service-request/</p>|warning|
|{HOST.NAME} : A component in the IO subsystem is suspected of causing a fault.|<p>-</p>|high|
|{HOST.NAME} : A component is suspected of causing a fault.|<p>This generic 'component' trap is generated when the SNMP agent does not recognize the component type.</p>|high|
|{HOST.NAME} : A drive controller component is suspected of causing a fault.|<p>-</p>|high|
|{HOST.NAME} : A fan component is suspected of causing a fault|<p>-</p>|high|
|{HOST.NAME} : A hard drive component is suspected of causing a fault|<p>-</p>|high|
|{HOST.NAME} : A hard drive sensor has detected an error.|<p>-</p>|high|
|{HOST.NAME} : A memory component is suspected of causing a fault.|<p>-</p>|high|
|{HOST.NAME} : An IO sensor has detected an error|<p>-</p>|high|
|{HOST.NAME} : A power supply component is suspected of causing a fault|<p>-</p>|high|
|{HOST.NAME} : A processor component is suspected of causing a fault|<p>-</p>|high|
|{HOST.NAME} : A processor sensor has detected an error.|<p>-</p>|high|
|{HOST.NAME} : A RAID component is suspected of causing a fault.|<p>-</p>|high|
|{HOST.NAME} :  A RAID sensor has detected an error.|<p>-</p>|high|
|{HOST.NAME} :  A slot or connector component is suspected of causing a fault.|<p>-</p>|high|
|{HOST.NAME} :  A state change in host power has taken place.|<p>-</p>|high|
|{HOST.NAME} : CPU Memory Unit disabled.|<p>-</p>|high|
|{HOST.NAME} : CPU Memory Unit enabled|<p>-</p>|high|
|{HOST.NAME} : CPU Memory Unit powered off|<p>-</p>|high|
|{HOST.NAME} : CPU Memory Unit warning.|<p>-</p>|high|
|{HOST.NAME} : CPU Module Warning|<p>-</p>|high|
|{HOST.NAME} : DIMM Inserted|<p>-</p>|high|
|{HOST.NAME} : DIMM Removed|<p>-</p>|high|
|{HOST.NAME} : Disk okay|<p>-</p>|high|
|{HOST.NAME} : Host boot begin|<p>-</p>|high|
|{HOST.NAME} : Host boot complete|<p>-</p>|high|
|{HOST.NAME} :  Host state changed.|<p>-</p>|high|
|{HOST.NAME} : Memory Dimm okay|<p>-</p>|high|
|{HOST.NAME} : Memory okay|<p>-</p>|high|
|{HOST.NAME} : Power Supply okay|<p>-</p>|high|
|{HOST.NAME} : Power Supply removed|<p>-</p>|high|
|{HOST.NAME} : Power Supply Warning|<p>-</p>|high|
|{HOST.NAME} : Power Warning|<p>-</p>|high|
|{HOST.NAME} :  PSU redundancy is lost.|<p>-</p>|high|
|{HOST.NAME} : Storage okay|<p>-</p>|high|
|{HOST.NAME} : Storage Service Required|<p>-</p>|high|
