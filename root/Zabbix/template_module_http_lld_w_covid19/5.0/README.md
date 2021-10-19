# Template_Module_HTTP_LLD_W_Corona_44

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

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
|HTTP Consult Total|<p>Download Data Raw Total Cases</p>|`HTTP agent`|http.consult<p>Update: {$INTERVALHTTP}</p>|
|Total All Cases|<p>-</p>|`Dependent item`|total.all.cases<p>Update: 0</p>|
|Total All Deaths|<p>-</p>|`Dependent item`|total.all.deaths<p>Update: 0</p>|
|Total All Recovered|<p>-</p>|`Dependent item`|total.all.recovered<p>Update: 0</p>|
|Total All updated|<p>-</p>|`Dependent item`|total.all.updated<p>Update: 0</p>|
|"{#COUNTRY} - {#ISO3}" - ActiveCases|<p>-</p>|`HTTP agent`|active.country[{#COUNTRY}]<p>Update: {$UPINTERVALLLD}</p>|
|"{#COUNTRY} - {#ISO3}" - Cases|<p>-</p>|`HTTP agent`|cases.country[{#COUNTRY}]<p>Update: {$UPINTERVALLLD}</p>|
|"{#COUNTRY} - {#ISO3}" - CasesPerOneMillion|<p>-</p>|`HTTP agent`|casesPerOneMillion.country[{#COUNTRY}]<p>Update: {$UPINTERVALLLD}</p>|
|"{#COUNTRY} - {#ISO3}" - Critical|<p>-</p>|`HTTP agent`|critical.country[{#COUNTRY}]<p>Update: {$UPINTERVALLLD}</p>|
|"{#COUNTRY} - {#ISO3}" - Deaths|<p>-</p>|`HTTP agent`|deaths.country[{#COUNTRY}]<p>Update: {$UPINTERVALLLD}</p>|
|"{#COUNTRY} - {#ISO3}" - DeathsPerOneMillion|<p>-</p>|`HTTP agent`|deathsPerOneMillion.country[{#COUNTRY}]<p>Update: {$UPINTERVALLLD}</p>|
|"{#COUNTRY} - {#ISO3}" - Recovered|<p>-</p>|`HTTP agent`|recovered.country[{#COUNTRY}]<p>Update: {$UPINTERVALLLD}</p>|
|"{#COUNTRY} - {#ISO3}" - TodayCases|<p>-</p>|`HTTP agent`|today.cases.country[{#COUNTRY}]<p>Update: {$UPINTERVALLLD}</p>|
|"{#COUNTRY} - {#ISO3}" - TodayDeaths|<p>-</p>|`HTTP agent`|today.deaths.country[{#COUNTRY}]<p>Update: {$UPINTERVALLLD}</p>|
## Triggers

There are no triggers in this template.

