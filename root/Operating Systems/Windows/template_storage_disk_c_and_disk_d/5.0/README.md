# Storage

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
|Disc D: Free space GB|<p>-</p>|`Calculated`|DiscDFreeSpace<p>Update: 60s</p>|
|Disc D: Total space GB|<p>-</p>|`Calculated`|DiscDTotalspaceGB<p>Update: 60s</p>|
|Disc D: Used space|<p>-</p>|`SNMP agent`|DiscDUsedspace<p>Update: 60s</p>|
|Disc C: Used space GB|<p>-</p>|`Calculated`|DiscCUsedspaceGB<p>Update: 60s</p>|
|Disc C: module|<p>-</p>|`SNMP agent`|Cmodule<p>Update: 60s</p>|
|Disc C: Free space GB|<p>-</p>|`Calculated`|DiscCFreeSpace<p>Update: 60s</p>|
|Disc C: Total space GB|<p>-</p>|`Calculated`|DiscCTotalspaceGB<p>Update: 60s</p>|
|Disc D: Used space GB|<p>-</p>|`Calculated`|DiscDUsedspaceGB<p>Update: 60s</p>|
|Disc C: Used space|<p>-</p>|`SNMP agent`|DiscCUsedspace<p>Update: 60s</p>|
|Disc C: Total space|<p>-</p>|`SNMP agent`|DiscCTotalspace<p>Update: 60s</p>|
|Disc D: module|<p>-</p>|`SNMP agent`|Dmodule<p>Update: 60s</p>|
|Disc D: Total space|<p>-</p>|`SNMP agent`|DiscDTotalspace<p>Update: 60s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Дисковое пространство критически низкое. Диск C: {ITEM.LASTVALUE1} Диск D: {ITEM.LASTVALUE3}|<p>Disk C: Last free value: {ITEM.LASTVALUE1} Disk D: Last free value: {ITEM.LASTVALUE3}</p>|high|
|Недостаточно места на диске. Диск C: {ITEM.LASTVALUE1} Диск D: {ITEM.LASTVALUE3}|<p>Disk C: Last value: {ITEM.LASTVALUE1} Disk D: Last value: {ITEM2.LASTVALUE3}</p>|warning|
