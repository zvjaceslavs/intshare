# Template EMC Unity REST-API v3

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$API_PASSWORD}|<p>-</p>|``|Text macro|
|{$API_PORT}|<p>-</p>|`443`|Text macro|
|{$API_USER}|<p>-</p>|``|Text macro|
|{$SUBSCRIBED_PERCENT}|<p>-</p>|`91`|Text macro|
|{$USED_PERCENT}|<p>-</p>|`91`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|I/O Module|<p>I/O modules provide connectivity between SPs and Disk-Array Enclosures (DAEs)</p>|`Zabbix trapper`|ioModule<p>Update: 0</p>|
|Disk Array Enclosure (DAE)|<p>-</p>|`Zabbix trapper`|dae<p>Update: 0</p>|
|FAN|<p>-</p>|`Zabbix trapper`|fan<p>Update: 0</p>|
|Disk|<p>-</p>|`Zabbix trapper`|disk<p>Update: 0</p>|
|PSU|<p>-</p>|`Zabbix trapper`|powerSupply<p>Update: 0</p>|
|Pool|<p>-</p>|`Zabbix trapper`|pool<p>Update: 0</p>|
|Uncommitted Port|<p>-</p>|`Zabbix trapper`|uncommittedPort<p>Update: 0</p>|
|Memory Module|<p>-</p>|`Zabbix trapper`|memoryModule<p>Update: 0</p>|
|LCC|<p>Link Control Cards (LCCs)</p>|`Zabbix trapper`|lcc<p>Update: 0</p>|
|PortFibreChannel|<p>-</p>|`Zabbix trapper`|fcPort<p>Update: 0</p>|
|BBU|<p>-</p>|`Zabbix trapper`|battery<p>Update: 0</p>|
|PortEth|<p>-</p>|`Zabbix trapper`|ethernetPort<p>Update: 0</p>|
|Disk Processor Enclosures (DPE)|<p>-</p>|`Zabbix trapper`|dpe<p>Update: 0</p>|
|PortSAS|<p>-</p>|`Zabbix trapper`|sasPort<p>Update: 0</p>|
|Storage Processors|<p>-</p>|`Zabbix trapper`|storageProcessor<p>Update: 0</p>|
|SSC|<p>System Status Cards (SSCs)</p>|`Zabbix trapper`|ssc<p>Update: 0</p>|
|SSD|<p>-</p>|`Zabbix trapper`|ssd<p>Update: 0</p>|
|Lun|<p>-</p>|`Zabbix trapper`|lun<p>Update: 0</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|get health state|<p>-</p>|`External check`|unity_get_state.py["--api_ip={HOST.IP}","--api_port={$API_PORT}","--api_user={$API_USER}","--api_password={$API_PASSWORD}","--storage_name={HOST.NAME}","--status"]<p>Update: 3m</p>|
|Count of unsupported items|<p>-</p>|`Zabbix internal`|zabbix[host,,items_unsupported]<p>Update: 5m</p>|
|get discovery|<p>-</p>|`External check`|unity_get_state.py["--api_ip={HOST.IP}","--api_port={$API_PORT}","--api_user={$API_USER}","--api_password={$API_PASSWORD}","--storage_name={HOST.NAME}","--discovery"]<p>Update: 15m</p>|
|Health status of ioModule "{#ID}"|<p>-</p>|`Zabbix trapper`|health.ioModule.[{#ID}]<p>Update: 0</p>|
|Running status of ioModule "{#ID}"|<p>-</p>|`Zabbix trapper`|running.ioModule.[{#ID}]<p>Update: 0</p>|
|Health status of DAE "{#ID}"|<p>-</p>|`Zabbix trapper`|health.dae.[{#ID}]<p>Update: 0</p>|
|Running status of DAE "{#ID}"|<p>-</p>|`Zabbix trapper`|running.dae.[{#ID}]<p>Update: 0</p>|
|Health Status of FAN "{#ID}"|<p>-</p>|`Zabbix trapper`|health.fan.[{#ID}]<p>Update: 0</p>|
|Running Status of FAN "{#ID}"|<p>-</p>|`Zabbix trapper`|running.fan.[{#ID}]<p>Update: 0</p>|
|Health status of disk "{#ID}"|<p>-</p>|`Zabbix trapper`|health.disk.[{#ID}]<p>Update: 0</p>|
|Running status of disk "{#ID}"|<p>-</p>|`Zabbix trapper`|running.disk.[{#ID}]<p>Update: 0</p>|
|Health Status of PSU "{#ID}"|<p>-</p>|`Zabbix trapper`|health.powerSupply.[{#ID}]<p>Update: 0</p>|
|Running Status of PSU "{#ID}"|<p>-</p>|`Zabbix trapper`|running.powerSupply.[{#ID}]<p>Update: 0</p>|
|Health status of Pool "{#NAME}"|<p>-</p>|`Zabbix trapper`|health.pool.[{#NAME}]<p>Update: 0</p>|
|Subscribed size of Pool "{#NAME}"|<p>-</p>|`Zabbix trapper`|sizeSubscribedBytes.pool.[{#NAME}]<p>Update: 0</p>|
|Subscribed size of Pool "{#NAME}" in percent|<p>-</p>|`Calculated`|sizeSubscribedPercent.pool.[{#NAME}]<p>Update: 3m</p>|
|Total size of Pool "{#NAME}"|<p>-</p>|`Zabbix trapper`|sizeTotalBytes.pool.[{#NAME}]<p>Update: 0</p>|
|Used size of Pool "{#NAME}"|<p>-</p>|`Zabbix trapper`|sizeUsedBytes.pool.[{#NAME}]<p>Update: 0</p>|
|Used size of Pool "{#NAME}" in percent|<p>-</p>|`Calculated`|sizeUsedPercent.pool.[{#NAME}]<p>Update: 3m</p>|
|Health status of Uncommitted Port "{#ID}"|<p>-</p>|`Zabbix trapper`|health.uncommittedPort.[{#ID}]<p>Update: 0</p>|
|Running status of Uncommitted Port "{#ID}"|<p>-</p>|`Zabbix trapper`|running.uncommittedPort.[{#ID}]<p>Update: 0</p>|
|Health status of Memory Module "{#ID}"|<p>-</p>|`Zabbix trapper`|health.memoryModule.[{#ID}]<p>Update: 0</p>|
|Running status of Memory Module "{#ID}"|<p>-</p>|`Zabbix trapper`|running.memoryModule.[{#ID}]<p>Update: 0</p>|
|Health status of LLC "{#ID}"|<p>-</p>|`Zabbix trapper`|health.lcc.[{#ID}]<p>Update: 0</p>|
|Running status of LLC "{#ID}"|<p>-</p>|`Zabbix trapper`|running.lcc.[{#ID}]<p>Update: 0</p>|
|Health status of Fibre Channel port "{#ID}"|<p>-</p>|`Zabbix trapper`|health.fcPort.[{#ID}]<p>Update: 0</p>|
|Running status of Fibre Channel port "{#ID}"|<p>-</p>|`Zabbix trapper`|link.fcPort.[{#ID}]<p>Update: 0</p>|
|Health status of BBU "{#ID}"|<p>-</p>|`Zabbix trapper`|health.battery.[{#ID}]<p>Update: 0</p>|
|Running status of BBU "{#ID}"|<p>-</p>|`Zabbix trapper`|running.battery.[{#ID}]<p>Update: 0</p>|
|Health status of Ethernet port "{#ID}"|<p>-</p>|`Zabbix trapper`|health.ethernetPort.[{#ID}]<p>Update: 0</p>|
|Running status of Ethernet port "{#ID}"|<p>-</p>|`Zabbix trapper`|link.ethernetPort.[{#ID}]<p>Update: 0</p>|
|Health status of DPE "{#ID}"|<p>-</p>|`Zabbix trapper`|health.dpe.[{#ID}]<p>Update: 0</p>|
|Running status of DPE "{#ID}"|<p>-</p>|`Zabbix trapper`|running.dpe.[{#ID}]<p>Update: 0</p>|
|Health status of SAS port "{#ID}"|<p>-</p>|`Zabbix trapper`|health.sasPort.[{#ID}]<p>Update: 0</p>|
|Running status of SAS port "{#ID}"|<p>-</p>|`Zabbix trapper`|link.sasPort.[{#ID}]<p>Update: 0</p>|
|Health status of Storage Processors "{#ID}"|<p>-</p>|`Zabbix trapper`|health.storageProcessor.[{#ID}]<p>Update: 0</p>|
|Running status of Storage Processors "{#ID}"|<p>-</p>|`Zabbix trapper`|running.storageProcessor.[{#ID}]<p>Update: 0</p>|
|Health status of SSC "{#ID}"|<p>-</p>|`Zabbix trapper`|health.ssc.[{#ID}]<p>Update: 0</p>|
|Running status of SSC "{#ID}"|<p>-</p>|`Zabbix trapper`|running.ssc.[{#ID}]<p>Update: 0</p>|
|Health status of SSD "{#ID}"|<p>-</p>|`Zabbix trapper`|health.ssd.[{#ID}]<p>Update: 0</p>|
|Running status of SSD "{#ID}"|<p>-</p>|`Zabbix trapper`|running.ssd.[{#ID}]<p>Update: 0</p>|
|Health status of Lun "{#NAME}"|<p>-</p>|`Zabbix trapper`|health.lun.[{#NAME}]<p>Update: 0</p>|
|Allocated size of Lun "{#NAME}"|<p>Size of space actually allocated in the pool for the LUN: For thin-provisioned LUNs this as a rule is less than the sizeTotal attribute until the LUN is not fully populated with user data. For not thin-provisioned LUNs this is approximately equal to the sizeTotal.</p>|`Zabbix trapper`|sizeAllocated.lun.[{#NAME}]<p>Update: 0</p>|
|Total size of Lun "{#NAME}"|<p>LUN size that the system presents to the host or end user.</p>|`Zabbix trapper`|sizeTotal.lun.[{#NAME}]<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOST.NAME} -> Error occurs in getting metrics|<p>-</p>|high|
|{HOST.NAME} -> Error occurs in sending metrics|<p>-</p>|high|
|{HOST.NAME} -> Exist unsupported items|<p>-</p>|average|
|{HOST.NAME} -> No data from storage for 1 hours|<p>-</p>|high|
|{HOST.NAME} -> ioModule "{#ID}" health status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> ioModule "{#ID}" running status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> DAE "{#ID}" health status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> DAE "{#ID}" running status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> FAN "{#ID}" health status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> FAN "{#ID}" running status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> Hard disk "{#ID}" health status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> Hard disk "{#ID}" running status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> PSU "{#ID}" health status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> PSU "{#ID}" running status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> Pool "{#NAME}" health status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> Subscribed capacity on pool "{#NAME}" > {$SUBSCRIBED_PERCENT:"{#NAME}"}%|<p>-</p>|high|
|{HOST.NAME} -> Used capacity on pool "{#NAME}" > {$USED_PERCENT:"{#NAME}"}%|<p>-</p>|high|
|{HOST.NAME} -> Uncommited Port "{#ID}" health status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> Uncommited Port "{#ID}" running status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> MemoryModule "{#ID}" health status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> MemoryModule "{#ID}" running status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> LCC "{#ID}" health status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> LCC "{#ID}" running status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> FibreChannel Port "{#ID}" health status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> FibreChannel Port "{#ID}" running status is {ITEM.VALUE}|<p>Триггер настроен так, что те порты, которые имеют линк-даун (еще не введены в эксплуатацию) - по ним триггеров нет. Те порты, которые линк-ап (эксплуатириуются) - при смене состояния триггер загорается</p>|high|
|{HOST.NAME} -> BBU "{#ID}" health status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> BBU "{#ID}" running status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> Ethernet Port "{#ID}" health status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> Ethernet Port "{#ID}" running status is {ITEM.VALUE}|<p>Триггер настроен так, что те порты, которые имеют линк-даун (еще не введены в эксплуатацию) - по ним триггеров нет. Те порты, которые линк-ап (эксплуатириуются) - при смене состояния триггер загорается</p>|high|
|{HOST.NAME} -> DPE "{#ID}" health status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> DPE "{#ID}" running status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> SAS Port "{#ID}" health status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> SAS Port "{#ID}" running status is {ITEM.VALUE}|<p>Триггер настроен так, что те порты, которые имеют линк-даун (еще не введены в эксплуатацию) - по ним триггеров нет. Те порты, которые линк-ап (эксплуатириуются) - при смене состояния триггер загорается</p>|high|
|{HOST.NAME} -> Storage Processor "{#ID}" health status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> Storage Processor "{#ID}" running status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> SSC "{#ID}" health status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> SSC "{#ID}" running status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> SSD "{#ID}" health status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> SSD "{#ID}" running status is {ITEM.VALUE}|<p>-</p>|high|
|{HOST.NAME} -> Lun "{#NAME}" health status is {ITEM.VALUE}|<p>-</p>|high|
