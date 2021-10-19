# Template HPE 3PAR SMI-S for shareZabbix

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$HP_PASSWORD}|<p>-</p>|``|Text macro|
|{$HP_USER}|<p>-</p>|``|Text macro|
|{$OVERPROVISION}|<p>-</p>|`90`|Text macro|
|{$SMI_S_PORT}|<p>-</p>|`5989`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|PhysicalMemory|<p>-</p>|`Zabbix trapper`|PhysicalMemory<p>Update: 0</p>|
|FCPort|<p>-</p>|`Zabbix trapper`|FCPort<p>Update: 0</p>|
|DynamicStoragePool|<p>-</p>|`Zabbix trapper`|DynamicStoragePool<p>Update: 0</p>|
|NodeSystem|<p>-</p>|`Zabbix trapper`|NodeSystem<p>Update: 0</p>|
|Battery|<p>-</p>|`Zabbix trapper`|Battery<p>Update: 0</p>|
|EthernetPort|<p>-</p>|`Zabbix trapper`|EthernetPort<p>Update: 0</p>|
|SASPort|<p>-</p>|`Zabbix trapper`|SASPort<p>Update: 0</p>|
|NodePowerSupply|<p>-</p>|`Zabbix trapper`|NodePowerSupply<p>Update: 0</p>|
|PCICard|<p>-</p>|`Zabbix trapper`|PCICard<p>Update: 0</p>|
|Fan|<p>-</p>|`Zabbix trapper`|Fan<p>Update: 0</p>|
|CagePowerSupply|<p>-</p>|`Zabbix trapper`|CagePowerSupply<p>Update: 0</p>|
|DiskDrive|<p>-</p>|`Zabbix trapper`|DiskDrive<p>Update: 0</p>|
|DriveCage|<p>-</p>|`Zabbix trapper`|DriveCage<p>Update: 0</p>|
|IDEDrive|<p>-</p>|`Zabbix trapper`|IDEDrive<p>Update: 0</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Get Overprovisioning CPG|<p>-</p>|`External check`|hp_3par_get_state_wbem.py["--hp_ip={HOST.IP}", "--hp_port={$SMI_S_PORT}", "--hp_user={$HP_USER}", "--hp_password={$HP_PASSWORD}", "--storage_name={HOST.NAME}", "--overprovisioning"]<p>Update: 15m</p>|
|Get Status|<p>-</p>|`External check`|hp_3par_get_state_wbem.py["--hp_ip={HOST.IP}", "--hp_port={$SMI_S_PORT}", "--hp_user={$HP_USER}", "--hp_password={$HP_PASSWORD}", "--storage_name={HOST.NAME}", "--status"]<p>Update: 3m</p>|
|Get Discovery|<p>-</p>|`External check`|hp_3par_get_state_wbem.py["--hp_ip={HOST.IP}", "--hp_port={$SMI_S_PORT}", "--hp_user={$HP_USER}", "--hp_password={$HP_PASSWORD}", "--storage_name={HOST.NAME}", "--discovery"]<p>Update: 1h</p>|
|Operational status of PhysicalMemory module "{#SERIAL_NUMBER}"|<p>-</p>|`Zabbix trapper`|oper.PhysicalMemory.[{#SERIAL_NUMBER}]<p>Update: 0</p>|
|Health status of a FCPort "{#ELEMENT_NAME}"|<p>-</p>|`Zabbix trapper`|health.FCPort.[{#ELEMENT_NAME}]<p>Update: 0</p>|
|Operational status of a FCPort "{#ELEMENT_NAME}"|<p>-</p>|`Zabbix trapper`|oper.FCPort.[{#ELEMENT_NAME}]<p>Update: 0</p>|
|Other operational status of a FCPort "{#ELEMENT_NAME}"|<p>-</p>|`Zabbix trapper`|other.oper.FCPort.[{#ELEMENT_NAME}]<p>Update: 0</p>|
|Health status of a DynamicStoragePool "{#ELEMENT_NAME}"|<p>-</p>|`Zabbix trapper`|health.DynamicStoragePool.[{#ELEMENT_NAME}]<p>Update: 0</p>|
|Operational status of a DynamicStoragePool "{#ELEMENT_NAME}"|<p>-</p>|`Zabbix trapper`|oper.DynamicStoragePool.[{#ELEMENT_NAME}]<p>Update: 0</p>|
|Overprovisioning of a DynamicStoragePool "{#ELEMENT_NAME}"|<p>-</p>|`Zabbix trapper`|overprv.DynamicStoragePool.[{#ELEMENT_NAME}]<p>Update: 0</p>|
|Health status of Node "{#ELEMENT_NAME}"|<p>-</p>|`Zabbix trapper`|health.NodeSystem.[{#ELEMENT_NAME}]<p>Update: 0</p>|
|LED status of Node "{#ELEMENT_NAME}"|<p>-</p>|`Zabbix trapper`|led.NodeSystem.[{#ELEMENT_NAME}]<p>Update: 0</p>|
|Operational status of Node "{#ELEMENT_NAME}"|<p>-</p>|`Zabbix trapper`|oper.NodeSystem.[{#ELEMENT_NAME}]<p>Update: 0</p>|
|Health status of a Battery "{#DEVICE_ID}"|<p>-</p>|`Zabbix trapper`|health.Battery.[{#DEVICE_ID}]<p>Update: 0</p>|
|Operational status of a Battery "{#DEVICE_ID}"|<p>-</p>|`Zabbix trapper`|oper.Battery.[{#DEVICE_ID}]<p>Update: 0</p>|
|Health status of a EthernetPort "{#ELEMENT_NAME}"|<p>-</p>|`Zabbix trapper`|health.EthernetPort.[{#ELEMENT_NAME}]<p>Update: 0</p>|
|Operational status of a EthernetPort "{#ELEMENT_NAME}"|<p>-</p>|`Zabbix trapper`|oper.EthernetPort.[{#ELEMENT_NAME}]<p>Update: 0</p>|
|Other operational status of a EthernetPort "{#ELEMENT_NAME}"|<p>-</p>|`Zabbix trapper`|other.oper.EthernetPort.[{#ELEMENT_NAME}]<p>Update: 0</p>|
|Health status of SASPort "{#ELEMENT_NAME}"|<p>-</p>|`Zabbix trapper`|health.SASPort.[{#ELEMENT_NAME}]<p>Update: 0</p>|
|Operational status of SASPort "{#ELEMENT_NAME}"|<p>-</p>|`Zabbix trapper`|oper.SASPort.[{#ELEMENT_NAME}]<p>Update: 0</p>|
|Other operational status of SASPort "{#ELEMENT_NAME}"|<p>-</p>|`Zabbix trapper`|other.oper.SASPort.[{#ELEMENT_NAME}]<p>Update: 0</p>|
|Health status of "{#NODE_NAME} - {#NUMBER_PSU}"|<p>-</p>|`Zabbix trapper`|health.NodePowerSupply.[{#DEVICE_ID}]<p>Update: 0</p>|
|Operational status of "{#NODE_NAME} - {#NUMBER_PSU}"|<p>-</p>|`Zabbix trapper`|oper.NodePowerSupply.[{#DEVICE_ID}]<p>Update: 0</p>|
|Operational status of PCICard "{#MANUFACTURER}-{#TAG}"|<p>-</p>|`Zabbix trapper`|oper.PCICard.[{#TAG}]<p>Update: 0</p>|
|Health status of a Fan "{#DEVICE_ID}"|<p>-</p>|`Zabbix trapper`|health.Fan.[{#DEVICE_ID}]<p>Update: 0</p>|
|Operational status of a Fan "{#DEVICE_ID}"|<p>-</p>|`Zabbix trapper`|oper.Fan.[{#DEVICE_ID}]<p>Update: 0</p>|
|Health status of "{#CAGE_NAME} - {#NUMBER_PSU}"|<p>-</p>|`Zabbix trapper`|health.CagePowerSupply.[{#DEVICE_ID}]<p>Update: 0</p>|
|Operational status of "{#CAGE_NAME} - {#NUMBER_PSU}"|<p>-</p>|`Zabbix trapper`|oper.CagePowerSupply.[{#DEVICE_ID}]<p>Update: 0</p>|
|Health status of a DiskDrive "{#ELEMENT_NAME}"|<p>-</p>|`Zabbix trapper`|health.DiskDrive.[{#ELEMENT_NAME}]<p>Update: 0</p>|
|Operational status of a DiskDrive "{#ELEMENT_NAME}"|<p>-</p>|`Zabbix trapper`|oper.DiskDrive.[{#ELEMENT_NAME}]<p>Update: 0</p>|
|Health status of a DriveCage "{#ELEMENT_NAME}"|<p>-</p>|`Zabbix trapper`|health.DriveCage.[{#ELEMENT_NAME}]<p>Update: 0</p>|
|Operational status of a DriveCage "{#ELEMENT_NAME}"|<p>-</p>|`Zabbix trapper`|oper.DriveCage.[{#ELEMENT_NAME}]<p>Update: 0</p>|
|Operational status of IDEDrive "{#TAG}"|<p>-</p>|`Zabbix trapper`|oper.IDEDrive.[{#TAG}]<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOST.NAME} -> Cannot get metrics from storage|<p>-</p>|average|
|{HOST.NAME} -> Connect to storage is failed|<p>-</p>|average|
|{HOST.NAME} -> No data from storage for 1 hours|<p>-</p>|average|
|{HOST.NAME} -> Processing metrics by zabbix is failed|<p>-</p>|average|
|{HOST.NAME} -> Sending metrics to zabbix is failed|<p>-</p>|average|
|{HOST.NAME} -> PhysicalMemory "{#SERIAL_NUMBER}" operational status is "{ITEM.VALUE}"|<p>-</p>|high|
|{HOST.NAME} -> FCPort "{#ELEMENT_NAME}" health status is "{ITEM.VALUE}"|<p>-</p>|high|
|{HOST.NAME} -> FCPort "{#ELEMENT_NAME}" operational status is "{ITEM.VALUE}"|<p>Предыдущее триггерное выражение: ({TRIGGER.VALUE}=0 and {Template HPE 3PAR SMI-S:oper.FCPort.[{#ELEMENT_NAME}].last()}<>2 and {Template HPE 3PAR SMI-S:oper.FCPort.[{#ELEMENT_NAME}].change()}<>0) or ({TRIGGER.VALUE}=1 and {Template HPE 3PAR SMI-S:oper.FCPort.[{#ELEMENT_NAME}].last()}<>2)</p>|high|
|{HOST.NAME} -> FCPort "{#ELEMENT_NAME}" other operational status is "{ITEM.VALUE}"|<p>Предыдущее триггерное выражение: ({TRIGGER.VALUE}=0 and {Template HPE 3PAR SMI-S:other.oper.FCPort.[{#ELEMENT_NAME}].last()}<>3 and {Template HPE 3PAR SMI-S:other.oper.FCPort.[{#ELEMENT_NAME}].change()}<>0) or ({TRIGGER.VALUE}=1 and {Template HPE 3PAR SMI-S:other.oper.FCPort.[{#ELEMENT_NAME}].last()}<>3)</p>|high|
|{HOST.NAME} -> DynamicStoragePool "{#ELEMENT_NAME}" health status is "{ITEM.VALUE}"|<p>-</p>|high|
|{HOST.NAME} -> DynamicStoragePool "{#ELEMENT_NAME}" operational status is "{ITEM.VALUE}"|<p>-</p>|high|
|{HOST.NAME} -> Overprovision on DynamicStoragePool "{#ELEMENT_NAME}" > {$OVERPROVISION:"{#ELEMENT_NAME}"}%|<p>-</p>|high|
|{HOST.NAME} -> NodeSystem "{#ELEMENT_NAME}" health status is "{ITEM.VALUE}"|<p>-</p>|high|
|{HOST.NAME} -> NodeSystem "{#ELEMENT_NAME}" LED status is "{ITEM.VALUE}"|<p>-</p>|high|
|{HOST.NAME} -> NodeSystem "{#ELEMENT_NAME}" operational status is "{ITEM.VALUE}"|<p>-</p>|high|
|{HOST.NAME} -> Battery "{#DEVICE_ID}" health status is "{ITEM.VALUE}"|<p>-</p>|high|
|{HOST.NAME} -> Battery "{#DEVICE_ID}" operational status is "{ITEM.VALUE}"|<p>-</p>|high|
|{HOST.NAME} -> EthernetPort "{#ELEMENT_NAME}" health status is "{ITEM.VALUE}"|<p>-</p>|high|
|{HOST.NAME} -> EthernetPort "{#ELEMENT_NAME}" operational status is "{ITEM.VALUE}"|<p>-</p>|high|
|{HOST.NAME} -> EthernetPort "{#ELEMENT_NAME}" other operational status is "{ITEM.VALUE}"|<p>-</p>|high|
|{HOST.NAME} -> SASPort "{#ELEMENT_NAME}" health status is "{ITEM.VALUE}"|<p>-</p>|high|
|{HOST.NAME} -> SASPort "{#ELEMENT_NAME}" operational status is "{ITEM.VALUE}"|<p>-</p>|high|
|{HOST.NAME} -> SASPort "{#ELEMENT_NAME}" other operational status is "{ITEM.VALUE}"|<p>-</p>|high|
|{HOST.NAME} -> "{#NUMBER_PSU} - {#NODE_NAME} - {#SERIAL_NUMBER_PSU}" health status is "{ITEM.VALUE}"|<p>-</p>|high|
|{HOST.NAME} -> "{#NUMBER_PSU} - {#NODE_NAME} - {#SERIAL_NUMBER_PSU}" operational status is "{ITEM.VALUE}"|<p>-</p>|high|
|{HOST.NAME} -> PCICard "{#MANUFACTURER}-{#TAG}" operational status is "{ITEM.VALUE}"|<p>-</p>|high|
|{HOST.NAME} -> Fan "{#DEVICE_ID}" health status is "{ITEM.VALUE}"|<p>-</p>|high|
|{HOST.NAME} -> Fan "{#DEVICE_ID}" operational status is "{ITEM.VALUE}"|<p>-</p>|high|
|{HOST.NAME} -> "{#NUMBER_PSU} - {#CAGE_NAME} - {#SERIAL_NUMBER_PSU}" health status is "{ITEM.VALUE}"|<p>-</p>|high|
|{HOST.NAME} -> "{#NUMBER_PSU} - {#CAGE_NAME} - {#SERIAL_NUMBER_PSU}" operational status is "{ITEM.VALUE}"|<p>-</p>|high|
|{HOST.NAME} -> DiskDrive "{#ELEMENT_NAME}" health status is "{ITEM.VALUE}"|<p>-</p>|high|
|{HOST.NAME} -> DiskDrive "{#ELEMENT_NAME}" operational status is "{ITEM.VALUE}"|<p>-</p>|high|
|{HOST.NAME} -> DriveCage "{#ELEMENT_NAME}" health status is "{ITEM.VALUE}"|<p>-</p>|high|
|{HOST.NAME} -> DriveCage "{#ELEMENT_NAME}" operational status is "{ITEM.VALUE}"|<p>-</p>|high|
|{HOST.NAME} -> IDEDrive "{#TAG}" operational status is "{ITEM.VALUE}"|<p>-</p>|high|
