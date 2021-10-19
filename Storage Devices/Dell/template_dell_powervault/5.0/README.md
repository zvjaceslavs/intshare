# Template DELL POWERVAULT TL2000

## Overview

Created and configured in Zabbix 3.2


 


By using SNMP, I believe it works in other versions.


 


DELL MIBs required


 


Link: https://www.dell.com/support/home/br/en/brbsdt1/drivers/driversdetails?driverId=M0KV7



## Author

Geraldo Jr

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMUNITY}|<p>-</p>|`public`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Drive Enumeration|<p>-</p>|`SNMP agent`|driveEntryId<p>Update: 86400</p>|
|Library Enumeration|<p>-</p>|`SNMP agent`|libraryEntryId<p>Update: 86400</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Description|<p>-</p>|`SNMP agent`|shadowIdDescription<p>Update: 86400</p>|
|Display Name|<p>-</p>|`SNMP agent`|shadowIdDisplayName<p>Update: 86400</p>|
|Status Global do Dispositivo|<p>-</p>|`SNMP agent`|shadowStatusGlobalStatus<p>Update: 60</p>|
|Uptime|<p>-</p>|`SNMP agent`|shadowStatusTimeStamp.0<p>Update: 300</p>|
|Drive $1 (LLD)|<p>-</p>|`SNMP agent`|driveEntryId[{#SNMPVALUE}]<p>Update: 3600</p>|
|Erro de leitura Hard $1 (LLD)|<p>Contagem de recuperação de erros Hard de leitura para o cartucho atual</p>|`SNMP agent`|driveHardReadErrors[{#SNMPVALUE}]<p>Update: 300</p>|
|Erro de gravação Hard $1 (LLD)|<p>Contagem de recuperação de erros Soft de gravação para o cartucho atual</p>|`SNMP agent`|driveHardWrtErrors[{#SNMPVALUE}]<p>Update: 300</p>|
|Cargas do cartucho  {#SNMPINDEX} (LLD)|<p>Cargas totais do cartucho para a unidade.</p>|`SNMP agent`|driveLoads[{#SNMPVALUE}]<p>Update: 3600</p>|
|Drive Product ID $1 (LLD)|<p>-</p>|`SNMP agent`|driveProductId[{#SNMPVALUE}]<p>Update: 86400</p>|
|Drive SCSI ID $1 (LLD)|<p>-</p>|`SNMP agent`|driveScsiId[{#SNMPVALUE}]<p>Update: 3600</p>|
|Drive Product Serial Number $1 (LLD)|<p>-</p>|`SNMP agent`|driveSerNum[{#SNMPVALUE}]<p>Update: 86400</p>|
|Erro de leitura Soft $1 (LLD)|<p>Contagem de recuperação de erros Soft de leitura para o cartucho atual</p>|`SNMP agent`|driveSoftReadErrors[{#SNMPVALUE}]<p>Update: 300</p>|
|Erro de gravação Soft $1 (LLD)|<p>Contagem de recuperação de erros Soft de gravação para o cartucho atual</p>|`SNMP agent`|driveSoftWrtErrors[{#SNMPVALUE}]<p>Update: 300</p>|
|Tempo de movimentação $1 (LLD)|<p>Total de horas de movimentação de unidade deste dispositivo.</p>|`SNMP agent`|driveTpHrs[{#SNMPVALUE}]<p>Update: 3600</p>|
|Library - Qtde de Drivers (LLD)|<p>Number of drives contained in this library.</p>|`SNMP agent`|libraryDrvCnt[{#SNMPVALUE}]<p>Update: 3600</p>|
|Library - Error Description (LLD)|<p>-</p>|`SNMP agent`|libraryFaultDescr[{#SNMPVALUE}]<p>Update: 60</p>|
|Library - Código do Erro (LLD)|<p>The library Fault error code.</p>|`SNMP agent`|libraryFaultFSC[{#SNMPVALUE}]<p>Update: 60</p>|
|Library - Severidade do Erro (LLD)|<p>The library Fault error code.</p>|`SNMP agent`|libraryFaultSev[{#SNMPVALUE}]<p>Update: 60</p>|
|Library - Service TAG (LLD)|<p>-</p>|`SNMP agent`|libraryServiceTag[{#SNMPVALUE}]<p>Update: 86400</p>|
|Library - Qtde de Slots (LLD)|<p>Number of cartridge slots contained in this library</p>|`SNMP agent`|librarySlotCnt[{#SNMPVALUE}]<p>Update: 3600</p>|
|Library - Status (LLD)|<p>-</p>|`SNMP agent`|libraryState[{#SNMPVALUE}]<p>Update: 60</p>|
|Library - Uptime (LLD)|<p>-</p>|`SNMP agent`|libraryTimeStamp[{#SNMPVALUE}]<p>Update: 3600</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Erro de gravação Hard em TL2000|<p>-</p>|<p>**Expression**: {Template DELL POWERVAULT TL2000:driveHardWrtErrors[{#SNMPVALUE}].last()}>0</p><p>**Recovery expression**: </p>|average|
|Erro de gravação Soft (leve) no TL2000|<p>-</p>|<p>**Expression**: {Template DELL POWERVAULT TL2000:driveSoftWrtErrors[{#SNMPVALUE}].last()}>0</p><p>**Recovery expression**: </p>|warning|
|Erro de leitura Hard no TL2000|<p>-</p>|<p>**Expression**: {Template DELL POWERVAULT TL2000:driveHardReadErrors[{#SNMPVALUE}].last()}>0</p><p>**Recovery expression**: </p>|average|
|Erro de leitura Soft (leve)  no TL2000|<p>-</p>|<p>**Expression**: {Template DELL POWERVAULT TL2000:driveSoftReadErrors[{#SNMPVALUE}].last()}>0</p><p>**Recovery expression**: </p>|warning|
|Erro em Dispositivo de Fita (TL2000)|<p>-</p>|<p>**Expression**: {Template DELL POWERVAULT TL2000:libraryFaultSev[{#SNMPVALUE}].last()}>0</p><p>**Recovery expression**: </p>|warning|
|Erro de gravação Hard em TL2000 (LLD)|<p>-</p>|<p>**Expression**: {Template DELL POWERVAULT TL2000:driveHardWrtErrors[{#SNMPVALUE}].last()}>0</p><p>**Recovery expression**: </p>|average|
|Erro de gravação Soft (leve) no TL2000 (LLD)|<p>-</p>|<p>**Expression**: {Template DELL POWERVAULT TL2000:driveSoftWrtErrors[{#SNMPVALUE}].last()}>0</p><p>**Recovery expression**: </p>|warning|
|Erro de leitura Hard no TL2000 (LLD)|<p>-</p>|<p>**Expression**: {Template DELL POWERVAULT TL2000:driveHardReadErrors[{#SNMPVALUE}].last()}>0</p><p>**Recovery expression**: </p>|average|
|Erro de leitura Soft (leve)  no TL2000 (LLD)|<p>-</p>|<p>**Expression**: {Template DELL POWERVAULT TL2000:driveSoftReadErrors[{#SNMPVALUE}].last()}>0</p><p>**Recovery expression**: </p>|warning|
|Erro em Dispositivo de Fita (TL2000) (LLD)|<p>-</p>|<p>**Expression**: {Template DELL POWERVAULT TL2000:libraryFaultSev[{#SNMPVALUE}].last()}>0</p><p>**Recovery expression**: </p>|warning|
