# Asigra Backup SNMP Traps

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
|Asigra Backup Failed - SNMP Traps|<p>-</p>|`SNMP trap`|snmptrap["SNMPv2-SMI::enterprises.15538.1.1.0.3"]<p>Update: 0</p>|
|Asigra Backup Completed with Errors - SNMP Traps|<p>-</p>|`SNMP trap`|snmptrap["SNMPv2-SMI::enterprises.15538.1.1.0.2"]<p>Update: 0</p>|
|Asigra Backup Completed - SNMP Traps|<p>-</p>|`SNMP trap`|snmptrap["SNMPv2-SMI::enterprises.15538.1.1.0.1"]<p>Update: 0</p>|
|Asigra Backup Completed with Warnings - SNMP Traps|<p>-</p>|`SNMP trap`|snmptrap["SNMPv2-SMI::enterprises.15538.1.1.0.11"]<p>Update: 0</p>|
|Asigra Backup Found Bulk Insert Failure - SNMP Traps|<p>-</p>|`SNMP trap`|snmptrap["SNMPv2-SMI::enterprises.15538.1.1.0.4"]<p>Update: 0</p>|
|Asigra Backup Client is running on low database Space - SNMP Traps|<p>-</p>|`SNMP trap`|snmptrap["SNMPv2-SMI::enterprises.15538.1.1.0.6"]<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Asigra Backup Completed with Errors|<p>This alert is not auto recovering and can be manually close. Please report the problem to Infra team before manually closing the alert.</p>|warning|
|Asigra Backup Failed|<p>This alert is not auto recovering and can be manually close. Please report the problem to Infra team before manually closing the alert.</p>|warning|
|Asigra Backup Found Bulk Insert Failure|<p>This alert is not auto recovering and can be manually close. Please report the problem to Infra team before manually closing the alert.</p>|warning|
|Asigra Backup Client is running on low database Space|<p>This alert is not auto recovering and can be manually close. Please report the problem to Infra team before manually closing the alert.</p>|warning|
|Asigra Backup Completed with Warnings|<p>This alert is not auto recovering and can be manually close. Please report the problem to Infra team before manually closing the alert.</p>|warning|
