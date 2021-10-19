# Template_Printer_Konica

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
|Amount_of_magenta_toner_remaining|<p>-</p>|`SNMP agent`|Amount_of_magenta_toner_remaining<p>Update: 3600</p>|
|Amount_of_black_developer_cartridge_remaining|<p>-</p>|`SNMP agent`|Amount_of_black_developer_cartridge_remaining<p>Update: 3600</p>|
|Maximum_cyan_toner_level|<p>-</p>|`SNMP agent`|Maximum_cyan_toner_level<p>Update: 86400</p>|
|Maximum_yellow_toner_level|<p>-</p>|`SNMP agent`|Maximum_yellow_toner_level<p>Update: 86400</p>|
|Maximum_yellow_developer_cartridge_level|<p>-</p>|`SNMP agent`|Maximum_yellow_developer_cartridge_level<p>Update: 86400</p>|
|Maximum_image_transfer_belt_unit_level|<p>-</p>|`SNMP agent`|Maximum_image_transfer_belt_unit_level<p>Update: 86400</p>|
|Amount_of_yellow_toner_remaining|<p>-</p>|`SNMP agent`|Amount_of_yellow_toner_remaining<p>Update: 3600</p>|
|Maximum_black_toner_level|<p>-</p>|`SNMP agent`|Maximum_black_toner_level<p>Update: 86400</p>|
|Maximum_yellow_drum_level|<p>-</p>|`SNMP agent`|Maximum_yellow_drum_level<p>Update: 86400</p>|
|Amount_of_transfer_roller_unit_remaining|<p>-</p>|`SNMP agent`|Amount_of_transfer_roller_unit_remaining<p>Update: 3600</p>|
|Maximum_transfer_roller_unit_level|<p>-</p>|`SNMP agent`|Maximum_transfer_roller_unit_level<p>Update: 86400</p>|
|Maximum_ozone_filter_level|<p>-</p>|`SNMP agent`|Maximum_ozone_filter_level<p>Update: 86400</p>|
|Amount_of_black_toner_remaining|<p>-</p>|`SNMP agent`|Amount_of_black_toner_remaining<p>Update: 3600</p>|
|Maximum_cyan_drum_level|<p>-</p>|`SNMP agent`|Maximum_cyan_drum_level<p>Update: 86400</p>|
|Amount_of_magenta_drum_remaining|<p>-</p>|`SNMP agent`|Amount_of_magenta_drum_remaining<p>Update: 3600</p>|
|Amount_of_fusing_unit_remaining|<p>-</p>|`SNMP agent`|Amount_of_fusing_unit_remaining<p>Update: 3600</p>|
|Amount_of_ozone_filter_remaining|<p>-</p>|`SNMP agent`|Amount_of_ozone_filter_remaining<p>Update: 3600</p>|
|Maximum_magenta_developer_cartridge_level|<p>-</p>|`SNMP agent`|Maximum_magenta_developer_cartridge_level<p>Update: 86400</p>|
|Amount_of_yellow_drum_remaining|<p>-</p>|`SNMP agent`|Amount_of_yellow_drum_remaining<p>Update: 3600</p>|
|Amount_of_image_transfer_belt_unit_remaining|<p>-</p>|`SNMP agent`|Amount_of_image_transfer_belt_unit_remaining<p>Update: 3600</p>|
|Amount_of_yellow_developer_cartridge_remaining|<p>-</p>|`SNMP agent`|Amount_of_yellow_developer_cartridge_remaining<p>Update: 3600</p>|
|Maximum_cyan_developer_cartridge_level|<p>-</p>|`SNMP agent`|Maximum_cyan_developer_cartridge_level<p>Update: 86400</p>|
|SimplePing|<p>-</p>|`Simple check`|icmpping<p>Update: 360</p>|
|Maximum_black_drum_level|<p>-</p>|`SNMP agent`|Maximum_black_drum_level<p>Update: 86400</p>|
|Amount_of_black_drum_remaining|<p>-</p>|`SNMP agent`|Amount_of_black_drum_remaining<p>Update: 3600</p>|
|TotalPrits|<p>-</p>|`SNMP agent`|TotalPrits<p>Update: 7200</p>|
|Amount_of_cyan_drum_remaining|<p>-</p>|`SNMP agent`|Amount_of_cyan_drum_remaining<p>Update: 3600</p>|
|Maximum_magenta_drum_level|<p>-</p>|`SNMP agent`|Maximum_magenta_drum_level<p>Update: 86400</p>|
|Maximum_fusing_unit_level|<p>-</p>|`SNMP agent`|Maximum_fusing_unit_level<p>Update: 86400</p>|
|Amount_of_magenta_developer_cartridge_remaining|<p>-</p>|`SNMP agent`|Amount_of_magenta_developer_cartridge_remaining<p>Update: 3600</p>|
|Amount_of_cyan_toner_remaining|<p>-</p>|`SNMP agent`|Amount_of_cyan_toner_remaining<p>Update: 3600</p>|
|Amount_of_cyan_developer_cartridge_remaining|<p>-</p>|`SNMP agent`|Amount_of_cyan_developer_cartridge_remaining<p>Update: 3600</p>|
|Serial_number|<p>-</p>|`SNMP agent`|Serial_number<p>Update: 86400</p>|
|Maximum_magenta_toner_level|<p>-</p>|`SNMP agent`|Maximum_magenta_toner_level<p>Update: 86400</p>|
|Maximum_black_developer_cartridge_level|<p>-</p>|`SNMP agent`|Maximum_black_developer_cartridge_level<p>Update: 86400</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Printer unavailable|<p>Can't ping printer 3 times in last 90 seconds</p>|high|
|{HOSTNAME} black developer cartridge is almost done|<p>-</p>|information|
|{HOSTNAME} black developer cartridge is empty|<p>-</p>|warning|
|{HOSTNAME} black drum is almost done|<p>-</p>|information|
|{HOSTNAME} black drum is empty|<p>-</p>|warning|
|{HOSTNAME} black toner is almost done|<p>-</p>|high|
|{HOSTNAME} black toner is empty|<p>-</p>|average|
|{HOSTNAME} cyan developer cartridge is almost done|<p>-</p>|information|
|{HOSTNAME} cyan developer cartridge is empty|<p>-</p>|warning|
|{HOSTNAME} cyan drum is almost done|<p>-</p>|information|
|{HOSTNAME} cyan drum is empty|<p>-</p>|warning|
|{HOSTNAME} cyan toner is almost done|<p>-</p>|warning|
|{HOSTNAME} cyan toner is empty|<p>-</p>|average|
|{HOSTNAME} fusing unit is almost done|<p>-</p>|information|
|{HOSTNAME} fusing unit is empty|<p>-</p>|warning|
|{HOSTNAME} image transfer belt unit is almost done|<p>-</p>|information|
|{HOSTNAME} image transfer belt unit is empty|<p>-</p>|warning|
|{HOSTNAME} magenta developer cartridge is almost done|<p>-</p>|information|
|{HOSTNAME} magenta developer cartridge is empty|<p>-</p>|warning|
|{HOSTNAME} magenta drum is almost done|<p>-</p>|information|
|{HOSTNAME} magenta drum is empty|<p>-</p>|warning|
|{HOSTNAME} magenta toner is almost done|<p>-</p>|warning|
|{HOSTNAME} magenta toner is empty|<p>-</p>|average|
|{HOSTNAME} ozone filter is almost done|<p>-</p>|information|
|{HOSTNAME} ozone filter is empty|<p>-</p>|warning|
|{HOSTNAME} transfer roller unit is almost done|<p>-</p>|information|
|{HOSTNAME} transfer roller unit is empty|<p>-</p>|warning|
|{HOSTNAME} yellow developer cartridge is almost done|<p>-</p>|information|
|{HOSTNAME} yellow developer cartridge is empty|<p>-</p>|warning|
|{HOSTNAME} yellow drum is almost done|<p>-</p>|information|
|{HOSTNAME} yellow drum is empty|<p>-</p>|warning|
|{HOSTNAME} yellow toner is almost done|<p>-</p>|warning|
|{HOSTNAME} yellow toner is empty|<p>-</p>|average|
