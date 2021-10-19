# Template App Cortex XDR

## Overview

Cortex XDR template for Windows.


Checks service state, service path, Cortex XDR version and protection status.



## Author

Olai Wanvik

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$CORTEX.SERVICE}|<p>Service name of Cortex XDR</p>|`"cyserver"`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Cortex XDR Service|<p>Service state of Cortex XDR</p>|`Zabbix agent`|service.info[cyserver,state]<p>Update: 5m</p>|
|Cortex Service Path|<p>Path of Cortex XDR service. Depends on service name in macro</p>|`Zabbix agent`|service.info[{$CORTEX.SERVICE},path]<p>Update: 1h</p>|
|Cortex Version|<p>-</p>|`Zabbix agent`|system.run[powershell.exe Get-ItemPropertyValue -Path 'HKLM:\Software\Cyvera\Client\' -Name 'Product Version']<p>Update: 1h</p>|
|Cortex Protection Status|<p>Protection Status of Cortex XDR Value Anti-Exploit Protection Anti-Malware Protection 3 Enabled Enabled 2 Disabled Enabled 1 Enabled Disabled 0 Disabled Disabled</p>|`Zabbix agent`|system.run[powershell.exe Get-ItemPropertyValue -Path 'HKLM:\Software\Palo Alto Networks\Traps\' -Name 'ProtectionStatus']<p>Update: 5m</p>|
## Triggers

There are no triggers in this template.

