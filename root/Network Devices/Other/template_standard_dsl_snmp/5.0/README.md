# Template SNMP ADSL Stats

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
|DSL Downstream SNR|<p>-</p>|`SNMP agent`|DSL-DS-SNR<p>Update: 60</p>|
|DSL Upstream Errors - Loss Of Signal|<p>-</p>|`SNMP agent`|DSL-USErr-LOSS<p>Update: 60</p>|
|DSL Upstream Bitrate Maximum|<p>-</p>|`SNMP agent`|DSL-US-BRM<p>Update: 60</p>|
|DSL Upstream Errors - Loss Of Framing|<p>-</p>|`SNMP agent`|DSL-USErr-LOFS<p>Update: 60</p>|
|DSL Downstream Errors - Loss Of Framing|<p>-</p>|`SNMP agent`|DSL-DSErr-LOFS<p>Update: 60</p>|
|DSL Downstream Errors - Loss Of Signal|<p>-</p>|`SNMP agent`|DSL-DSErr-LOSS<p>Update: 60</p>|
|DSL Upstream Stat - Errorred Seconds|<p>-</p>|`SNMP agent`|DSL-USStat-ESs<p>Update: 60</p>|
|DSL Downstream Bitrate Maximum|<p>-</p>|`SNMP agent`|DSL-DS-BRM<p>Update: 60</p>|
|DSL Upstream Stat - Total Corrected Blocks|<p>-</p>|`SNMP agent`|DSL-USStat-CorrectedBlks<p>Update: 60</p>|
|DSL Upstream Stat - Total Uncorrected Blocks|<p>-</p>|`SNMP agent`|DSL-USStat-UncorrectedBlks<p>Update: 60</p>|
|DSL Downstream Bitrate Current|<p>-</p>|`SNMP agent`|DSL-DS-BRC<p>Update: 60</p>|
|DSL Downstream Errors - Loss Of Power|<p>-</p>|`SNMP agent`|DSL-DSErr-LPRS<p>Update: 60</p>|
|DSL Upstream Errors - Loss Of Power|<p>-</p>|`SNMP agent`|DSL-USErr-LPRS<p>Update: 60</p>|
|DSL Upstream Output Power|<p>-</p>|`SNMP agent`|DSL-US-Pwr<p>Update: 60</p>|
|DSL Upstream Attenuation|<p>-</p>|`SNMP agent`|DSL-US-Aten<p>Update: 60</p>|
|DSL Upstream SNR|<p>-</p>|`SNMP agent`|DSL-US-SNR<p>Update: 60</p>|
|DSL Upstream Bitrate Current|<p>-</p>|`SNMP agent`|DSL-US-BRC<p>Update: 60</p>|
|DSL Downstream Stat - Uncorrected Blocks|<p>-</p>|`SNMP agent`|DSL-DSStat-UncorrectedBlks<p>Update: 60</p>|
|DSL Downstream Stat - Line Sync Attempts|<p>-</p>|`SNMP agent`|DSL-DSStat-PerfInits<p>Update: 60</p>|
|DSL Downstream Stat - Corrected Blocks|<p>-</p>|`SNMP agent`|DSL-DSStat-CorrectedBlks<p>Update: 60</p>|
|DSL Downstream Output Power|<p>-</p>|`SNMP agent`|DSL-DS-Pwr<p>Update: 60</p>|
|DSL Downstream Stat - Errorred Seconds|<p>-</p>|`SNMP agent`|DSL-DSStat-ESs<p>Update: 60</p>|
|DSL Downstream Attenuation|<p>-</p>|`SNMP agent`|DSL-DS-Aten<p>Update: 60</p>|
## Triggers

There are no triggers in this template.

