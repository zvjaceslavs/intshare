# Template_SNMP_FIREWALL_KERIO_CONTROL_LLD_VERSAO-1.0

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
|Descoberta LLD de Inteface de Rede do Firewall|<p>-</p>|`SNMP agent`|FwIfName.discovery<p>Update: 84600</p>|
|Descoberta LLD Descricao do Firewall|<p>-</p>|`SNMP agent`|sysDescr.discovery<p>Update: 84600</p>|
|Descoberta LLD Informacoes Memoria Firewall|<p>-</p>|`SNMP agent`|fgHaStatsMemUsage2.discovery<p>Update: 84600</p>|
|Descoberta LLD Inventario Hardware|<p>-</p>|`SNMP agent`|fgHaStatsHostname.discovery<p>Update: 84600</p>|
|Descoberta LLD Informacoes Processador Firewall|<p>-</p>|`SNMP agent`|fgHaStatsCpuUsages.discovery<p>Update: 84600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Latencia|<p>-</p>|`Simple check`|icmppingsec<p>Update: 30s</p>|
|Perda de Pacote ( porcentagem)|<p>-</p>|`Simple check`|icmppingloss<p>Update: 30s</p>|
|Tempo Ligado|<p>-</p>|`SNMP agent`|sysUpTimeInstance.0<p>Update: 600</p>|
|Disponibilidade|<p>-</p>|`Simple check`|icmpping<p>Update: 30s</p>|
|Status administrativo da Interface de Rede $1|<p>-</p>|`SNMP agent`|ifAdminStatus.[{#SNMPVALUE}]<p>Update: 60</p>|
|Alias da Interface de Rede $1|<p>-</p>|`SNMP agent`|ifAlias.[{#SNMPINDEX}]<p>Update: 84600</p>|
|Trafego de Entrada na interface $1|<p>-</p>|`SNMP agent`|ifInOctets.[{#SNMPVALUE}]<p>Update: 600</p>|
|Descricao da Interface de Rede $1|<p>-</p>|`SNMP agent`|ifName.[{#SNMPINDEX}]<p>Update: 84600</p>|
|Trafego de Saida na interface $1|<p>-</p>|`SNMP agent`|ifOutOctets.[{#SNMPVALUE}]<p>Update: 600;60s/1-5,07:00-19:00</p>|
|Mac Address da Interface de Rede $1|<p>-</p>|`SNMP agent`|ifPhysAddress.[{#SNMPINDEX}]<p>Update: 84600</p>|
|Tipo de Interface de Rede $1|<p>-</p>|`SNMP agent`|ifType.[{#SNMPINDEX}]<p>Update: 84600</p>|
|Quantidade de servicos no Firewall $1|<p>-</p>|`SNMP agent`|ifNumber.[{#SNMPVALUE}]<p>Update: 60</p>|
|Informacoes de Contato do Firewall $1|<p>-</p>|`SNMP agent`|sysContact.[{#SNMPVALUE}]<p>Update: 84600</p>|
|Descricao do Equipamento $1|<p>-</p>|`SNMP agent`|sysDescr.[{#SNMPVALUE}]<p>Update: 84600</p>|
|Informacoes de Localizacao do Firewall $1|<p>-</p>|`SNMP agent`|sysLocation.[{#SNMPVALUE}]<p>Update: 84600</p>|
|Informacoes de OID do Firewall $1|<p>-</p>|`SNMP agent`|sysObjectID.[{#SNMPVALUE}]<p>Update: 84600</p>|
|Memoria em uso em % {#SNMPVALUE}|<p>-</p>|`SNMP agent`|fgHaStatsMemUsage.[{#SNMPVALUE}]<p>Update: 60</p>|
|Uso de Memoria em cache do Firewall $1|<p>-</p>|`SNMP agent`|highMemUsage.[{#SNMPVALUE}]<p>Update: 60</p>|
|Memoria Total do Firewall $1|<p>-</p>|`SNMP agent`|hrMemorySize.[{#SNMPVALUE}]<p>Update: 84600</p>|
|Uso de Memoria em Buffer do Firewall $1|<p>-</p>|`SNMP agent`|memBuffer.[{#SNMPVALUE}]<p>Update: 30s</p>|
|Uso de Memoria em Share do Firewall $1|<p>-</p>|`SNMP agent`|memShared.[{#SNMPVALUE}]<p>Update: 60</p>|
|Memoria Total Livre do Firewall $1|<p>-</p>|`SNMP agent`|memTotalFree.[{#SNMPVALUE}]<p>Update: 60</p>|
|Hostname do Firewall $1|<p>-</p>|`SNMP agent`|fgHaStatsHostnameMagnao.[{#SNMPVALUE}]<p>Update: 84600</p>|
|versao do Firewall $1|<p>-</p>|`SNMP agent`|xg-firewallVersion.[{#SNMPVALUE}]<p>Update: 84600</p>|
|Informacoes de uso do processador do Firewall $1|<p>-</p>|`SNMP agent`|fgHaStatsCpuUsage.[{#SNMPVALUE}]<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|A perda de pacote no servidor {HOST.NAME} e muito alta!|<p>-</p>|warning|
|O Firewall {HOST.NAME} foi Reiniciado !|<p>-</p>|information|
|O Firewall {HOST.NAME} nao Responde a Ping|<p>-</p>|disaster|
|O Tempo de resposta é muito alta em  {HOST.NAME}|<p>-</p>|warning|
|A Interface de rede {#SNMPVALUE} esta Fora!|<p>-</p>|disaster|
|O uso memoria do firewall {HOST.NAME} esta muito alta!|<p>-</p>|high|
|O uso processador do firewall {HOST.NAME} esta muito alta!|<p>-</p>|high|
