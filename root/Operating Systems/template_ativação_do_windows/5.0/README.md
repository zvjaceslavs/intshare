# Template Ativacao do Windows

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
|Ativacao do Windows|<p>-</p>|`Zabbix agent`|system.run[c:\Windows\System32\cscript.exe /nologo c:\Windows\System32\slmgr.vbs /xpr]<p>Update: 1d</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Falha de ativação do Windows|<p>-</p>|high|
