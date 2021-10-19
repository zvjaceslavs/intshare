# Template App IIS LLD Sites Monitoring

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SITE_CPU_ALERT}|<p>-</p>|`40`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Discovery Sites|<p>-</p>|`Zabbix agent`|wmi.getall[ROOT\WebAdministration,SELECT * FROM WorkerProcess]<p>Update: 3m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|{#SITENAME} State|<p>-</p>|`Zabbix agent`|system.run[C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -Nologo "Import-Module WebAdministration;(Get-ItemProperty IIS:\AppPools\{#SITENAME}).state"]<p>Update: 10m</p>|
|{#SITENAME} Limit Action|<p>-</p>|`Zabbix agent`|system.run[C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -Nologo "Import-Module WebAdministration;(Get-ItemProperty IIS:\AppPools\{#SITENAME} -Name cpu).action"]<p>Update: 10m</p>|
|{#SITENAME} CPU Limit|<p>-</p>|`Zabbix agent`|system.run[C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -Nologo "Import-Module WebAdministration;(Get-ItemProperty IIS:\AppPools\{#SITENAME} -Name cpu).limit"]<p>Update: 10m</p>|
|{#SITENAME} CPU Usage %|<p>-</p>|`Zabbix agent`|wmi.get[ROOT\CIMV2,"SELECT PercentProcessorTime FROM win32_perfformatteddata_perfproc_process WHERE IDProcess = {#PROCESSID}"]<p>Update: 1m</p>|
|{#SITENAME} Memory Usage|<p>-</p>|`Zabbix agent`|wmi.get[ROOT\CIMV2,SELECT WorkingSet FROM win32_perfformatteddata_perfproc_process WHERE IDProcess = {#PROCESSID}]<p>Update: 1m</p>|
|{#SITENAME} ProcessId|<p>-</p>|`Zabbix agent`|wmi.get[ROOT\WebAdministration,SELECT ProcessId FROM WorkerProcess WHERE ProcessId = {#PROCESSID}]<p>Update: 10m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{#SITENAME} High CPU Usage|<p>-</p>|high|
