# Template_Snmp_Impressora_LLD_VERSAO-0.1

## Overview

##### A ideia desse template e facilitar a vida em poder utilizar um template unico para as impressoras do ambiente ganhando tempo valioso ao invés de ter um template para cada host.


 


 Att:


 Magno Monte Cerqueira


Skype: [magnopeem\_rj@hotmail.com](mailto:magnopeem_rj@hotmail.com)


Telegram: @Magnopeem


Linkdln: <https://br.linkedin.com/in/magno-monte-cerqueira-976b1587>


OBS: no Git Tem mais informações.



## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Descoberta LLD Descricao do Hardware|<p>-</p>|`SNMP agent`|hrDeviceDescr<p>Update: 3600</p>|
|Descoberta LLD Rede|<p>-</p>|`SNMP agent`|ifDescr<p>Update: 3600</p>|
|Descoberta LLD Nivel de Papel MP 1|<p>-</p>|`SNMP agent`|prtInputDescriptionMp1<p>Update: 3600</p>|
|Descoberta LLD Nivel de Papel Tray 1|<p>-</p>|`SNMP agent`|prtInputDescriptionTray1<p>Update: 3600</p>|
|Descoberta LLD Nivel de Papel Tray 2|<p>-</p>|`SNMP agent`|prtInputDescriptionTray2<p>Update: 3600</p>|
|Descoberta LLD Fusor|<p>-</p>|`SNMP agent`|prtMarkerFusorDescription<p>Update: 3600</p>|
|Descoberta LLD Unit Toner|<p>-</p>|`SNMP agent`|prtMarkerSuppliesDescription<p>Update: 3600</p>|
|Descoberta LLD Toner Black|<p>-</p>|`SNMP agent`|prtMarkerSuppliesDescriptionBlack<p>Update: 3600</p>|
|Descoberta LLD Toner Cyan|<p>-</p>|`SNMP agent`|prtMarkerSuppliesDescriptionCyan<p>Update: 3600</p>|
|Descoberta LLD Toner Magenta|<p>-</p>|`SNMP agent`|prtMarkerSuppliesDescriptionMagenta<p>Update: 3600</p>|
|Descoberta LLD Unidade de Transferencia|<p>-</p>|`SNMP agent`|prtMarkerSuppliesDescriptionTransfer<p>Update: 3600</p>|
|Descoberta LLD Toner Yellow|<p>-</p>|`SNMP agent`|prtMarkerSuppliesDescriptionYellow<p>Update: 3600</p>|
|Descoberta LLD Informacoes do Hardware|<p>-</p>|`SNMP agent`|sysDescr<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Contador de Paginas Impressas Por Dia|<p>Coleta agendada as 00:02hs todos os dias.</p>|`Calculated`|contador_impressoes_dia<p>Update: 0;h00m02</p>|
|Contador de Paginas Impressas Por Mes|<p>Coleta agendada as 00:04hs todo dia 1º de cada mês, conta o total das páginas impressas desde a última coleta total do mês.</p>|`Calculated`|contador_impressoes_mes<p>Update: 0;md1h00m04</p>|
|Contador de Paginas Impressas Por Semana|<p>Coleta agendada as 00:03hs toda segunda feira de cada semana, conta o total das páginas impressas desde a última coleta total da semana.</p>|`Calculated`|contador_impressoes_semana<p>Update: 0;wd1h00m03</p>|
|Ping|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|Perda de Pacote ( Porcentagem)|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
|Ping por Segundo|<p>-</p>|`Simple check`|icmppingsec<p>Update: 60</p>|
|Paginas Impressas Por Dia|<p>-</p>|`Calculated`|impressoes_dia<p>Update: 600</p>|
|Paginas Impressas Por Mes|<p>Coleta o total de impressões no mês.</p>|`Calculated`|impressoes_mes<p>Update: 600</p>|
|Paginas Impressas Por Semana|<p>Coleta o total de impressões esta semana.</p>|`Calculated`|impressoes_semana<p>Update: 600</p>|
|Paginas Impressas Total|<p>-</p>|`SNMP agent`|prtMarkerLifeCount.1.1<p>Update: 600</p>|
|Tempo Ligado do Equipamento|<p>-</p>|`SNMP agent`|sysUpTimeInstance<p>Update: 3600</p>|
|Descricao do Equipamento (LLD)|<p>-</p>|`SNMP agent`|hrDeviceDescr[{#SNMPVALUE}]<p>Update: 900</p>|
|Status de Erro do Dispositivos No Equipamento (LLD)|<p>-</p>|`SNMP agent`|hrDeviceErrors[{#SNMPVALUE}]<p>Update: 600</p>|
|Descricao do Tipo de Dispositivos Equipamento Identificacao (LLD)|<p>-</p>|`SNMP agent`|hrDeviceID[{#SNMPVALUE}]<p>Update: 600</p>|
|Dispositivos Anexados (LLD)|<p>-</p>|`SNMP agent`|hrDeviceIndex[{#SNMPVALUE}]<p>Update: 600</p>|
|Status do Dispositivos No Equipamento (LLD)|<p>-</p>|`SNMP agent`|hrDeviceStatus[{#SNMPVALUE}]<p>Update: 600</p>|
|Descricao do Tipo de Dispositivos Equipamento (LLD)|<p>-</p>|`SNMP agent`|hrDeviceType[{#SNMPVALUE}]<p>Update: 600</p>|
|Status administrativo da Inteface $1 (LLD)|<p>-</p>|`SNMP agent`|ifAdminStatus[{#SNMPVALUE}]<p>Update: 600</p>|
|Descricao da Placa de Rede $1 (LLD)|<p>-</p>|`SNMP agent`|ifDescr[{#SNMPVALUE}]<p>Update: 600</p>|
|Trafego de Entrada Porta $1 (LLD)|<p>-</p>|`SNMP agent`|ifInOctets[{#SNMPVALUE}]<p>Update: 600</p>|
|Trafego de Saida Porta $1 (LLD)|<p>-</p>|`SNMP agent`|ifOutOctets[{#SNMPVALUE}]<p>Update: 600</p>|
|Nivel de Papel na Bandeja $1 (Porcentagem) (LLD)|<p>-</p>|`Calculated`|niveldepapelMP[{#SNMPVALUE}]<p>Update: 900</p>|
|Nivel de Papel da Bandeja $1 (LLD)|<p>-</p>|`SNMP agent`|prtInputCurrentLevelMP[{#SNMPVALUE}]<p>Update: 600</p>|
|Descricao da Bandeja MP 1 (LLD)|<p>-</p>|`SNMP agent`|prtInputDescriptionMP1[{#SNMPVALUE}]<p>Update: 600</p>|
|Maxima Capacidade da Bandeja $1 (LLD)|<p>-</p>|`SNMP agent`|prtInputMaxCapacityMP[{#SNMPVALUE}]<p>Update: 600</p>|
|Nivel de Papel na Bandeja $1 (Porcentagem) (LLD)|<p>-</p>|`Calculated`|niveldepapelTray1[{#SNMPVALUE}]<p>Update: 900</p>|
|Nivel de Papel da Bandeja $1 (LLD)|<p>-</p>|`SNMP agent`|prtInputCurrentLevelTray1[{#SNMPVALUE}]<p>Update: 600</p>|
|Descricao da Bandeja Tray 1 (LLD)|<p>-</p>|`SNMP agent`|prtInputDescription[{#SNMPVALUE}]<p>Update: 600</p>|
|Maxima Capacidade da Bandeja $1 (LLD)|<p>-</p>|`SNMP agent`|prtInputMaxCapacityTray1[{#SNMPVALUE}]<p>Update: 600</p>|
|Nivel de Papel na Bandeja $1 (Porcentagem) (LLD)|<p>-</p>|`Calculated`|niveldepapelTray2[{#SNMPVALUE}]<p>Update: 900</p>|
|Nivel de Papel da Bandeja $1 (LLD)|<p>-</p>|`SNMP agent`|prtInputCurrentLevelTray2[{#SNMPVALUE}]<p>Update: 600</p>|
|Descricao da Bandeja 2 (LLD)|<p>-</p>|`SNMP agent`|prtInputDescriptionTray1[{#SNMPVALUE}]<p>Update: 600</p>|
|Maxima Capacidade da Bandeja $1 (LLD)|<p>-</p>|`SNMP agent`|prtInputMaxCapacityTray2[{#SNMPVALUE}]<p>Update: 600</p>|
|Maxima Capacidade do Fusor $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerFusorCapacity[{#SNMPVALUE}]<p>Update: 600</p>|
|Descricao do Fusor (LLD)|<p>-</p>|`SNMP agent`|prtMarkerFusorDescription[{#SNMPVALUE}]<p>Update: 600</p>|
|Nivel de Capacidade do Fusor (LLD)|<p>-</p>|`SNMP agent`|prtMarkerFusorLevel[{#SNMPVALUE}]<p>Update: 600</p>|
|Tempo de Vida do Fusor ( Impressoes) (LLD)|<p>-</p>|`Calculated`|vidafusorImpressoes[{#SNMPVALUE}]<p>Update: 600</p>|
|Tempo de Vida Restante no Fusor (LLD)|<p>-</p>|`Calculated`|vidafusor[{#SNMPVALUE}]<p>Update: 600</p>|
|Tipo de Classe da Unidade $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesClassUnit[{#SNMPVALUE}]<p>Update: 600</p>|
|Descricao da Unidade (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesDescription[{#SNMPVALUE}]<p>Update: 600</p>|
|Nivel de Capacidade da Unidade $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesLevel[{#SNMPVALUE}]<p>Update: 600</p>|
|Maxima Capacidade da Unidade $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesMaxCapacity[{#SNMPVALUE}]<p>Update: 600</p>|
|Tipo de Suprimentos da Unidade $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesType[{#SNMPVALUE}]<p>Update: 600</p>|
|Nivel da Unidade $1 ( Porcentagem) (LLD)|<p>-</p>|`Calculated`|TempodeVidautilUnit[{#SNMPVALUE}]<p>Update: 900</p>|
|Tipo de Tonalidade Relacionada ao $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerColorantTonalityBlack[{#SNMPVALUE}]<p>Update: 600</p>|
|Tipo de Cor Relacionada ao $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerColorantValueBlack[{#SNMPVALUE}]<p>Update: 600</p>|
|Tipo de Classe do  $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesClassBlack[{#SNMPVALUE}]<p>Update: 600</p>|
|Descricao do Toner Black (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesDescriptionBlack[{#SNMPVALUE}]<p>Update: 600</p>|
|Nivel Capacidade de Suprimentos do  $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesLevelBlack[{#SNMPVALUE}]<p>Update: 300</p>|
|Maxima Capacidade de Suprimentos do $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesMaxCapacityBlack[{#SNMPVALUE}]<p>Update: 600</p>|
|Tipo de Suprimentos do $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesTypeBlack[{#SNMPVALUE}]<p>Update: 600</p>|
|Nivel do $1 ( Porcentagem) (LLD)|<p>-</p>|`Calculated`|totaltonerBlack[{#SNMPVALUE}]<p>Update: 600</p>|
|Tipo de Tonalidade Relacionada ao $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerColorantTonalityCyan[{#SNMPVALUE}]<p>Update: 600</p>|
|Tipo de Cor Relacionada ao $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerColorantValueCyan[{#SNMPVALUE}]<p>Update: 600</p>|
|Tipo de Classe do  $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesClassCyan[{#SNMPVALUE}]<p>Update: 600</p>|
|Descricao do Toner Cyan (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesDescriptionCyan[{#SNMPVALUE}]<p>Update: 600</p>|
|Nivel Capacidade de Suprimentos do  $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesLevelCyan[{#SNMPVALUE}]<p>Update: 600</p>|
|Maxima Capacidade de Suprimentos do $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesMaxCapacityCyan[{#SNMPVALUE}]<p>Update: 600</p>|
|Tipo de Suprimentos do $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesTypeCyan[{#SNMPVALUE}]<p>Update: 600</p>|
|Nivel do $1 ( Porcentagem) (LLD)|<p>-</p>|`Calculated`|totaltonerCyan[{#SNMPVALUE}]<p>Update: 600</p>|
|Tipo de Tonalidade Relacionada ao $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerColorantTonalityMagenta[{#SNMPVALUE}]<p>Update: 600</p>|
|Tipo de Cor Relacionada ao $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerColorantValueMagenta[{#SNMPVALUE}]<p>Update: 600</p>|
|Tipo de Classe do  $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesClassMagenta[{#SNMPVALUE}]<p>Update: 600</p>|
|Descricao do Toner Magenta (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesDescriptionMagenta[{#SNMPVALUE}]<p>Update: 600</p>|
|Nivel Capacidade de Suprimentos do  $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesLevelMagenta[{#SNMPVALUE}]<p>Update: 600</p>|
|Maxima Capacidade de Suprimentos do $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesMaxCapacityMagenta[{#SNMPVALUE}]<p>Update: 600</p>|
|Tipo de Suprimentos do $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesTypeMagenta[{#SNMPVALUE}]<p>Update: 600</p>|
|Nivel do $1 ( Porcentagem) (LLD)|<p>-</p>|`Calculated`|totaltonerMagenta[{#SNMPVALUE}]<p>Update: 900</p>|
|Descricao da Unidade de Transferencia (LLD)|<p>-</p>|`SNMP agent`|prtMarkerTransferDescription[{#SNMPVALUE}]<p>Update: 600</p>|
|Nivel de Capacidade da Unidade de Transferencia ( $1 ) (LLD)|<p>-</p>|`SNMP agent`|prtMarkerTransferLevel[{#SNMPVALUE}]<p>Update: 600</p>|
|Maxima Capacidade da Unidade de Transferencia ( $1 ) (LLD)|<p>-</p>|`SNMP agent`|prtMarkerTransferMaxCapacity[{#SNMPVALUE}]<p>Update: 600</p>|
|Tempo de Vida da Unidade de Transferencia ( Impressoes) ( $1 ) (LLD)|<p>-</p>|`Calculated`|vidaTransferImpressoesRealizadas[{#SNMPVALUE}]<p>Update: 600</p>|
|Tempo de Vida Restante na Unidade de Transferencia ( $1 ) (LLD)|<p>-</p>|`Calculated`|vidaTransferImpressoes[{#SNMPVALUE}]<p>Update: 600</p>|
|Tipo de Tonalidade Relacionada ao $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerColorantTonalityYellow[{#SNMPVALUE}]<p>Update: 600</p>|
|Tipo de Cor Relacionada ao $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerColorantValueYellow[{#SNMPVALUE}]<p>Update: 600</p>|
|Tipo de Classe do  $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesClassYellow[{#SNMPVALUE}]<p>Update: 600</p>|
|Descricao do Toner Yellow (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesDescriptionYellow[{#SNMPVALUE}]<p>Update: 600</p>|
|Nivel Capacidade de Suprimentos do  $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesLevelYellow[{#SNMPVALUE}]<p>Update: 600</p>|
|Maxima Capacidade de Suprimentos do $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesMaxCapacityYellow[{#SNMPVALUE}]<p>Update: 600</p>|
|Tipo de Suprimentos do $1 (LLD)|<p>-</p>|`SNMP agent`|prtMarkerSuppliesTypeYellow[{#SNMPVALUE}]<p>Update: 600</p>|
|Nivel do $1 ( Porcentagem) (LLD)|<p>-</p>|`Calculated`|totaltonerYellow[{#SNMPVALUE}]<p>Update: 900</p>|
|Numero de Serie do Equipamento (LLD)|<p>-</p>|`SNMP agent`|prtGeneralSerialNumber[{#SNMPVALUE}]<p>Update: 600</p>|
|Informacao de Contato do Equipamento (LLD)|<p>-</p>|`SNMP agent`|sysContact[{#SNMPVALUE}]<p>Update: 600</p>|
|Descricao do Equipamento (LLD)|<p>-</p>|`SNMP agent`|sysDescr[{#SNMPVALUE}]<p>Update: 600</p>|
|Localizacao do Equipamento (LLD)|<p>-</p>|`SNMP agent`|sysLocation[{#SNMPVALUE}]<p>Update: 600</p>|
|Hostname do Equipamento (LLD)|<p>-</p>|`SNMP agent`|sysName[{#SNMPVALUE}]<p>Update: 600</p>|
|Quantidade de Servico (LLD)|<p>-</p>|`SNMP agent`|sysServices[{#SNMPVALUE}]<p>Update: 600</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Abastecimento de Papel A4 Necessario em {ITEM.VALUE} Na {HOSTNAME}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:niveldepapelTray1[{#SNMPVALUE}].last()}=1</p><p>**Recovery expression**: </p>|high|
|Abastecimento de Papel A4 Necessario em {ITEM.VALUE} Na {HOSTNAME}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:niveldepapelTray1[{#SNMPVALUE}].last()}=2</p><p>**Recovery expression**: </p>|warning|
|Nivel de Papel A4 Acabando Abaixo de {ITEM.VALUE}  {HOSTNAME}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:niveldepapelTray1[{#SNMPVALUE}].last()}=3</p><p>**Recovery expression**: </p>|information|
|Nivel de Papel A4 Acabando Abaixo de {ITEM.VALUE}  {HOSTNAME}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:niveldepapelTray1[{#SNMPVALUE}].last()}=4</p><p>**Recovery expression**: </p>|information|
|Abastecimento de Papel A4 Necessario em {ITEM.VALUE} Na {HOSTNAME}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:niveldepapelTray2[{#SNMPVALUE}].last()}=1</p><p>**Recovery expression**: </p>|high|
|Nivel de Papel A4 Acabando Abaixo de {ITEM.VALUE}  Na {HOSTNAME}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:niveldepapelTray2[{#SNMPVALUE}].last()}=2</p><p>**Recovery expression**: </p>|warning|
|Nivel de Papel A4 Acabando Abaixo de {ITEM.VALUE}  Na {HOSTNAME}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:niveldepapelTray2[{#SNMPVALUE}].last()}=3</p><p>**Recovery expression**: </p>|information|
|Nivel de Papel A4 Acabando Abaixo de {ITEM.VALUE}  Na {HOSTNAME}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:niveldepapelTray2[{#SNMPVALUE}].last()}=4</p><p>**Recovery expression**: </p>|information|
|Vida Util do Fusor em {ITEM.VALUE} Troca Necessaria na {HOSTNAME}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:vidafusor[{#SNMPVALUE}].last()}<5</p><p>**Recovery expression**: </p>|information|
|A Unidade {ITEM.VALUE} Foi alterado na Impressora {HOSTNAME}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:prtMarkerSuppliesDescription[{#SNMPVALUE}].diff(0)}>0</p><p>**Recovery expression**: </p>|information|
|Tempo de Vida {#SNMPVALUE} em {ITEM.VALUE}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:TempodeVidautilUnit[{#SNMPVALUE}].last()}<5</p><p>**Recovery expression**: </p>|warning|
|Nivel do {#SNMPVALUE} em {ITEM.VALUE}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerBlack[{#SNMPVALUE}].last()}<1</p><p>**Recovery expression**: </p>|high|
|Nivel do {#SNMPVALUE} em {ITEM.VALUE}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerBlack[{#SNMPVALUE}].last()}=2</p><p>**Recovery expression**: </p>|warning|
|Nivel do {#SNMPVALUE} em {ITEM.VALUE}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerBlack[{#SNMPVALUE}].last()}=3</p><p>**Recovery expression**: </p>|information|
|Nivel do {#SNMPVALUE} em {ITEM.VALUE}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerBlack[{#SNMPVALUE}].last()}=4</p><p>**Recovery expression**: </p>|information|
|Nivel do {#SNMPVALUE} em {ITEM.VALUE}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerBlack[{#SNMPVALUE}].last()}=5</p><p>**Recovery expression**: </p>|information|
|O Toner {ITEM.VALUE} Foi alterado na {HOSTNAME}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:prtMarkerSuppliesDescriptionBlack[{#SNMPVALUE}].diff(0)}>0</p><p>**Recovery expression**: </p>|information|
|Troca Necessaria do {#SNMPVALUE} em {ITEM.VALUE}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerBlack[{#SNMPVALUE}].last()}=0</p><p>**Recovery expression**: </p>|high|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerCyan[{#SNMPVALUE}].last()}=1</p><p>**Recovery expression**: </p>|high|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerCyan[{#SNMPVALUE}].last()}=2</p><p>**Recovery expression**: </p>|warning|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerCyan[{#SNMPVALUE}].last()}=3</p><p>**Recovery expression**: </p>|information|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerCyan[{#SNMPVALUE}].last()}=4</p><p>**Recovery expression**: </p>|information|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerCyan[{#SNMPVALUE}].last()}=5</p><p>**Recovery expression**: </p>|information|
|O Toner {ITEM.VALUE} Foi alterado na Impressora {HOSTNAME}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:prtMarkerSuppliesDescriptionCyan[{#SNMPVALUE}].diff(0)}>0</p><p>**Recovery expression**: </p>|information|
|Troca Necessaria do {#SNMPVALUE} em {ITEM.VALUE}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerCyan[{#SNMPVALUE}].last()}=0</p><p>**Recovery expression**: </p>|high|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerMagenta[{#SNMPVALUE}].last()}<1</p><p>**Recovery expression**: </p>|high|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerMagenta[{#SNMPVALUE}].last()}=2</p><p>**Recovery expression**: </p>|warning|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerMagenta[{#SNMPVALUE}].last()}=3</p><p>**Recovery expression**: </p>|information|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerMagenta[{#SNMPVALUE}].last()}=4</p><p>**Recovery expression**: </p>|information|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerMagenta[{#SNMPVALUE}].last()}=5</p><p>**Recovery expression**: </p>|information|
|O Toner {ITEM.VALUE} Foi alterado na Impressora {HOSTNAME}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:prtMarkerSuppliesDescriptionMagenta[{#SNMPVALUE}].diff(0)}>0</p><p>**Recovery expression**: </p>|information|
|Troca Necessaria do {#SNMPVALUE} em {ITEM.VALUE}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerMagenta[{#SNMPVALUE}].last()}=0</p><p>**Recovery expression**: </p>|high|
|Troca da Unidade de Transferencia Necessaria na Impressora {HOSTNAME}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:vidaTransferImpressoes[{#SNMPVALUE}].last()}<5</p><p>**Recovery expression**: </p>|information|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerYellow[{#SNMPVALUE}].last()}<1</p><p>**Recovery expression**: </p>|high|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerYellow[{#SNMPVALUE}].last()}=2</p><p>**Recovery expression**: </p>|warning|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerYellow[{#SNMPVALUE}].last()}=3</p><p>**Recovery expression**: </p>|information|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerYellow[{#SNMPVALUE}].last()}=4</p><p>**Recovery expression**: </p>|information|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerYellow[{#SNMPVALUE}].last()}=5</p><p>**Recovery expression**: </p>|information|
|O Toner {ITEM.VALUE} Foi alterado na Impressora {HOSTNAME}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:prtMarkerSuppliesDescriptionYellow[{#SNMPVALUE}].diff(0)}>0</p><p>**Recovery expression**: </p>|information|
|Troca Necessaria do {#SNMPVALUE} em {ITEM.VALUE}|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerYellow[{#SNMPVALUE}].last()}=0</p><p>**Recovery expression**: </p>|high|
|Abastecimento de Papel A4 Necessario em {ITEM.VALUE} Na {HOSTNAME} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:niveldepapelTray1[{#SNMPVALUE}].last()}=1</p><p>**Recovery expression**: </p>|high|
|Abastecimento de Papel A4 Necessario em {ITEM.VALUE} Na {HOSTNAME} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:niveldepapelTray1[{#SNMPVALUE}].last()}=2</p><p>**Recovery expression**: </p>|warning|
|Nivel de Papel A4 Acabando Abaixo de {ITEM.VALUE}  {HOSTNAME} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:niveldepapelTray1[{#SNMPVALUE}].last()}=3</p><p>**Recovery expression**: </p>|information|
|Nivel de Papel A4 Acabando Abaixo de {ITEM.VALUE}  {HOSTNAME} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:niveldepapelTray1[{#SNMPVALUE}].last()}=4</p><p>**Recovery expression**: </p>|information|
|Abastecimento de Papel A4 Necessario em {ITEM.VALUE} Na {HOSTNAME} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:niveldepapelTray2[{#SNMPVALUE}].last()}=1</p><p>**Recovery expression**: </p>|high|
|Nivel de Papel A4 Acabando Abaixo de {ITEM.VALUE}  Na {HOSTNAME} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:niveldepapelTray2[{#SNMPVALUE}].last()}=2</p><p>**Recovery expression**: </p>|warning|
|Nivel de Papel A4 Acabando Abaixo de {ITEM.VALUE}  Na {HOSTNAME} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:niveldepapelTray2[{#SNMPVALUE}].last()}=3</p><p>**Recovery expression**: </p>|information|
|Nivel de Papel A4 Acabando Abaixo de {ITEM.VALUE}  Na {HOSTNAME} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:niveldepapelTray2[{#SNMPVALUE}].last()}=4</p><p>**Recovery expression**: </p>|information|
|Vida Util do Fusor em {ITEM.VALUE} Troca Necessaria na {HOSTNAME} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:vidafusor[{#SNMPVALUE}].last()}<5</p><p>**Recovery expression**: </p>|information|
|A Unidade {ITEM.VALUE} Foi alterado na Impressora {HOSTNAME} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:prtMarkerSuppliesDescription[{#SNMPVALUE}].diff(0)}>0</p><p>**Recovery expression**: </p>|information|
|Tempo de Vida {#SNMPVALUE} em {ITEM.VALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:TempodeVidautilUnit[{#SNMPVALUE}].last()}<5</p><p>**Recovery expression**: </p>|warning|
|Nivel do {#SNMPVALUE} em {ITEM.VALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerBlack[{#SNMPVALUE}].last()}<1</p><p>**Recovery expression**: </p>|high|
|Nivel do {#SNMPVALUE} em {ITEM.VALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerBlack[{#SNMPVALUE}].last()}=2</p><p>**Recovery expression**: </p>|warning|
|Nivel do {#SNMPVALUE} em {ITEM.VALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerBlack[{#SNMPVALUE}].last()}=3</p><p>**Recovery expression**: </p>|information|
|Nivel do {#SNMPVALUE} em {ITEM.VALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerBlack[{#SNMPVALUE}].last()}=4</p><p>**Recovery expression**: </p>|information|
|Nivel do {#SNMPVALUE} em {ITEM.VALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerBlack[{#SNMPVALUE}].last()}=5</p><p>**Recovery expression**: </p>|information|
|O Toner {ITEM.VALUE} Foi alterado na {HOSTNAME} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:prtMarkerSuppliesDescriptionBlack[{#SNMPVALUE}].diff(0)}>0</p><p>**Recovery expression**: </p>|information|
|Troca Necessaria do {#SNMPVALUE} em {ITEM.VALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerBlack[{#SNMPVALUE}].last()}=0</p><p>**Recovery expression**: </p>|high|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerCyan[{#SNMPVALUE}].last()}=1</p><p>**Recovery expression**: </p>|high|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerCyan[{#SNMPVALUE}].last()}=2</p><p>**Recovery expression**: </p>|warning|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerCyan[{#SNMPVALUE}].last()}=3</p><p>**Recovery expression**: </p>|information|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerCyan[{#SNMPVALUE}].last()}=4</p><p>**Recovery expression**: </p>|information|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerCyan[{#SNMPVALUE}].last()}=5</p><p>**Recovery expression**: </p>|information|
|O Toner {ITEM.VALUE} Foi alterado na Impressora {HOSTNAME} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:prtMarkerSuppliesDescriptionCyan[{#SNMPVALUE}].diff(0)}>0</p><p>**Recovery expression**: </p>|information|
|Troca Necessaria do {#SNMPVALUE} em {ITEM.VALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerCyan[{#SNMPVALUE}].last()}=0</p><p>**Recovery expression**: </p>|high|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerMagenta[{#SNMPVALUE}].last()}<1</p><p>**Recovery expression**: </p>|high|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerMagenta[{#SNMPVALUE}].last()}=2</p><p>**Recovery expression**: </p>|warning|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerMagenta[{#SNMPVALUE}].last()}=3</p><p>**Recovery expression**: </p>|information|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerMagenta[{#SNMPVALUE}].last()}=4</p><p>**Recovery expression**: </p>|information|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerMagenta[{#SNMPVALUE}].last()}=5</p><p>**Recovery expression**: </p>|information|
|O Toner {ITEM.VALUE} Foi alterado na Impressora {HOSTNAME} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:prtMarkerSuppliesDescriptionMagenta[{#SNMPVALUE}].diff(0)}>0</p><p>**Recovery expression**: </p>|information|
|Troca Necessaria do {#SNMPVALUE} em {ITEM.VALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerMagenta[{#SNMPVALUE}].last()}=0</p><p>**Recovery expression**: </p>|high|
|Troca da Unidade de Transferencia Necessaria na Impressora {HOSTNAME} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:vidaTransferImpressoes[{#SNMPVALUE}].last()}<5</p><p>**Recovery expression**: </p>|information|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerYellow[{#SNMPVALUE}].last()}<1</p><p>**Recovery expression**: </p>|high|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerYellow[{#SNMPVALUE}].last()}=2</p><p>**Recovery expression**: </p>|warning|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerYellow[{#SNMPVALUE}].last()}=3</p><p>**Recovery expression**: </p>|information|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerYellow[{#SNMPVALUE}].last()}=4</p><p>**Recovery expression**: </p>|information|
|Nivel do Toner {#SNMPVALUE} em {ITEM.VALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerYellow[{#SNMPVALUE}].last()}=5</p><p>**Recovery expression**: </p>|information|
|O Toner {ITEM.VALUE} Foi alterado na Impressora {HOSTNAME} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:prtMarkerSuppliesDescriptionYellow[{#SNMPVALUE}].diff(0)}>0</p><p>**Recovery expression**: </p>|information|
|Troca Necessaria do {#SNMPVALUE} em {ITEM.VALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template_Snmp_Impressora_LLD_VERSAO-0.1:totaltonerYellow[{#SNMPVALUE}].last()}=0</p><p>**Recovery expression**: </p>|high|
