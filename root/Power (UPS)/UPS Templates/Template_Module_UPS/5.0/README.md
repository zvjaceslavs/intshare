# Template Module UPS

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
|Informações da bateria|<p>-</p>|`SNMP agent`|ups.system.discovery<p>Update: 2h</p>|
|Informações de entrada de fase|<p>-</p>|`SNMP agent`|ups.line.in.discovery<p>Update: 2h</p>|
|Informações de saída de fase|<p>-</p>|`SNMP agent`|ups.line.out.discovery<p>Update: 2h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Fabricante|<p>-</p>|`SNMP agent`|upsIdentManufacturer<p>Update: 1m</p>|
|Modelo|<p>-</p>|`SNMP agent`|upsIdentModel<p>Update: 1m</p>|
|Nome|<p>-</p>|`SNMP agent`|upsIdentName<p>Update: 1m</p>|
|Versão do software do UPS|<p>-</p>|`SNMP agent`|upsIdentUPSSoftwareVersion<p>Update: 1m</p>|
|Corrente da Bateria (A) $1|<p>-</p>|`SNMP agent`|upsbatterycurrent.[{#INDICE}]<p>Update: 30m</p>|
|Estado da Bateria $1|<p>A indicação da capacidade restante na(s) baterias do sistema do UPS. Um valor de "bateria normal" indica que o tempo de execução restante é maior que "upsConfigLowBattTime". Um valor de "bateria baixa" indica que o tempo de execução restante da bateria seja menor que ou igual a "upsConfigLowBattTime". Um valor de "bateria esgotada" indica que o UPS não será capaz para sustentar a carga atual quando e a energia for perdida (incluindo a possibilidade de que a energia da rede elétrica esteja ausente e o UPS será incapaz de sustentar a saída).</p>|`SNMP agent`|upsBatteryStatus.[{#INDICE}]<p>Update: 30m</p>|
|Temperatura da Bateria (ºC) $1|<p>A temperatura ambiente em ou perto do invólucro da bateria do UPS.</p>|`SNMP agent`|upsBatteryTemperature.[{#INDICE}]<p>Update: 30m</p>|
|Tensão da Bateria (V) $1|<p>A magnitude da tensão atual da bateria.</p>|`SNMP agent`|upsBatteryVoltage.[{#INDICE}]<p>Update: 30m</p>|
|Tempo estimado de carga restante (%) $1|<p>Uma estimativa da carga restante da bateria expressa como uma porcentagem da carga total.</p>|`SNMP agent`|upsEstimatedChargeRemaining.[{#INDICE}]<p>Update: 30m</p>|
|Tempo estimado restante (Minutos) $1|<p>Uma estimativa de tempo para o esgotamento da carga da bateria sob as atuais condições de carga, se a energia da rede elétrica estiver desligada e permanecer desligada, ou se for perdida e permanecer desligada.</p>|`SNMP agent`|upsEstimatedMinutesRemaining.[{#INDICE}]<p>Update: 30m</p>|
|Tempo de uso da Bateria (Segundos) $1|<p>Se a unidade estiver funcionando na bateria, este contador mostra o tempo decorrido desde a última vez que o no-break mudou para energia da bateria, ou o tempo desde que o subsistema de gerenciamento de rede foi reiniciado. O valor mostrado é sempre o menor dentre os dois. Deve retornar zero se a unidade não estiver funcionando com bateria.</p>|`SNMP agent`|upsSecondsOnBattery.[{#INDICE}]<p>Update: 30m</p>|
|Corrente de entrada (A) - Fase $1|<p>-</p>|`SNMP agent`|upsInputCurrent.[{#EINDICE}]<p>Update: 1m</p>|
|Frequência de entrada (Hz) - Fase $1|<p>-</p>|`SNMP agent`|upsInputFrequency.[{#EINDICE}]<p>Update: 1h</p>|
|Potencia Real de entrada (W) - Fase $1|<p>-</p>|`SNMP agent`|upsInputTruePower.[{#EINDICE}]<p>Update: 1m</p>|
|Tensão de entrada (V) - Fase $1|<p>-</p>|`SNMP agent`|upsInputVoltage.[{#EINDICE}]<p>Update: 1m</p>|
|Corrente de saída (A) - Fase $1|<p>-</p>|`SNMP agent`|upsOutputCurrent.[{#SINDICE}]<p>Update: 1m</p>|
|Percentual de carga - Fase $1|<p>-</p>|`SNMP agent`|upsOutputPercentLoad.[{#SINDICE}]<p>Update: 30m</p>|
|Potência de saída (W) - Fase $1|<p>-</p>|`SNMP agent`|upsOutputPower.[{#SINDICE}]<p>Update: 1m</p>|
|Tensão de saída (V) - Fase $1|<p>-</p>|`SNMP agent`|upsOutputVoltage.[{#SINDICE}]<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Bateria do Nobreak esgotada|<p>Este alerta indica que o atual estado da bateria, não será capaz de suportar a atual carga, caso a energia seja perdida.</p>|average|
|Temperatura da bateria está elevada em {$HOST.HOST}|<p>A temperatura da bateria está acima do nível operacional. Temperatura atual: {#ITEMVALUE}</p>|average|
