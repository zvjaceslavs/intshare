# Template_HP_Designjet_T770

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
|Printhead_magenta-cyan_used|<p>-</p>|`SNMP agent`|Printhead_magenta-cyan_used<p>Update: 7200</p>|
|Ink_Yellow_Usage|<p>-</p>|`SNMP agent`|Ink_Yellow_Usage<p>Update: 7200</p>|
|Ink_MK_Usage|<p>-</p>|`SNMP agent`|Ink_MK_Usage<p>Update: 7200</p>|
|Maximum_yellow_toner_level|<p>-</p>|`SNMP agent`|Maximum_yellow_toner_level<p>Update: 86400</p>|
|Amount_of_PK_toner_remaining|<p>-</p>|`SNMP agent`|Amount_of_PK_toner_remaining<p>Update: 3600</p>|
|Ink_PK_Usage|<p>-</p>|`SNMP agent`|Ink_PK_Usage<p>Update: 7200</p>|
|Hostname|<p>-</p>|`SNMP agent`|Hostname<p>Update: 86400</p>|
|Type_of_yellow_toner|<p>-</p>|`SNMP agent`|Type_of_yellow_toner<p>Update: 86400</p>|
|Type_of_gray_toner|<p>-</p>|`SNMP agent`|Type_of_gray_toner<p>Update: 86400</p>|
|Name_of_model|<p>-</p>|`SNMP agent`|Name_of_model<p>Update: 86400</p>|
|Amount_of_gray_toner_remaining|<p>-</p>|`SNMP agent`|Amount_of_gray_toner_remaining<p>Update: 3600</p>|
|Ink_Gray_Usage|<p>-</p>|`SNMP agent`|Ink_Gray_Usage<p>Update: 7200</p>|
|Ink_Magenta_Usage|<p>-</p>|`SNMP agent`|Ink_Magenta_Usage<p>Update: 7200</p>|
|Amount_of_yellow_toner_remaining|<p>-</p>|`SNMP agent`|Amount_of_yellow_toner_remaining<p>Update: 3600</p>|
|Printhead_gray-photo_black_used|<p>-</p>|`SNMP agent`|Printhead_gray-photo_black_used<p>Update: 7200</p>|
|Amount_of_magenta_toner_remaining|<p>-</p>|`SNMP agent`|Amount_of_magenta_toner_remaining<p>Update: 3600</p>|
|Maximum_magenta_toner_level|<p>-</p>|`SNMP agent`|Maximum_magenta_toner_level<p>Update: 86400</p>|
|Maximum_MK_toner_level|<p>-</p>|`SNMP agent`|Maximum_MK_toner_level<p>Update: 86400</p>|
|Printhead_matte_black-yellow_used|<p>-</p>|`SNMP agent`|Printhead_matte_black-yellow_used<p>Update: 7200</p>|
|Serial_Number|<p>-</p>|`SNMP agent`|Serial_Number<p>Update: 72000</p>|
|Type_of_PK_toner|<p>-</p>|`SNMP agent`|Type_of_PK_toner<p>Update: 86400</p>|
|Ink_Cyan_Usage|<p>-</p>|`SNMP agent`|Ink_Cyan_Usage<p>Update: 7200</p>|
|Maximum_cyan_toner_level|<p>-</p>|`SNMP agent`|Maximum_cyan_toner_level<p>Update: 86400</p>|
|Type_of_cyan_toner|<p>-</p>|`SNMP agent`|Type_of_cyan_toner<p>Update: 86400</p>|
|Type_of_magenta_toner|<p>-</p>|`SNMP agent`|Type_of_magenta_toner<p>Update: 86400</p>|
|Amount_of_MK_toner_remaining|<p>-</p>|`SNMP agent`|Amount_of_MK_toner_remaining<p>Update: 3600</p>|
|Maximum_gray_toner_level|<p>-</p>|`SNMP agent`|Maximum_gray_toner_level<p>Update: 86400</p>|
|Maximum_PK_toner_level|<p>-</p>|`SNMP agent`|Maximum_PK_toner_level<p>Update: 86400</p>|
|Amount_of_cyan_toner_remaining|<p>-</p>|`SNMP agent`|Amount_of_cyan_toner_remaining<p>Update: 3600</p>|
|SimplePing|<p>-</p>|`Simple check`|icmpping<p>Update: 360</p>|
|Type_of_MK_toner|<p>-</p>|`SNMP agent`|Type_of_MK_toner<p>Update: 86400</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Printer unavailable|<p>Can't ping printer 3 times in last 90 seconds</p>|high|
|{HOSTNAME} cyan toner is empty|<p>-</p>|high|
|{HOSTNAME} gray-photo_black printhead developed a resource|<p>-</p>|warning|
|{HOSTNAME} gray toner is almost done|<p>-</p>|warning|
|{HOSTNAME} gray toner is empty|<p>-</p>|high|
|{HOSTNAME} magenta-cyan printhead developed a resource|<p>-</p>|warning|
|{HOSTNAME} magenta toner is almost done|<p>-</p>|warning|
|{HOSTNAME} magenta toner is empty|<p>-</p>|high|
|{HOSTNAME} matte_black-yellow printhead developed a resource|<p>-</p>|warning|
|{HOSTNAME} MK toner is almost done|<p>-</p>|warning|
|{HOSTNAME} MK toner is empty|<p>-</p>|high|
|{HOSTNAME} PK toner is almost done|<p>-</p>|warning|
|{HOSTNAME} PK toner is empty|<p>-</p>|high|
|{HOSTNAME} yellow toner is almost done|<p>-</p>|warning|
|{HOSTNAME} yellow toner is empty|<p>-</p>|high|
