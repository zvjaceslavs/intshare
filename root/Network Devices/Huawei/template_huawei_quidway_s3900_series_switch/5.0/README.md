# Template Huawei Quidway s3900 series switches

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$COMMUNITY_NAME}|<p>-</p>|``|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Network interfaces|<p>You may also consider using IF-MIB::ifType or IF-MIB::ifAlias for discovery depending on your filtering needs.</p>|`SNMP agent`|ifDescr<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|CPU medium load|<p>-</p>|`SNMP agent`|.1.3.6.1.2.1.25.3.3.1.2<p>Update: 60s</p>|
|Uptime|<p>Uptime of switch</p>|`SNMP agent`|hUptime<p>Update: 30s</p>|
|Admin Status port FE01|<p>-</p>|`SNMP agent`|ifAdminStatus.4227626<p>Update: 30s</p>|
|Admin Status port FE02|<p>-</p>|`SNMP agent`|ifAdminStatus.4227634<p>Update: 30s</p>|
|Admin Status port FE03|<p>-</p>|`SNMP agent`|ifAdminStatus.4227642<p>Update: 30s</p>|
|Admin Status port FE04|<p>-</p>|`SNMP agent`|ifAdminStatus.4227650<p>Update: 30s</p>|
|Admin Status port FE05|<p>-</p>|`SNMP agent`|ifAdminStatus.4227658<p>Update: 30s</p>|
|Admin Status port FE06|<p>-</p>|`SNMP agent`|ifAdminStatus.4227666<p>Update: 30s</p>|
|Admin Status port FE07|<p>-</p>|`SNMP agent`|ifAdminStatus.4227674<p>Update: 30s</p>|
|Admin Status port FE08|<p>-</p>|`SNMP agent`|ifAdminStatus.4227682<p>Update: 30s</p>|
|Admin Status port FE09|<p>-</p>|`SNMP agent`|ifAdminStatus.4227690<p>Update: 30s</p>|
|Admin Status port FE10|<p>-</p>|`SNMP agent`|ifAdminStatus.4227698<p>Update: 30s</p>|
|Admin Status port FE11|<p>-</p>|`SNMP agent`|ifAdminStatus.4227706<p>Update: 30s</p>|
|Admin Status port FE12|<p>-</p>|`SNMP agent`|ifAdminStatus.4227714<p>Update: 30s</p>|
|Admin Status port FE13|<p>-</p>|`SNMP agent`|ifAdminStatus.4227722<p>Update: 30s</p>|
|Admin Status port FE14|<p>-</p>|`SNMP agent`|ifAdminStatus.4227730<p>Update: 30s</p>|
|Admin Status port FE15|<p>-</p>|`SNMP agent`|ifAdminStatus.4227738<p>Update: 30s</p>|
|Admin Status port FE16|<p>-</p>|`SNMP agent`|ifAdminStatus.4227746<p>Update: 30s</p>|
|Admin Status port FE17|<p>-</p>|`SNMP agent`|ifAdminStatus.4227754<p>Update: 30s</p>|
|Admin Status port FE18|<p>-</p>|`SNMP agent`|ifAdminStatus.4227762<p>Update: 30s</p>|
|Admin Status port FE19|<p>-</p>|`SNMP agent`|ifAdminStatus.4227770<p>Update: 30s</p>|
|Admin Status port FE20|<p>-</p>|`SNMP agent`|ifAdminStatus.4227778<p>Update: 30s</p>|
|Admin Status port FE21|<p>-</p>|`SNMP agent`|ifAdminStatus.4227786<p>Update: 30s</p>|
|Admin Status port FE22|<p>-</p>|`SNMP agent`|ifAdminStatus.4227794<p>Update: 30s</p>|
|Admin Status port FE23|<p>-</p>|`SNMP agent`|ifAdminStatus.4227802<p>Update: 30s</p>|
|Admin Status port FE24|<p>-</p>|`SNMP agent`|ifAdminStatus.4227810<p>Update: 30s</p>|
|Admin Status port GE1|<p>-</p>|`SNMP agent`|ifAdminStatus.4228041<p>Update: 30s</p>|
|Admin Status port GE2|<p>-</p>|`SNMP agent`|ifAdminStatus.4228049<p>Update: 30s</p>|
|Admin Status port GE3|<p>-</p>|`SNMP agent`|ifAdminStatus.4228057<p>Update: 30s</p>|
|Admin Status port GE4|<p>-</p>|`SNMP agent`|ifAdminStatus.4228065<p>Update: 30s</p>|
|Errors RX port FE01|<p>-</p>|`SNMP agent`|ifInErrors.4227626<p>Update: 30s</p>|
|Errors RX port FE02|<p>-</p>|`SNMP agent`|ifInErrors.4227634<p>Update: 30s</p>|
|Errors RX port FE03|<p>-</p>|`SNMP agent`|ifInErrors.4227642<p>Update: 30s</p>|
|Errors RX port FE04|<p>-</p>|`SNMP agent`|ifInErrors.4227650<p>Update: 30s</p>|
|Errors RX port FE05|<p>-</p>|`SNMP agent`|ifInErrors.4227658<p>Update: 30s</p>|
|Errors RX port FE06|<p>-</p>|`SNMP agent`|ifInErrors.4227666<p>Update: 30s</p>|
|Errors RX port FE07|<p>-</p>|`SNMP agent`|ifInErrors.4227674<p>Update: 30s</p>|
|Errors RX port FE08|<p>-</p>|`SNMP agent`|ifInErrors.4227682<p>Update: 30s</p>|
|Errors RX port FE09|<p>-</p>|`SNMP agent`|ifInErrors.4227690<p>Update: 30s</p>|
|Errors RX port FE10|<p>-</p>|`SNMP agent`|ifInErrors.4227698<p>Update: 30s</p>|
|Errors RX port FE11|<p>-</p>|`SNMP agent`|ifInErrors.4227706<p>Update: 30s</p>|
|Errors RX port FE12|<p>-</p>|`SNMP agent`|ifInErrors.4227714<p>Update: 30s</p>|
|Errors RX port FE13|<p>-</p>|`SNMP agent`|ifInErrors.4227722<p>Update: 30s</p>|
|Errors RX port FE14|<p>-</p>|`SNMP agent`|ifInErrors.4227730<p>Update: 30s</p>|
|Errors RX port FE15|<p>-</p>|`SNMP agent`|ifInErrors.4227738<p>Update: 30s</p>|
|Errors RX port FE16|<p>-</p>|`SNMP agent`|ifInErrors.4227746<p>Update: 30s</p>|
|Errors RX port FE17|<p>-</p>|`SNMP agent`|ifInErrors.4227754<p>Update: 30s</p>|
|Errors RX port FE18|<p>-</p>|`SNMP agent`|ifInErrors.4227762<p>Update: 30s</p>|
|Errors RX port FE19|<p>-</p>|`SNMP agent`|ifInErrors.4227770<p>Update: 30s</p>|
|Errors RX port FE20|<p>-</p>|`SNMP agent`|ifInErrors.4227778<p>Update: 30s</p>|
|Errors RX port FE21|<p>-</p>|`SNMP agent`|ifInErrors.4227786<p>Update: 30s</p>|
|Errors RX port FE22|<p>-</p>|`SNMP agent`|ifInErrors.4227794<p>Update: 30s</p>|
|Errors RX port FE23|<p>-</p>|`SNMP agent`|ifInErrors.4227802<p>Update: 30s</p>|
|Errors RX port FE24|<p>-</p>|`SNMP agent`|ifInErrors.4227810<p>Update: 30s</p>|
|Errors RX port GE1|<p>-</p>|`SNMP agent`|ifInErrors.4228041<p>Update: 30s</p>|
|Errors RX port GE2|<p>-</p>|`SNMP agent`|ifInErrors.4228049<p>Update: 30s</p>|
|Errors RX port GE3|<p>-</p>|`SNMP agent`|ifInErrors.4228057<p>Update: 30s</p>|
|Errors RX port GE4|<p>-</p>|`SNMP agent`|ifInErrors.4228065<p>Update: 30s</p>|
|Bytes Rx FE01|<p>-</p>|`SNMP agent`|ifInOctets.4227626<p>Update: 30s</p>|
|Bytes Rx FE02|<p>-</p>|`SNMP agent`|ifInOctets.4227634<p>Update: 30s</p>|
|Bytes Rx FE03|<p>-</p>|`SNMP agent`|ifInOctets.4227642<p>Update: 30s</p>|
|Bytes Rx FE04|<p>-</p>|`SNMP agent`|ifInOctets.4227650<p>Update: 30s</p>|
|Bytes Rx FE05|<p>-</p>|`SNMP agent`|ifInOctets.4227658<p>Update: 30s</p>|
|Bytes Rx FE06|<p>-</p>|`SNMP agent`|ifInOctets.4227666<p>Update: 30s</p>|
|Bytes Rx FE07|<p>-</p>|`SNMP agent`|ifInOctets.4227674<p>Update: 30s</p>|
|Bytes Rx FE08|<p>-</p>|`SNMP agent`|ifInOctets.4227682<p>Update: 30s</p>|
|Bytes Rx FE09|<p>-</p>|`SNMP agent`|ifInOctets.4227690<p>Update: 30s</p>|
|Bytes Rx FE10|<p>-</p>|`SNMP agent`|ifInOctets.4227698<p>Update: 30s</p>|
|Bytes Rx FE11|<p>-</p>|`SNMP agent`|ifInOctets.4227706<p>Update: 30s</p>|
|Bytes Rx FE12|<p>-</p>|`SNMP agent`|ifInOctets.4227714<p>Update: 30s</p>|
|Bytes Rx FE13|<p>-</p>|`SNMP agent`|ifInOctets.4227722<p>Update: 30s</p>|
|Bytes Rx FE14|<p>-</p>|`SNMP agent`|ifInOctets.4227730<p>Update: 30s</p>|
|Bytes Rx FE15|<p>-</p>|`SNMP agent`|ifInOctets.4227738<p>Update: 30s</p>|
|Bytes Rx FE16|<p>-</p>|`SNMP agent`|ifInOctets.4227746<p>Update: 30s</p>|
|Bytes Rx FE17|<p>-</p>|`SNMP agent`|ifInOctets.4227754<p>Update: 30s</p>|
|Bytes Rx FE18|<p>-</p>|`SNMP agent`|ifInOctets.4227762<p>Update: 30s</p>|
|Bytes Rx FE19|<p>-</p>|`SNMP agent`|ifInOctets.4227770<p>Update: 30s</p>|
|Bytes Rx FE20|<p>-</p>|`SNMP agent`|ifInOctets.4227778<p>Update: 30s</p>|
|Bytes Rx FE21|<p>-</p>|`SNMP agent`|ifInOctets.4227786<p>Update: 30s</p>|
|Bytes Rx FE22|<p>-</p>|`SNMP agent`|ifInOctets.4227794<p>Update: 30s</p>|
|Bytes Rx FE23|<p>-</p>|`SNMP agent`|ifInOctets.4227802<p>Update: 30s</p>|
|Bytes Rx FE24|<p>-</p>|`SNMP agent`|ifInOctets.4227810<p>Update: 30s</p>|
|Bytes Rx GE1|<p>-</p>|`SNMP agent`|ifInOctets.4228041<p>Update: 30s</p>|
|Bytes Rx GE2|<p>-</p>|`SNMP agent`|ifInOctets.4228049<p>Update: 30s</p>|
|Bytes Rx GE3|<p>-</p>|`SNMP agent`|ifInOctets.4228057<p>Update: 30s</p>|
|Bytes Rx GE4|<p>-</p>|`SNMP agent`|ifInOctets.4228065<p>Update: 30s</p>|
|Number of interfaces|<p>-</p>|`SNMP agent`|ifNumber.0<p>Update: 3600s</p>|
|Oper status port FE01|<p>-</p>|`SNMP agent`|ifOperStatus.4227626<p>Update: 30s</p>|
|Oper status port FE02|<p>-</p>|`SNMP agent`|ifOperStatus.4227634<p>Update: 30s</p>|
|Oper status port FE03|<p>-</p>|`SNMP agent`|ifOperStatus.4227642<p>Update: 30s</p>|
|Oper status port FE04|<p>-</p>|`SNMP agent`|ifOperStatus.4227650<p>Update: 30s</p>|
|Oper status port FE05|<p>-</p>|`SNMP agent`|ifOperStatus.4227658<p>Update: 30s</p>|
|Oper status port FE06|<p>-</p>|`SNMP agent`|ifOperStatus.4227666<p>Update: 30s</p>|
|Oper status port FE07|<p>-</p>|`SNMP agent`|ifOperStatus.4227674<p>Update: 30s</p>|
|Oper status port FE08|<p>-</p>|`SNMP agent`|ifOperStatus.4227682<p>Update: 30s</p>|
|Oper status port FE09|<p>-</p>|`SNMP agent`|ifOperStatus.4227690<p>Update: 30s</p>|
|Oper status port FE10|<p>-</p>|`SNMP agent`|ifOperStatus.4227698<p>Update: 30s</p>|
|Oper status port FE11|<p>-</p>|`SNMP agent`|ifOperStatus.4227706<p>Update: 30s</p>|
|Oper status port FE12|<p>-</p>|`SNMP agent`|ifOperStatus.4227714<p>Update: 30s</p>|
|Oper status port FE13|<p>-</p>|`SNMP agent`|ifOperStatus.4227722<p>Update: 30s</p>|
|Oper status port FE14|<p>-</p>|`SNMP agent`|ifOperStatus.4227730<p>Update: 30s</p>|
|Oper status port FE15|<p>-</p>|`SNMP agent`|ifOperStatus.4227738<p>Update: 30s</p>|
|Oper status port FE16|<p>-</p>|`SNMP agent`|ifOperStatus.4227746<p>Update: 30s</p>|
|Oper status port FE17|<p>-</p>|`SNMP agent`|ifOperStatus.4227754<p>Update: 30s</p>|
|Oper status port FE18|<p>-</p>|`SNMP agent`|ifOperStatus.4227762<p>Update: 30s</p>|
|Oper status port FE19|<p>-</p>|`SNMP agent`|ifOperStatus.4227770<p>Update: 30s</p>|
|Oper status port FE20|<p>-</p>|`SNMP agent`|ifOperStatus.4227778<p>Update: 30s</p>|
|Oper status port FE21|<p>-</p>|`SNMP agent`|ifOperStatus.4227786<p>Update: 30s</p>|
|Oper status port FE22|<p>-</p>|`SNMP agent`|ifOperStatus.4227794<p>Update: 30s</p>|
|Oper status port FE23|<p>-</p>|`SNMP agent`|ifOperStatus.4227802<p>Update: 30s</p>|
|Oper status port FE24|<p>-</p>|`SNMP agent`|ifOperStatus.4227810<p>Update: 30s</p>|
|Oper status port GE1|<p>-</p>|`SNMP agent`|ifOperStatus.4228041<p>Update: 30s</p>|
|Oper status port GE2|<p>-</p>|`SNMP agent`|ifOperStatus.4228049<p>Update: 30s</p>|
|Oper status port GE3|<p>-</p>|`SNMP agent`|ifOperStatus.4228057<p>Update: 30s</p>|
|Oper status port GE4|<p>-</p>|`SNMP agent`|ifOperStatus.4228065<p>Update: 30s</p>|
|Errors TX port FE01|<p>-</p>|`SNMP agent`|ifOutErrors.4227626<p>Update: 30s</p>|
|Errors TX port FE02|<p>-</p>|`SNMP agent`|ifOutErrors.4227634<p>Update: 30s</p>|
|Errors TX port FE03|<p>-</p>|`SNMP agent`|ifOutErrors.4227642<p>Update: 30s</p>|
|Errors TX port FE04|<p>-</p>|`SNMP agent`|ifOutErrors.4227650<p>Update: 30s</p>|
|Errors TX port FE05|<p>-</p>|`SNMP agent`|ifOutErrors.4227658<p>Update: 30s</p>|
|Errors TX port FE06|<p>-</p>|`SNMP agent`|ifOutErrors.4227666<p>Update: 30s</p>|
|Errors TX port FE07|<p>-</p>|`SNMP agent`|ifOutErrors.4227674<p>Update: 30s</p>|
|Errors TX port FE08|<p>-</p>|`SNMP agent`|ifOutErrors.4227682<p>Update: 30s</p>|
|Errors TX port FE09|<p>-</p>|`SNMP agent`|ifOutErrors.4227690<p>Update: 30s</p>|
|Errors TX port FE10|<p>-</p>|`SNMP agent`|ifOutErrors.4227698<p>Update: 30s</p>|
|Errors TX port FE11|<p>-</p>|`SNMP agent`|ifOutErrors.4227706<p>Update: 30s</p>|
|Errors TX port FE12|<p>-</p>|`SNMP agent`|ifOutErrors.4227714<p>Update: 30s</p>|
|Errors TX port FE13|<p>-</p>|`SNMP agent`|ifOutErrors.4227722<p>Update: 30s</p>|
|Errors TX port FE14|<p>-</p>|`SNMP agent`|ifOutErrors.4227730<p>Update: 30s</p>|
|Errors TX port FE15|<p>-</p>|`SNMP agent`|ifOutErrors.4227738<p>Update: 30s</p>|
|Errors TX port FE16|<p>-</p>|`SNMP agent`|ifOutErrors.4227746<p>Update: 30s</p>|
|Errors TX port FE17|<p>-</p>|`SNMP agent`|ifOutErrors.4227754<p>Update: 30s</p>|
|Errors TX port FE18|<p>-</p>|`SNMP agent`|ifOutErrors.4227762<p>Update: 30s</p>|
|Errors TX port FE19|<p>-</p>|`SNMP agent`|ifOutErrors.4227770<p>Update: 30s</p>|
|Errors TX port FE20|<p>-</p>|`SNMP agent`|ifOutErrors.4227778<p>Update: 30s</p>|
|Errors TX port FE21|<p>-</p>|`SNMP agent`|ifOutErrors.4227786<p>Update: 30s</p>|
|Errors TX port FE22|<p>-</p>|`SNMP agent`|ifOutErrors.4227794<p>Update: 30s</p>|
|Errors TX port FE23|<p>-</p>|`SNMP agent`|ifOutErrors.4227802<p>Update: 30s</p>|
|Errors TX port FE24|<p>-</p>|`SNMP agent`|ifOutErrors.4227810<p>Update: 30s</p>|
|Errors TX port GE1|<p>-</p>|`SNMP agent`|ifOutErrors.4228041<p>Update: 30s</p>|
|Errors TX port GE2|<p>-</p>|`SNMP agent`|ifOutErrors.4228049<p>Update: 30s</p>|
|Errors TX port GE3|<p>-</p>|`SNMP agent`|ifOutErrors.4228057<p>Update: 30s</p>|
|Errors TX port GE4|<p>-</p>|`SNMP agent`|ifOutErrors.4228065<p>Update: 30s</p>|
|Bytes Tx FE01|<p>-</p>|`SNMP agent`|ifOutOctets.4227626<p>Update: 30s</p>|
|Bytes Tx FE02|<p>-</p>|`SNMP agent`|ifOutOctets.4227634<p>Update: 30s</p>|
|Bytes Tx FE03|<p>-</p>|`SNMP agent`|ifOutOctets.4227642<p>Update: 30s</p>|
|Bytes Tx FE04|<p>-</p>|`SNMP agent`|ifOutOctets.4227650<p>Update: 30s</p>|
|Bytes Tx FE05|<p>-</p>|`SNMP agent`|ifOutOctets.4227658<p>Update: 30s</p>|
|Bytes Tx FE06|<p>-</p>|`SNMP agent`|ifOutOctets.4227666<p>Update: 30s</p>|
|Bytes Tx FE07|<p>-</p>|`SNMP agent`|ifOutOctets.4227674<p>Update: 30s</p>|
|Bytes Tx FE08|<p>-</p>|`SNMP agent`|ifOutOctets.4227682<p>Update: 30s</p>|
|Bytes Tx FE09|<p>-</p>|`SNMP agent`|ifOutOctets.4227690<p>Update: 30s</p>|
|Bytes Tx FE10|<p>-</p>|`SNMP agent`|ifOutOctets.4227698<p>Update: 30s</p>|
|Bytes Tx FE11|<p>-</p>|`SNMP agent`|ifOutOctets.4227706<p>Update: 30s</p>|
|Bytes Tx FE12|<p>-</p>|`SNMP agent`|ifOutOctets.4227714<p>Update: 30s</p>|
|Bytes Tx FE13|<p>-</p>|`SNMP agent`|ifOutOctets.4227722<p>Update: 30s</p>|
|Bytes Tx FE14|<p>-</p>|`SNMP agent`|ifOutOctets.4227730<p>Update: 30s</p>|
|Bytes Tx FE15|<p>-</p>|`SNMP agent`|ifOutOctets.4227738<p>Update: 30s</p>|
|Bytes Tx FE16|<p>-</p>|`SNMP agent`|ifOutOctets.4227746<p>Update: 30s</p>|
|Bytes Tx FE17|<p>-</p>|`SNMP agent`|ifOutOctets.4227754<p>Update: 30s</p>|
|Bytes Tx FE18|<p>-</p>|`SNMP agent`|ifOutOctets.4227762<p>Update: 30s</p>|
|Bytes Tx FE19|<p>-</p>|`SNMP agent`|ifOutOctets.4227770<p>Update: 30s</p>|
|Bytes Tx FE20|<p>-</p>|`SNMP agent`|ifOutOctets.4227778<p>Update: 30s</p>|
|Bytes Tx FE21|<p>-</p>|`SNMP agent`|ifOutOctets.4227786<p>Update: 30s</p>|
|Bytes Tx FE22|<p>-</p>|`SNMP agent`|ifOutOctets.4227794<p>Update: 30s</p>|
|Bytes Tx FE23|<p>-</p>|`SNMP agent`|ifOutOctets.4227802<p>Update: 30s</p>|
|Bytes Tx FE24|<p>-</p>|`SNMP agent`|ifOutOctets.4227810<p>Update: 30s</p>|
|Bytes Tx GE1|<p>-</p>|`SNMP agent`|ifOutOctets.4228041<p>Update: 30s</p>|
|Bytes Tx GE2|<p>-</p>|`SNMP agent`|ifOutOctets.4228049<p>Update: 30s</p>|
|Bytes Tx GE3|<p>-</p>|`SNMP agent`|ifOutOctets.4228057<p>Update: 30s</p>|
|Bytes Tx GE4|<p>-</p>|`SNMP agent`|ifOutOctets.4228065<p>Update: 30s</p>|
|SysName|<p>-</p>|`SNMP agent`|iso.3.6.1.2.1.1.5.0<p>Update: 3600s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|CRC Errors Rx on port FE01|<p>-</p>|high|
|CRC Errors Rx on port FE02|<p>-</p>|high|
|CRC Errors Rx on port FE03|<p>-</p>|high|
|CRC Errors Rx on port FE04|<p>-</p>|high|
|CRC Errors Rx on port FE05|<p>-</p>|high|
|CRC Errors Rx on port FE06|<p>-</p>|high|
|CRC Errors Rx on port FE07|<p>-</p>|high|
|CRC Errors Rx on port FE08|<p>-</p>|high|
|CRC Errors Rx on port FE09|<p>-</p>|high|
|CRC Errors Rx on port FE10|<p>-</p>|high|
|CRC Errors Rx on port FE11|<p>-</p>|high|
|CRC Errors Rx on port FE12|<p>-</p>|high|
|CRC Errors Rx on port FE13|<p>-</p>|high|
|CRC Errors Rx on port FE14|<p>-</p>|high|
|CRC Errors Rx on port FE15|<p>-</p>|high|
|CRC Errors Rx on port FE16|<p>-</p>|high|
|CRC Errors Rx on port FE17|<p>-</p>|high|
|CRC Errors Rx on port FE18|<p>-</p>|high|
|CRC Errors Rx on port FE19|<p>-</p>|high|
|CRC Errors Rx on port FE20|<p>-</p>|high|
|CRC Errors Rx on port FE21|<p>-</p>|high|
|CRC Errors Rx on port FE22|<p>-</p>|high|
|CRC Errors Rx on port FE23|<p>-</p>|high|
|CRC Errors Rx on port FE24|<p>-</p>|high|
|CRC Errors Rx on port GE01|<p>-</p>|high|
|CRC Errors Rx on port GE02|<p>-</p>|high|
|CRC Errors Rx on port GE03|<p>-</p>|high|
|CRC Errors Rx on port GE04|<p>-</p>|high|
|CRC Errors Rx on port GE05|<p>-</p>|high|
|CRC Errors Rx on port GE06|<p>-</p>|high|
|CRC Errors Rx on port GE07|<p>-</p>|high|
|CRC Errors Rx on port GE08|<p>-</p>|high|
|CRC Errors Rx on port GE09|<p>-</p>|high|
|CRC Errors Rx on port GE1|<p>-</p>|high|
|CRC Errors Rx on port GE2|<p>-</p>|high|
|CRC Errors Rx on port GE3|<p>-</p>|high|
|CRC Errors Rx on port GE4|<p>-</p>|high|
|CRC Errors Rx on port GE10|<p>-</p>|high|
|CRC Errors Rx on port GE11|<p>-</p>|high|
|CRC Errors Rx on port GE12|<p>-</p>|high|
|CRC Errors Rx on port GE13|<p>-</p>|high|
|CRC Errors Rx on port GE14|<p>-</p>|high|
|CRC Errors Rx on port GE15|<p>-</p>|high|
|CRC Errors Rx on port GE16|<p>-</p>|high|
|CRC Errors Rx on port GE17|<p>-</p>|high|
|CRC Errors Rx on port GE18|<p>-</p>|high|
|CRC Errors Rx on port GE19|<p>-</p>|high|
|CRC Errors Rx on port GE20|<p>-</p>|high|
|CRC Errors Rx on port GE21|<p>-</p>|high|
|CRC Errors Rx on port GE22|<p>-</p>|high|
|CRC Errors Rx on port GE23|<p>-</p>|high|
|CRC Errors Rx on port GE24|<p>-</p>|high|
|CRC Errors Tx on port FE01|<p>-</p>|high|
|CRC Errors Tx on port FE02|<p>-</p>|high|
|CRC Errors Tx on port FE03|<p>-</p>|high|
|CRC Errors Tx on port FE04|<p>-</p>|high|
|CRC Errors Tx on port FE05|<p>-</p>|high|
|CRC Errors Tx on port FE06|<p>-</p>|high|
|CRC Errors Tx on port FE07|<p>-</p>|high|
|CRC Errors Tx on port FE08|<p>-</p>|high|
|CRC Errors Tx on port FE09|<p>-</p>|high|
|CRC Errors Tx on port FE10|<p>-</p>|high|
|CRC Errors Tx on port FE11|<p>-</p>|high|
|CRC Errors Tx on port FE12|<p>-</p>|high|
|CRC Errors Tx on port FE13|<p>-</p>|high|
|CRC Errors Tx on port FE14|<p>-</p>|high|
|CRC Errors Tx on port FE15|<p>-</p>|high|
|CRC Errors Tx on port FE16|<p>-</p>|high|
|CRC Errors Tx on port FE17|<p>-</p>|high|
|CRC Errors Tx on port FE18|<p>-</p>|high|
|CRC Errors Tx on port FE19|<p>-</p>|high|
|CRC Errors Tx on port FE20|<p>-</p>|high|
|CRC Errors Tx on port FE21|<p>-</p>|high|
|CRC Errors Tx on port FE22|<p>-</p>|high|
|CRC Errors Tx on port FE23|<p>-</p>|high|
|CRC Errors Tx on port FE24|<p>-</p>|high|
|CRC Errors Tx on port GE01|<p>-</p>|high|
|CRC Errors Tx on port GE02|<p>-</p>|high|
|CRC Errors Tx on port GE03|<p>-</p>|high|
|CRC Errors Tx on port GE04|<p>-</p>|high|
|CRC Errors Tx on port GE05|<p>-</p>|high|
|CRC Errors Tx on port GE06|<p>-</p>|high|
|CRC Errors Tx on port GE07|<p>-</p>|high|
|CRC Errors Tx on port GE08|<p>-</p>|high|
|CRC Errors Tx on port GE09|<p>-</p>|high|
|CRC Errors Tx on port GE1|<p>-</p>|high|
|CRC Errors Tx on port GE2|<p>-</p>|high|
|CRC Errors Tx on port GE3|<p>-</p>|high|
|CRC Errors Tx on port GE4|<p>-</p>|high|
|CRC Errors Tx on port GE10|<p>-</p>|high|
|CRC Errors Tx on port GE11|<p>-</p>|high|
|CRC Errors Tx on port GE12|<p>-</p>|high|
|CRC Errors Tx on port GE13|<p>-</p>|high|
|CRC Errors Tx on port GE14|<p>-</p>|high|
|CRC Errors Tx on port GE15|<p>-</p>|high|
|CRC Errors Tx on port GE16|<p>-</p>|high|
|CRC Errors Tx on port GE17|<p>-</p>|high|
|CRC Errors Tx on port GE18|<p>-</p>|high|
|CRC Errors Tx on port GE19|<p>-</p>|high|
|CRC Errors Tx on port GE20|<p>-</p>|high|
|CRC Errors Tx on port GE21|<p>-</p>|high|
|CRC Errors Tx on port GE22|<p>-</p>|high|
|CRC Errors Tx on port GE23|<p>-</p>|high|
|CRC Errors Tx on port GE24|<p>-</p>|high|
|Port FE01 status down on {HOSTNAME}|<p>-</p>|information|
|Port FE02 status down on {HOSTNAME}|<p>-</p>|information|
|Port FE03 status down on {HOSTNAME}|<p>-</p>|information|
|Port FE04 status down on {HOSTNAME}|<p>-</p>|information|
|Port FE05 status down on {HOSTNAME}|<p>-</p>|information|
|Port FE06 status down on {HOSTNAME}|<p>-</p>|information|
|Port FE07 status down on {HOSTNAME}|<p>-</p>|information|
|Port FE08 status down on {HOSTNAME}|<p>-</p>|information|
|Port FE09 status down on {HOSTNAME}|<p>-</p>|information|
|Port FE10 status down on {HOSTNAME}|<p>-</p>|information|
|Port FE11 status down on {HOSTNAME}|<p>-</p>|information|
|Port FE12 status down on {HOSTNAME}|<p>-</p>|information|
|Port FE13 status down on {HOSTNAME}|<p>-</p>|information|
|Port FE14 status down on {HOSTNAME}|<p>-</p>|information|
|Port FE15 status down on {HOSTNAME}|<p>-</p>|information|
|Port FE16 status down on {HOSTNAME}|<p>-</p>|information|
|Port FE17 status down on {HOSTNAME}|<p>-</p>|information|
|Port FE18 status down on {HOSTNAME}|<p>-</p>|information|
|Port FE19 status down on {HOSTNAME}|<p>-</p>|information|
|Port FE20 status down on {HOSTNAME}|<p>-</p>|information|
|Port FE21 status down on {HOSTNAME}|<p>-</p>|information|
|Port FE22 status down on {HOSTNAME}|<p>-</p>|information|
|Port FE23 status down on {HOSTNAME}|<p>-</p>|information|
|Port FE24 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE01 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE02 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE03 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE04 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE05 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE06 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE07 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE08 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE09 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE1 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE2 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE3 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE4 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE10 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE11 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE12 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE13 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE14 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE15 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE16 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE17 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE18 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE19 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE20 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE21 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE22 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE23 status down on {HOSTNAME}|<p>-</p>|information|
|Port GE24 status down on {HOSTNAME}|<p>-</p>|information|
|{HOSTNAME} has just been restarted|<p>-</p>|average|
