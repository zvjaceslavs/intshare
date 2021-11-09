# Module_HTTP_LLD_W_Corona_44

## Description

## Overview Dashboard Grafana: <https://grafana.com/grafana/dashboards/11987> * EN-US **Homologated:** ***Zabbix 4.2.8, 4.4.4 and 4.4.7*** ***Grafana 6.6.2, 6.7.1*** Required plugins: 1) grafana-worldmap-panel - https://grafana.com/grafana/plugins/grafana-worldmap-panel 2) alexanderzobnin-zabbix-app - https://grafana.com/grafana/plugins/alexanderzobnin-zabbix-app Import Template _Module _HTTP _LLD _W _Corona into Zabbix Create a host with the name "CORONA-COVID19", you can use the local interface (127.0.0.1: 10050) and the Hostgroup use the name "CORONAVIRUS" and link the template to the host. Wait for data collection, or use the function "Check now" in the item and in the LLD to speed up the collection Imports the Dashboard in Grafana When importing the Template into Garfana, select your Data Source. Note: If the list does not appear in countries, check if the applications and items were generated in Zabbix. Macros: * {$HISTORYSP}: History storage period * {$INTERVALHTTP}: Update interval * {$INTERVALLLDHTTP}: Update interval HTTP Item LLD * {$LOSTPERIOD}: * {$TRENDSP}: Trend storage period * {$UPINTERVALLLD}: Update interval Item LLD * PT-BR **Homologado:** ***Zabbix 4.2.8, 4.4.4 e 4.4.7*** ***Grafana 6.6.2, 6.7.1*** Plugins necessarios: 1) grafana-worldmap-panel - https://grafana.com/grafana/plugins/grafana-worldmap-panel 2) alexanderzobnin-zabbix-app - https://grafana.com/grafana/plugins/alexanderzobnin-zabbix-app Importe o Template _Module _HTTP _LLD _W _Corona para o Zabbix Crie um host com nome "CORONA-COVID19", pode usar interface local (127.0.0.1: 10050) e o Hostgroup use o nome "CORONAVIRUS" e vincule o template ao host. Aguarde coleta de dados, ou utilize a função "Check now" no item e no LLD para agilizar a coleta. Importe a Dashboard no Grafana Ao importar o Template para o Garfana, selecione seu Data Source. Obs: Caso em paises não apareça a lista, verifique se as aplicações e itens foram gerados no Zabbix. ## Author Bernardo Lankheet 

## Overview

Dashboard Grafana: <https://grafana.com/grafana/dashboards/11987>


* EN-US


**Homologated:**


***Zabbix 4.2.8, 4.4.4 and 4.4.7***


***Grafana 6.6.2, 6.7.1***


Required plugins:


1) grafana-worldmap-panel - https://grafana.com/grafana/plugins/grafana-worldmap-panel


2) alexanderzobnin-zabbix-app - https://grafana.com/grafana/plugins/alexanderzobnin-zabbix-app


Import Template\_Module\_HTTP\_LLD\_W\_Corona into Zabbix


Create a host with the name "CORONA-COVID19", you can use the local interface (127.0.0.1: 10050) and the Hostgroup use the name "CORONAVIRUS" and link the template to the host.


Wait for data collection, or use the function "Check now" in the item and in the LLD to speed up the collection


Imports the Dashboard in Grafana


When importing the Template into Garfana, select your Data Source.


Note: If the list does not appear in countries, check if the applications and items were generated in Zabbix.


Macros:


* {$HISTORYSP}: History storage period
* {$INTERVALHTTP}: Update interval
* {$INTERVALLLDHTTP}: Update interval HTTP Item LLD
* {$LOSTPERIOD}:
* {$TRENDSP}: Trend storage period
* {$UPINTERVALLLD}: Update interval Item LLD


 


* PT-BR


**Homologado:** 


***Zabbix 4.2.8, 4.4.4 e 4.4.7***


 ***Grafana 6.6.2, 6.7.1***


Plugins necessarios: 


1) grafana-worldmap-panel - https://grafana.com/grafana/plugins/grafana-worldmap-panel


