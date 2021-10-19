# Seagate Pro NAS DP6

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
|Tamanho do RAID|<p>SEAGATE-NAS-SYSTEM-MIB::snPoolSizeHigh.1</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snPoolSizeHigh.1<p>Update: 60</p>|
|Memória física em uso|<p>SEAGATE-NAS-SYSTEM-MIB::snMemPhysUsed.0</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snMemPhysUsed.0<p>Update: 60</p>|
|Versão do Firmware|<p>SEAGATE-NAS-SYSTEM-MIB::snMiscFWRev.0</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snMiscFWRev.0<p>Update: 60</p>|
|Bytes recebidos na eth1|<p>SEAGATE-NAS-SYSTEM-MIB::snIfBytesReceived.2</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snIfBytesReceived.2<p>Update: 60</p>|
|Tipo de RAID|<p>SEAGATE-NAS-SYSTEM-MIB::snPoolLevelLevel.1</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snPoolLevelLevel.1<p>Update: 60</p>|
|Número de série do disco 5|<p>SEAGATE-NAS-SYSTEM-MIB::snDiskSerial.5</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snDiskSerial.5<p>Update: 60</p>|
|Rotação máxima da ventoinha|<p>SEAGATE-NAS-SYSTEM-MIB::snFanSensorMaxRPM.1</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snFanSensorMaxRPM.1<p>Update: 60</p>|
|Status do disco 5|<p>SEAGATE-NAS-SYSTEM-MIB::snDiskStatus.5</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snDiskStatus.5<p>Update: 60</p>|
|Modelo do disco 3|<p>SEAGATE-NAS-SYSTEM-MIB::snDiskModel.3</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snDiskModel.3<p>Update: 60</p>|
|Percentual de uso|<p>SEAGATE-NAS-SYSTEM-MIB::snVolPercentUsed.2</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snVolPercentUsed.2<p>Update: 60</p>|
|Modelo do disco 4|<p>SEAGATE-NAS-SYSTEM-MIB::snDiskModel.4</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snDiskModel.4<p>Update: 60</p>|
|Memória física livre|<p>SEAGATE-NAS-SYSTEM-MIB::snMemPhysFree.0</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snMemPhysFree.0<p>Update: 60</p>|
|Número de série do disco 3|<p>SEAGATE-NAS-SYSTEM-MIB::snDiskSerial.3</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snDiskSerial.3<p>Update: 60</p>|
|Bytes recebidos na eth2|<p>SEAGATE-NAS-SYSTEM-MIB::snIfBytesReceived.4</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snIfBytesReceived.4<p>Update: 60</p>|
|Número de série do disco 6|<p>SEAGATE-NAS-SYSTEM-MIB::snDiskSerial.6</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snDiskSerial.6<p>Update: 60</p>|
|Memória física total|<p>SEAGATE-NAS-SYSTEM-MIB::snMemPhysTot.0</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snMemPhysTot.0<p>Update: 60</p>|
|Rotação atual da ventoinha|<p>SEAGATE-NAS-SYSTEM-MIB::snFanSensorCurrentRPM.1</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snFanSensorCurrentRPM.1<p>Update: 60</p>|
|Status do disco 3|<p>SEAGATE-NAS-SYSTEM-MIB::snDiskStatus.3</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snDiskStatus.3<p>Update: 60</p>|
|Número de série do disco 2|<p>SEAGATE-NAS-SYSTEM-MIB::snDiskSerial.2</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snDiskSerial.2<p>Update: 60</p>|
|Memória física em cache|<p>SEAGATE-NAS-SYSTEM-MIB::snMemPhysCached.0</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snMemPhysCached.0<p>Update: 60</p>|
|Tamanho do disco 4|<p>SEAGATE-NAS-SYSTEM-MIB::snDiskSize.4</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snDiskSize.4<p>Update: 60</p>|
|Status do disco 2|<p>SEAGATE-NAS-SYSTEM-MIB::snDiskStatus.2</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snDiskStatus.2<p>Update: 60</p>|
|Status do RAID|<p>SEAGATE-NAS-SYSTEM-MIB::snPoolState.1</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snPoolState.1<p>Update: 60</p>|
|Nome do Volume|<p>SEAGATE-NAS-SYSTEM-MIB::snVolFriendlyName.2</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snVolFriendlyName.2<p>Update: 60</p>|
|Número de série do disco 4|<p>SEAGATE-NAS-SYSTEM-MIB::snDiskSerial.4</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snDiskSerial.4<p>Update: 60</p>|
|Tamanho do disco 5|<p>SEAGATE-NAS-SYSTEM-MIB::snDiskSize.5</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snDiskSize.5<p>Update: 60</p>|
|Modelo do disco 2|<p>SEAGATE-NAS-SYSTEM-MIB::snDiskModel.2</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snDiskModel.2<p>Update: 60</p>|
|Tamanho do disco 3|<p>SEAGATE-NAS-SYSTEM-MIB::snDiskSize.3</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snDiskSize.3<p>Update: 60</p>|
|Status do disco 1|<p>SEAGATE-NAS-SYSTEM-MIB::snDiskStatus.1</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snDiskStatus.1<p>Update: 60</p>|
|Tamanho do disco 6|<p>SEAGATE-NAS-SYSTEM-MIB::snDiskSize.6</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snDiskSize.6<p>Update: 60</p>|
|Tamanho do disco 1|<p>SEAGATE-NAS-SYSTEM-MIB::snDiskSize.1</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snDiskSize.1<p>Update: 60</p>|
|Quantidade de processadores|<p>SEAGATE-NAS-SYSTEM-MIB::snCpuNum.0</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snCpuNum.0<p>Update: 60</p>|
|Status do disco 4|<p>SEAGATE-NAS-SYSTEM-MIB::snDiskStatus.4</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snDiskStatus.4<p>Update: 60</p>|
|Status do disco 6|<p>SEAGATE-NAS-SYSTEM-MIB::snDiskStatus.6</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snDiskStatus.6<p>Update: 60</p>|
|Tamanho do disco 2|<p>SEAGATE-NAS-SYSTEM-MIB::snDiskSize.2</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snDiskSize.2<p>Update: 60</p>|
|Modelo do disco 6|<p>SEAGATE-NAS-SYSTEM-MIB::snDiskModel.6</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snDiskModel.6<p>Update: 60</p>|
|Número de série do disco 1|<p>SEAGATE-NAS-SYSTEM-MIB::snDiskSerial.1</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snDiskSerial.1<p>Update: 60</p>|
|Bytes enviados na eth2|<p>SEAGATE-NAS-SYSTEM-MIB::snIfBytesSent.4</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snIfBytesSent.4<p>Update: 60</p>|
|Modelo do disco 5|<p>SEAGATE-NAS-SYSTEM-MIB::snDiskModel.5</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snDiskModel.5<p>Update: 60</p>|
|Bytes enviados na eth1|<p>SEAGATE-NAS-SYSTEM-MIB::snIfBytesSent.2</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snIfBytesSent.2<p>Update: 60</p>|
|Modelo do disco 1|<p>SEAGATE-NAS-SYSTEM-MIB::snDiskModel.1</p>|`SNMP agent`|SEAGATE_NAS_SYSTEM_MIB__snDiskModel.1<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|O status do disco 1 do {HOST.NAME} foi alterado|<p>-</p>|average|
|O status do disco 2 do {HOST.NAME} foi alterado|<p>-</p>|average|
|O status do disco 3 do {HOST.NAME} foi alterado|<p>-</p>|average|
|O status do disco 4 do {HOST.NAME} foi alterado|<p>-</p>|average|
|O status do disco 5 do {HOST.NAME} foi alterado|<p>-</p>|average|
|O status do disco 6 do {HOST.NAME} foi alterado|<p>-</p>|average|
|Uso de disco em {HOST.NAME} acima de 90%|<p>-</p>|warning|
