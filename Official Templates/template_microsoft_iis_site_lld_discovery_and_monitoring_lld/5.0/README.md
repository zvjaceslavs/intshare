# Template App IIS LLD Sites Monitoring

## Overview

Template uses wmi and powershell methods.


Agent 4.4.5 is required for operation.


 


 

## Author

Serhii Zaitsev

## Macros used

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
|{#SITENAME} State (LLD)|<p>-</p>|`Zabbix agent`|system.run[C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -Nologo "Import-Module WebAdministration;(Get-ItemProperty IIS:\AppPools\{#SITENAME}).state"]<p>Update: 10m</p>|
|{#SITENAME} Limit Action (LLD)|<p>-</p>|`Zabbix agent`|system.run[C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -Nologo "Import-Module WebAdministration;(Get-ItemProperty IIS:\AppPools\{#SITENAME} -Name cpu).action"]<p>Update: 10m</p>|
|{#SITENAME} CPU Limit (LLD)|<p>-</p>|`Zabbix agent`|system.run[C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -Nologo "Import-Module WebAdministration;(Get-ItemProperty IIS:\AppPools\{#SITENAME} -Name cpu).limit"]<p>Update: 10m</p>|
|{#SITENAME} CPU Usage % (LLD)|<p>-</p>|`Zabbix agent`|wmi.get[ROOT\CIMV2,"SELECT PercentProcessorTime FROM win32_perfformatteddata_perfproc_process WHERE IDProcess = {#PROCESSID}"]<p>Update: 1m</p>|
|{#SITENAME} Memory Usage (LLD)|<p>-</p>|`Zabbix agent`|wmi.get[ROOT\CIMV2,SELECT WorkingSet FROM win32_perfformatteddata_perfproc_process WHERE IDProcess = {#PROCESSID}]<p>Update: 1m</p>|
|{#SITENAME} ProcessId (LLD)|<p>-</p>|`Zabbix agent`|wmi.get[ROOT\WebAdministration,SELECT ProcessId FROM WorkerProcess WHERE ProcessId = {#PROCESSID}]<p>Update: 10m</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|{#SITENAME} High CPU Usage|<p>-</p>|<p>**Expression**: {Template App IIS LLD Sites Monitoring:wmi.get[ROOT CIMV2,"SELECT PercentProcessorTime FROM win32_perfformatteddata_perfproc_process WHERE IDProcess = {#PROCESSID}"].min(5m)}>=40</p><p>**Recovery expression**: </p>|high|
|{#SITENAME} High CPU Usage (LLD)|<p>-</p>|<p>**Expression**: {Template App IIS LLD Sites Monitoring:wmi.get[ROOT CIMV2,"SELECT PercentProcessorTime FROM win32_perfformatteddata_perfproc_process WHERE IDProcess = {#PROCESSID}"].min(5m)}>=40</p><p>**Recovery expression**: </p>|high|
