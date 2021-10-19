# Windows Defender WMI

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
|Full Scan Age|<p>-</p>|`Zabbix agent`|wmi.get["root\microsoft\windows\defender","select FullScanAge from MSFT_MpComputerStatus"]<p>Update: 3h</p>|
|NIIS Signature age in days|<p>-</p>|`Zabbix agent`|wmi.get["root\microsoft\windows\defender","select NISSignatureAge from MSFT_MpComputerStatus"]<p>Update: 3h</p>|
|Ioav Protection Enabled|<p>-</p>|`Zabbix agent`|wmi.get["root\microsoft\windows\defender","select IoavProtectionEnabled from MSFT_MpComputerStatus"]<p>Update: 1h</p>|
|AntiVirus Signature Age|<p>-</p>|`Zabbix agent`|wmi.get["root\microsoft\windows\defender","select AntivirusSignatureAge from MSFT_MpComputerStatus"]<p>Update: 3h</p>|
|AntiSpyware Signature age in days|<p>-</p>|`Zabbix agent`|wmi.get["root\microsoft\windows\defender","select AntispywareSignatureAge from MSFT_MpComputerStatus"]<p>Update: 3h</p>|
|Anti Spyware Protection Enabled|<p>-</p>|`Zabbix agent`|wmi.get["root\microsoft\windows\defender","select AntispywareEnabled from MSFT_MpComputerStatus"]<p>Update: 1h</p>|
|Current computer state|<p>-</p>|`Zabbix agent`|wmi.get["root\microsoft\windows\defender","select ComputerState  from MSFT_MpComputerStatus"]<p>Update: 10m</p>|
|AntiVirus Signature Last updated|<p>-</p>|`Zabbix agent`|wmi.get["root\microsoft\windows\defender","select AntivirusSignatureLastUpdated from MSFT_MpComputerStatus"]<p>Update: 3h</p>|
|NIS Protection Enabled|<p>-</p>|`Zabbix agent`|wmi.get["root\microsoft\windows\defender","select NISEnabled from MSFT_MpComputerStatus"]<p>Update: 1h</p>|
|NIS Signature Last updated|<p>-</p>|`Zabbix agent`|wmi.get["root\microsoft\windows\defender","select NISSignatureLastUpdated from MSFT_MpComputerStatus"]<p>Update: 3h</p>|
|Behavior Monitor Enabled|<p>-</p>|`Zabbix agent`|wmi.get["root\microsoft\windows\defender","select BehaviorMonitorEnabled from MSFT_MpComputerStatus"]<p>Update: 1h</p>|
|Real Time Protection Enabled|<p>-</p>|`Zabbix agent`|wmi.get["root\microsoft\windows\defender","select RealTimeProtectionEnabled from MSFT_MpComputerStatus"]<p>Update: 1h</p>|
|OnAccess Protection Enabled|<p>-</p>|`Zabbix agent`|wmi.get["root\microsoft\windows\defender","select OnAccessProtectionEnabled from MSFT_MpComputerStatus"]<p>Update: 1h</p>|
|Quick Scan Age|<p>-</p>|`Zabbix agent`|wmi.get["root\microsoft\windows\defender","select QuickScanAge  from MSFT_MpComputerStatus"]<p>Update: 3h</p>|
|Anti Virus Enabled|<p>-</p>|`Zabbix agent`|wmi.get["root\microsoft\windows\defender","select AntivirusEnabled from MSFT_MpComputerStatus"]<p>Update: 1h</p>|
|AntiSpyware Signature Last updated|<p>-</p>|`Zabbix agent`|wmi.get["root\microsoft\windows\defender","select AntispywareSignatureLastUpdated from MSFT_MpComputerStatus"]<p>Update: 3h</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Anti Spyware Signature was not updated for more then 5 days on {HOST.HOST}|<p>-</p>|high|
|Anti Virus Disabled on {HOST.HOST}|<p>-</p>|warning|
|Anti Virus Signature was not updated for more then 5 days on {HOST.HOST}|<p>-</p>|high|
|Behavior Monitor Disabled on {HOST.HOST}|<p>-</p>|warning|
|Full Scan was not performed for more then 5 days on {HOST.HOST}|<p>-</p>|average|
|Ioav Protection Disabled on {HOST.HOST}|<p>-</p>|warning|
|NIIS Signature was not updated for more then 5 days on {HOST.HOST}|<p>-</p>|high|
|NIS Protection Disabled on {HOST.HOST}|<p>-</p>|warning|
|OnAccess Protection Disabled on {HOST.HOST}|<p>-</p>|warning|
|Quick Scan was not performed for more then 3 days on {HOST.HOST}|<p>-</p>|average|
|Real Time Protection Disabled on {HOST.HOST}|<p>-</p>|warning|
|Windows Defender has failed critically on {HOST.HOST}|<p>-</p>|high|
