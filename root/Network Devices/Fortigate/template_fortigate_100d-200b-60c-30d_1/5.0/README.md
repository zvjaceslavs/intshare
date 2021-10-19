# FGT-INTERFACES DISCOVERY

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
|Interfaces de Rede|<p>-</p>|`SNMP agent`|ifname<p>Update: 300</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Download $1|<p>-</p>|`SNMP agent`|ifInOctets[{#SNMPVALUE}]<p>Update: 10</p>|
|Upload $1|<p>-</p>|`SNMP agent`|ifHCOutOctets[{#SNMPVALUE}]<p>Update: 10</p>|
|Velocidade do Link $1|<p>-</p>|`SNMP agent`|ifHighSpeed[{#SNMPVALUE}]<p>Update: 600</p>|
## Triggers

There are no triggers in this template.

# FGT-CPU

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
|Numero de Processadores|<p>-</p>|`SNMP agent`|fgProcessorCount<p>Update: 3600</p>|
|Uso de CPU do sistema|<p>-</p>|`SNMP agent`|fgSysCpuUsage<p>Update: 10</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Uso da CPU igual a 100%|<p>-</p>|disaster|
|Uso da CPU superior a 80%|<p>-</p>|average|
|uso da CPU superior a 90%|<p>-</p>|high|
# FGT-EQUIPAMENTO

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
|Modelo do Dispositivo|<p>-</p>|`SNMP agent`|entPhysicalModelName<p>Update: 600</p>|
|Capacidade de Disco|<p>-</p>|`SNMP agent`|fgSysDiskCapacity<p>Update: 600</p>|
|Uso de Disco|<p>-</p>|`SNMP agent`|fgSysDiskUsage<p>Update: 600</p>|
|Versão do FortiOS|<p>-</p>|`SNMP agent`|fgSysVersion<p>Update: 600</p>|
|Versão do banco de dados de assinatura de vírus|<p>-</p>|`SNMP agent`|fgSysVersionAv<p>Update: 600</p>|
|Versão do banco de dados de assinatura IPS|<p>-</p>|`SNMP agent`|fgSysVersionIps<p>Update: 600</p>|
|Número Serial|<p>-</p>|`SNMP agent`|fnSysSerial<p>Update: 600</p>|
|Acessibilidade do dispositivo usando ICMP|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|Perda de pacotes de dispositivos|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
|Fabricante|<p>-</p>|`SNMP agent`|mib-2.47.1.2.1.1.2.1<p>Update: 600</p>|
|Contato|<p>-</p>|`SNMP agent`|sysContact<p>Update: 600</p>|
|Nome do Dispositivo|<p>-</p>|`SNMP agent`|sysDescr<p>Update: 600</p>|
|Localização do Dispositivo|<p>-</p>|`SNMP agent`|sysLocation<p>Update: 600</p>|
|Uptime|<p>-</p>|`SNMP agent`|sysUpTime<p>Update: 600</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Base de dados de assinaturas de vírus foi alterado|<p>-</p>|information|
|Hostname foi alterado|<p>-</p>|information|
|IPS assinatura de dados foi alterado|<p>-</p>|information|
|Número de série do dispositivo foi alterado|<p>-</p>|information|
|Verifique conexão com a Internet do {HOST.NAME}, pois há perda de pacotes|<p>-</p>|high|
|Versão do software foi alterado|<p>-</p>|information|
|{HOST.NAME} acaba de ser reiniciado|<p>-</p>|warning|
|{HOST.NAME} está inacessível ou DOWN|<p>-</p>|disaster|
# FGT-MEMORIA

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
|Uso da memória do sistema (%)|<p>-</p>|`SNMP agent`|fgSysMemUsage<p>Update: 10</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Uso de memória superior a 80%|<p>-</p>|warning|
|Uso de memória superior a 90%|<p>-</p>|high|
|Uso de memória superior a 100%|<p>-</p>|disaster|
