# Template Nobreak SMS Sinus Triphases

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
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 1m</p>|
|Verifica Fonte Nobreak|<p>objeto defeitoNaFonte na MIB indica defeito na fonte principal ok(0) ou falha(1)</p>|`SNMP agent`|enterprises.28802.2.3.17.1.8.0<p>Update: 1</p>|
|Tensao de entrada R|<p>Tensao de entrada R</p>|`SNMP agent`|vinR<p>Update: 1</p>|
|Frequencia Entrada Nobreak|<p>objeto freqIn na MIB</p>|`SNMP agent`|enterprises.28802.2.3.10.0<p>Update: 1</p>|
|Modo de Operação|<p>-</p>|`SNMP agent`|inversorOuBypass<p>Update: 1</p>|
|Potência de Saída|<p>objeto potout na MIB</p>|`SNMP agent`|potout<p>Update: 1</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 10s</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 1m</p>|
|Verifica se a bateria atingiu nivel de tensao baixa critico|<p>Indica se a bateria atingiu nivel de tensao baixo critico ok(0), falha(1)</p>|`SNMP agent`|bateriaBaixaCritica<p>Update: 1</p>|
|Tensão/Voltagem Entrada|<p>-</p>|`Calculated`|TEntrada1<p>Update: 1</p>|
|Corrente de entrada R|<p>-</p>|`SNMP agent`|ioutR<p>Update: 1s</p>|
|Status UPS|<p>objeto statusUps na MIB Indica operacao normal ou falha no sistema ok(0) ou falha(1)</p>|`SNMP agent`|statusUps<p>Update: 1</p>|
|WattR|<p>Calculo de conversão de POTENCIA (%) para DECIMAL</p>|`Calculated`|wattRs<p>Update: 1s</p>|
|Corrente de entrada T|<p>Corrente de entrada T</p>|`SNMP agent`|ioutT<p>Update: 1s</p>|
|Status buck ou boost|<p>SYNTAX INTEGER { buck(0), boost(1) } Sua topologia é uma associação do conversor rebaixador Buck e do conversor elevador Boost, a principal característica que o destaca é a capacidade de obter tensões de saída com um valor maior ou menor que a entrada.</p>|`SNMP agent`|buckOuBoost<p>Update: 1</p>|
|Tensão/Voltagem Saida|<p>-</p>|`Calculated`|TSaida<p>Update: 1</p>|
|Verifica Nobreak esta Bypass|<p>objeto saidaEmInversorOuBypass na MIB indica se o nobreak esta em inversor ou bypass inversor(0) ou bypass(1)</p>|`SNMP agent`|enterprises.28802.2.3.17.2.5.0<p>Update: 1</p>|
|Corrente de entrada S|<p>Corrente de entrada S</p>|`SNMP agent`|ioutS<p>Update: 1s</p>|
|Frequência Saída|<p>objeto fout na mib</p>|`SNMP agent`|fout<p>Update: 1</p>|
|Potência Média|<p>Calculo médio de POTENCIA</p>|`Calculated`|potMedia<p>Update: 1s</p>|
|Faixa de Corrente|<p>-</p>|`SNMP agent`|faixaCorrente<p>Update: 1s</p>|
|0 - Tensão/Voltagem Entrada|<p>objeto vin na MIB</p>|`SNMP agent`|vin<p>Update: 1</p>|
|Verifica Recarregador do Nobreak|<p>objeto recarregador na MIB Indica se tem falha de recarregador no no-break ok(0) ou falha(1)</p>|`SNMP agent`|enterprises.28802.2.3.17.1.1.0<p>Update: 1</p>|
|Carga Bateria|<p>objeto perBateria na MIB Porcentagem da carga de bateria</p>|`SNMP agent`|perbateria<p>Update: 1</p>|
|Tensao de entrada S|<p>Tensao de entrada S</p>|`SNMP agent`|vinS<p>Update: 1</p>|
|Temperatura|<p>objeto temperatura</p>|`SNMP agent`|temperatura<p>Update: 1</p>|
|Tensao de saida S|<p>Tensao de saida S</p>|`SNMP agent`|voutS<p>Update: 1</p>|
|Alarme Sonoro|<p>Indica se o beep do no-break esta ligado</p>|`SNMP agent`|beep<p>Update: 1</p>|
|Status Entrada Energia Nobreak|<p>objeto faltaDeRede na MIB se ocorre queda de rede ok(0) ou falha(1)</p>|`SNMP agent`|enterprises.28802.2.3.17.1.7.0<p>Update: 1</p>|
|Verifica Sobrecarga Nobreak|<p>objeto sobrecarga na MIB se o no-break estiver em sobrecarga ok(0) ou falha(1)</p>|`SNMP agent`|enterprises.28802.2.3.17.1.4.0<p>Update: 1</p>|
|Verifica Status Fase Nobreak|<p>objeto faseInvertida na MIB reporta evento indicando que as fases do no-break estao operando normalmente ok(0) ou falha(1)</p>|`SNMP agent`|enterprises.28802.2.3.17.1.2.0<p>Update: 1</p>|
|Tensao de entrada T|<p>Tensao de entrada T</p>|`SNMP agent`|vinT<p>Update: 1</p>|
|WattS|<p>Calculo de conversão de POTENCIA (%) para DECIMAL</p>|`Calculated`|wattSs<p>Update: 1s</p>|
|WattT|<p>Calculo de conversão de POTENCIA (%) para DECIMAL</p>|`Calculated`|wattTs<p>Update: 1s</p>|
|Modelo|<p>-</p>|`SNMP agent`|modeloUps<p>Update: 8640</p>|
|Sobrecarga|<p>SYNTAX INTEGER { ok(0), falha(1) }</p>|`SNMP agent`|sobrecarga<p>Update: 1</p>|
|Falta de Rede|<p>-</p>|`SNMP agent`|faltaDeRede<p>Update: 1s</p>|
|Tensao de saida R|<p>Tensao de saida R</p>|`SNMP agent`|voutR<p>Update: 1</p>|
|Verifica de a fases invertidas|<p>indica se as fases estao invertidas no no-break ok(0), falha(1)</p>|`SNMP agent`|faseInvertida<p>Update: 1</p>|
|Status Tensão de Saída Nobreak|<p>objeto statusVout na MIB status da tensao de saida ok(0) ou falha(1)</p>|`SNMP agent`|enterprises.28802.2.3.17.2.3.0<p>Update: 1</p>|
|Tensao de saida T|<p>Tensao de saida T</p>|`SNMP agent`|voutT<p>Update: 1</p>|
|Status Tensão de Entrada Nobreak|<p>objeto statusVin na MIB status da tensao de entrada ok(0) ou falha(1)</p>|`SNMP agent`|enterprises.28802.2.3.17.2.1.0<p>Update: 1</p>|
|Modo de Alimentação|<p>-</p>|`SNMP agent`|redeOuBateria<p>Update: 1</p>|
|Posicao da CHEST em by-pass ou inversor|<p>SYNTAX INTEGER { bypass(0), inversor(1) }</p>|`SNMP agent`|chestEmInversorOuBypass<p>Update: 1</p>|
|0 - Tensão/Voltagem Saída|<p>-</p>|`SNMP agent`|vout<p>Update: 1</p>|
|Faixa de Tensão|<p>-</p>|`SNMP agent`|faixaTensao<p>Update: 1</p>|
|Verifica Status Inversor Nobreak|<p>objeto inversor na MIB Se tem falha no inversor ok(0) ou falha(1)</p>|`SNMP agent`|enterprises.28802.2.3.17.1.6.0<p>Update: 1</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|#DOWNTIME {HOST.NAME}|<p>-</p>|high|
|Bateria atingiu nivel de tensao baixo critico|<p>-</p>|disaster|
|Carga da Bateria menor que 15% no {HOSTNAME}|<p>-</p>|high|
|Carga da Bateria menor que 50% no {HOSTNAME}|<p>-</p>|warning|
|Falha na Fonte do no-break|<p>Verifica a fonte do nobreak</p>|high|
|Falha no recarregador do no-breack|<p>-</p>|high|
|Ping loss is too high on {HOST.NAME}|<p>-</p>|warning|
|Response time is too high on {HOST.NAME}|<p>-</p>|warning|
|Sobrecarga|<p>-</p>|high|
|Temperatura acima de +30ºC no {HOSTNAME}|<p>-</p>|warning|
|Temperatura acima de +38ºC no {HOSTNAME}|<p>-</p>|high|
|Tensão Entrada abaixo de -180V no {HOSTNAME}|<p>Valor Tensao de entrada menor que o suportado pelo equipamento</p>|warning|
|Tensão Entrada abaixo de -180V no {HOSTNAME}|<p>Valor Tensao de entrada menor que o suportado pelo equipamento</p>|warning|
|Tensão Entrada acima de +260V no {HOSTNAME}|<p>Valor Tensao de entrada maior que o suportado pelo equipamento</p>|warning|
|Tensão Entrada acima de +260V no {HOSTNAME}|<p>Valor Tensao de entrada maior que o suportado pelo equipamento</p>|warning|
|Tensão Entrada R abaixo de -110|<p>Valor Tensao de entrada menor que o suportado pelo equipamento</p>|warning|
|Tensão Entrada S abaixo de -110|<p>Valor Tensao de entrada menor que o suportado pelo equipamento</p>|warning|
|Tensão Entrada T abaixo de -110|<p>Valor Tensao de entrada menor que o suportado pelo equipamento</p>|warning|
|Tensão Saida abaixo de -180V no {HOSTNAME}|<p>Valor Tensao de saida menor que o suportado pelo equipamento</p>|warning|
|Tensão Saida acima de +260V no {HOSTNAME}|<p>Valor Tensao de saida maior que o suportado pelo equipamento</p>|warning|
|Tensão Saida R abaixo de -110|<p>Valor Tensao de entrada menor que o suportado pelo equipamento</p>|warning|
|Tensão Saida S abaixo de -110|<p>Valor Tensao de entrada menor que o suportado pelo equipamento</p>|warning|
|Tensão Saida T abaixo de -110|<p>Valor Tensao de entrada menor que o suportado pelo equipamento</p>|warning|
|{HOST.NAME} está operando em modo BYPASS|<p>A energia está passando diretamente da rede de distribuição para as tomadas de saída. Isso pode indicar um erro de funcionamento no NOBREAK</p>|warning|
|{HOST.NAME} está sobrecarregado|<p>Tem mais equipamentos ligados no nobreak do que ele pode suportar</p>|high|
|{HOST.NAME} is unavailable by ICMP|<p>-</p>|average|
|{HOSTNAME} trabalhando em modo bateria|<p>Possivelmente interrupção no fornecimento de energia</p>|information|