2) alexanderzobnin-zabbix-app - https://grafana.com/grafana/plugins/alexanderzobnin-zabbix-app


 Importe o Template\_Module\_HTTP\_LLD\_W\_Corona para o Zabbix 


Crie um host com nome "CORONA-COVID19", pode usar interface local (127.0.0.1: 10050) e o Hostgroup use o nome "CORONAVIRUS" e vincule o template ao host. 


Aguarde coleta de dados, ou utilize a função "Check now" no item e no LLD para agilizar a coleta.


Importe a Dashboard no Grafana


Ao importar o Template para o Garfana, selecione seu Data Source.


 Obs: Caso em paises não apareça a lista, verifique se as aplicações e itens foram gerados no Zabbix.



## Author

Bernardo Lankheet

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$HISTORYSP}|<p>-</p>|`90d`|Text macro|
|{$INTERVALHTTP}|<p>-</p>|`2h`|Text macro|
|{$INTERVALLLDHTTP}|<p>-</p>|`5h`|Text macro|
|{$LOSTPERIOD}|<p>-</p>|`2d`|Text macro|
|{$TRENDSP}|<p>-</p>|`365d`|Text macro|
|{$UPINTERVALLLD}|<p>-</p>|`5h`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Discovery Countries|<p>Discovery Data Raw All</p>|`HTTP agent`|discovery.countries<p>Update: {$INTERVALLLDHTTP}</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Total All updated|<p>-</p>|`Dependent item`|total.all.updated<p>Update: 0</p>|
|Total All Recovered|<p>-</p>|`Dependent item`|total.all.recovered<p>Update: 0</p>|
|Total All Cases|<p>-</p>|`Dependent item`|total.all.cases<p>Update: 0</p>|
|HTTP Consult Total|<p>Download Data Raw Total Cases</p>|`HTTP agent`|http.consult<p>Update: {$INTERVALHTTP}</p>|
|Total All Deaths|<p>-</p>|`Dependent item`|total.all.deaths<p>Update: 0</p>|
|"{#COUNTRY} - {#ISO3}" - ActiveCases|<p>-</p>|`HTTP agent`|active.country[{#COUNTRY}]<p>Update: {$UPINTERVALLLD}</p><p>LLD</p>|
|"{#COUNTRY} - {#ISO3}" - Cases|<p>-</p>|`HTTP agent`|cases.country[{#COUNTRY}]<p>Update: {$UPINTERVALLLD}</p><p>LLD</p>|
|"{#COUNTRY} - {#ISO3}" - CasesPerOneMillion|<p>-</p>|`HTTP agent`|casesPerOneMillion.country[{#COUNTRY}]<p>Update: {$UPINTERVALLLD}</p><p>LLD</p>|
|"{#COUNTRY} - {#ISO3}" - Critical|<p>-</p>|`HTTP agent`|critical.country[{#COUNTRY}]<p>Update: {$UPINTERVALLLD}</p><p>LLD</p>|
|"{#COUNTRY} - {#ISO3}" - Deaths|<p>-</p>|`HTTP agent`|deaths.country[{#COUNTRY}]<p>Update: {$UPINTERVALLLD}</p><p>LLD</p>|
|"{#COUNTRY} - {#ISO3}" - DeathsPerOneMillion|<p>-</p>|`HTTP agent`|deathsPerOneMillion.country[{#COUNTRY}]<p>Update: {$UPINTERVALLLD}</p><p>LLD</p>|
|"{#COUNTRY} - {#ISO3}" - Recovered|<p>-</p>|`HTTP agent`|recovered.country[{#COUNTRY}]<p>Update: {$UPINTERVALLLD}</p><p>LLD</p>|
|"{#COUNTRY} - {#ISO3}" - TodayCases|<p>-</p>|`HTTP agent`|today.cases.country[{#COUNTRY}]<p>Update: {$UPINTERVALLLD}</p><p>LLD</p>|
|"{#COUNTRY} - {#ISO3}" - TodayDeaths|<p>-</p>|`HTTP agent`|today.deaths.country[{#COUNTRY}]<p>Update: {$UPINTERVALLLD}</p><p>LLD</p>|
## Triggers

There are no triggers in this template.

