# Template_Printer_Panasonic_KX-MB2540

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
|Device_status|<p>-</p>|`SNMP agent`|Device_status<p>Update: 1800</p>|
|Copy_Page|<p>-</p>|`SNMP agent`|Copy_Page<p>Update: 7200</p>|
|ADF_Scan_Page|<p>-</p>|`SNMP agent`|ADF_Scan_Page<p>Update: 7200</p>|
|Fax_Receive_Page|<p>-</p>|`SNMP agent`|Fax_Receive_Page<p>Update: 7200</p>|
|TonerLevel|<p>-</p>|`SNMP agent`|TonerLevel<p>Update: 3600</p>|
|OPC_Drum_Count|<p>-</p>|`SNMP agent`|OPC_Drum_Count<p>Update: 7200</p>|
|Total_Print_Page|<p>-</p>|`SNMP agent`|Total_Print_Page<p>Update: 7200</p>|
|FB_Scan_Page|<p>-</p>|`SNMP agent`|FB_Scan_Page<p>Update: 7200</p>|
|Type_of_cartridge|<p>-</p>|`SNMP agent`|Type_of_cartridge<p>Update: 86400</p>|
|MAC_address|<p>-</p>|`SNMP agent`|MAC_address<p>Update: 86400</p>|
|PC_Print_Page|<p>-</p>|`SNMP agent`|PC_Print_Page<p>Update: 7200</p>|
|Hostname|<p>-</p>|`SNMP agent`|Hostname<p>Update: 86400</p>|
|PC_Scan_Page|<p>-</p>|`SNMP agent`|PC_Scan_Page<p>Update: 7200</p>|
|SimplePing|<p>-</p>|`Simple check`|icmpping<p>Update: 360</p>|
|DrumLevel|<p>-</p>|`SNMP agent`|DrumLevel<p>Update: 3600</p>|
|Fax_Send_Page|<p>-</p>|`SNMP agent`|Fax_Send_Page<p>Update: 7200</p>|
|Name_of_model|<p>-</p>|`SNMP agent`|Name_of_model<p>Update: 86400</p>|
|Serial Number|<p>-</p>|`SNMP agent`|Serial_Number<p>Update: 72000</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Printer unavailable|<p>Can't ping printer 3 times in last 90 seconds</p>|high|
|{HOSTNAME} Drum is empty|<p>-</p>|warning|
|{HOSTNAME} Toner is empty|<p>-</p>|average|
