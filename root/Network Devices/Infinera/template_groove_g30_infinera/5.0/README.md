# Groove-G30 Infinera

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

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Groove-ochOsPreFecBer|<p>-</p>|`SNMP agent`|ochOsPreFecBer<p>Update: 30s</p>|
|OmsTX-RX Optical Power|<p>omsAliasName {#MACRO1} omsTxOpticalPower {#MACRO2} omsRxOpticalPower {#MACRO3}</p>|`SNMP agent`|OmsTX-RX<p>Update: 30s</p>|
|Groove-Shelf-Temperature|<p>#MACRO1 : shelfInletTemperature #MACRO2 : shelfOutletTemperature</p>|`SNMP agent`|Shelf-Temperature<p>Update: 30s</p>|
|Groove-Q-Factor-Table|<p>qFactorInstant {#MACRO1} qFactorAvg {#MACRO2} qFactorMin {#MACRO3} qFactorMax {#MACRO4}</p>|`SNMP agent`|qFactorEntry<p>Update: 30s</p>|
|Groove-Osnr-Table|<p>osnrInstant - {#MACRO1} osnrAvg - {#MACRO2} osnrMin - {#MACRO3} osnrMax - {#MACRO4}</p>|`SNMP agent`|osnrTable<p>Update: 30s</p>|
|Port Tx Rx Optical Power|<p>portName {#MACRO1} portRxOpticalPower {#MACRO2} portTxOpticalPower {#MACRO3}</p>|`SNMP agent`|Port-Tx-Rx<p>Update: 30s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Groove-ochOsPreFecBer - {#MACRO1}|<p>-</p>|`SNMP agent`|ochOsPreFecBer[{#SNMPINDEX}]<p>Update: 30s</p>|
|Groove-omsRxOpticalPower: {#MACRO3}|<p>-</p>|`SNMP agent`|omsRxOpticalPower[{#SNMPINDEX}]<p>Update: 30s</p>|
|Groove-omsTxOpticalPower: {#MACRO2}|<p>-</p>|`SNMP agent`|omsTxOpticalPower[{#SNMPINDEX}]<p>Update: 30s</p>|
|Temperature: {#MACRO1}|<p>-</p>|`SNMP agent`|shelfInletTemperature[{#SNMPINDEX}]<p>Update: 30s</p>|
|Temperature: {#MACRO2}|<p>-</p>|`SNMP agent`|shelfOutletTemperature[{#SNMPINDEX}]<p>Update: 30s</p>|
|Groove-qFactorAvg|<p>-</p>|`SNMP agent`|qFactorAvg[{#SNMPINDEX}]<p>Update: 30s</p>|
|Groove-qFactorInstant|<p>-</p>|`SNMP agent`|qFactorInstant[{#SNMPINDEX}]<p>Update: 30s</p>|
|Groove-qFactorMax|<p>-</p>|`SNMP agent`|qFactorMax[{#SNMPINDEX}]<p>Update: 30s</p>|
|Groove-qFactorMin|<p>-</p>|`SNMP agent`|qFactorMin[{#SNMPINDEX}]<p>Update: 30s</p>|
|Groove-osnrAvg: {#MACRO2}|<p>-</p>|`SNMP agent`|osnrAvg[{#SNMPINDEX}]<p>Update: 30s</p>|
|Groove-osnrInstant: {#MACRO1}|<p>-</p>|`SNMP agent`|osnrInstant[{#SNMPINDEX}]<p>Update: 30s</p>|
|Groove-osnrMax: {#MACRO4}|<p>-</p>|`SNMP agent`|osnrMax[{#SNMPINDEX}]<p>Update: 30s</p>|
|Groove-osnrMin: {#MACRO3}|<p>-</p>|`SNMP agent`|osnrMin[{#SNMPINDEX}]<p>Update: 30s</p>|
|Groove-Port-RxOpticalPower: {#MACRO2}|<p>-</p>|`SNMP agent`|PortRxOpticalPower[{#SNMPINDEX}]<p>Update: 30s</p>|
|Groove-Port-TxOpticalPower: {#MACRO3}|<p>-</p>|`SNMP agent`|PortTxOpticalPower[{#SNMPINDEX}]<p>Update: 30s</p>|
## Triggers

There are no triggers in this template.

