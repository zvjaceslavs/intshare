# impressoras SIMPRESS

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
|Nivel Toner Amarelo|<p>-</p>|`External check`|NivelToner.php["{HOST.NAME}","Yellow"]<p>Update: 14400</p>|
|Nivel Toner Azul|<p>-</p>|`External check`|NivelToner.php["{HOST.NAME}","Cyan"]<p>Update: 14400</p>|
|Nivel Toner Preto|<p>-</p>|`External check`|NivelToner.php["{HOST.NAME}","Black"]<p>Update: 14400</p>|
|Nivel Toner Rosa|<p>-</p>|`External check`|NivelToner.php["{HOST.NAME}","Magenta"]<p>Update: 14400</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Toner Amarelo Vazio|<p>-</p>|high|
|Toner Azul Vazio|<p>-</p>|high|
|Toner Preto Vazio|<p>-</p>|high|
|Toner Rosa Vazio|<p>-</p>|high|
