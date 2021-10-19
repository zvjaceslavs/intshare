# 3par

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
|LLD Json 3parVV data|<p>-</p>|`Zabbix agent`|3parVVCheck<p>Update: 1h</p>|
|LLD Json 3parVlun data|<p>-</p>|`Zabbix agent`|StatVlunCheck<p>Update: 30m</p>|
|LLD Json 3parDisk data|<p>-</p>|`Zabbix agent`|3parPDCheck<p>Update: 30m</p>|
|LLD Json 3parPortCheck data|<p>-</p>|`Zabbix agent`|3parPortCheck<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|3par Json StatLink|<p>-</p>|`Zabbix agent`|StatLinkNew<p>Update: 90s</p>|
|3par Json PortsData|<p>-</p>|`Zabbix agent`|3parPortsData<p>Update: 1m</p>|
|3par Json VVData|<p>-</p>|`Zabbix agent`|3parVVData<p>Update: 1m</p>|
|3par Json StatVV|<p>-</p>|`Zabbix agent`|StatVVNew<p>Update: 15s</p>|
|3par Json StatPort|<p>-</p>|`Zabbix agent`|StatPortNew<p>Update: 15s</p>|
|3par Json PDdata|<p>-</p>|`Zabbix agent`|3parPDData<p>Update: 1m</p>|
|3par Json StatPD|<p>-</p>|`Zabbix agent`|StatPDNew<p>Update: 30s</p>|
|3par Json StatVlun|<p>-</p>|`Zabbix agent`|StatVlunNew<p>Update: 15s</p>|
|3parVV B/s {#ID} {#PROV} {#NAME}|<p>-</p>|`Dependent item`|3parVVB["{#ID}","{#PROV}","{#NAME}"]<p>Update: 0</p>|
|3parVV IO/s {#ID} {#PROV} {#NAME}|<p>-</p>|`Dependent item`|3parVVIO["{#ID}","{#PROV}","{#NAME}"]<p>Update: 0</p>|
|3parVV STATE {#ID} {#PROV} {#NAME}|<p>-</p>|`Dependent item`|3parVVSTATE["{#ID}","{#PROV}","{#NAME}"]<p>Update: 0</p>|
|3parVV TOTAL B {#ID} {#PROV} {#NAME}|<p>-</p>|`Dependent item`|3parVVTOTALB["{#ID}","{#PROV}","{#NAME}"]<p>Update: 0</p>|
|3parVV USED B {#ID} {#PROV} {#NAME}|<p>-</p>|`Dependent item`|3parVVUSEDB["{#ID}","{#PROV}","{#NAME}"]<p>Update: 0</p>|
|3parVLun B/s {#NAMEVLUN}|<p>-</p>|`Dependent item`|3parVLunB["{#NAMEVLUN}"]<p>Update: 0</p>|
|3parVLun IO/s {#NAMEVLUN}|<p>-</p>|`Dependent item`|3parVLunIO["{#NAMEVLUN}"]<p>Update: 0</p>|
|3parDisk FREE B {#RPM}K {#TYPE} {#DISKID} {#CAGEPOS}|<p>-</p>|`Dependent item`|3parDiskFREEB["{#DISKID}","{#CAGEPOS}"]<p>Update: 0</p>|
|3parDisk STATE {#RPM}K {#TYPE} {#DISKID} {#CAGEPOS}|<p>-</p>|`Dependent item`|3parDiskSTATE["{#DISKID}","{#CAGEPOS}"]<p>Update: 0</p>|
|3parDisk TOTAL B {#RPM}K {#TYPE} {#DISKID} {#CAGEPOS}|<p>-</p>|`Dependent item`|3parDiskTOTALB["{#DISKID}","{#CAGEPOS}"]<p>Update: 0</p>|
|3parDisk IO/s {#RPM}K {#TYPE} {#DISKID} {#CAGEPOS}|<p>-</p>|`Dependent item`|3pardisk["{#DISKID}","{#CAGEPOS}","IOCur"]<p>Update: 0</p>|
|3parDisk B/s {#RPM}K {#TYPE} {#DISKID} {#CAGEPOS}|<p>-</p>|`Dependent item`|3pardisk["{#DISKID}","{#CAGEPOS}","KBCur"]<p>Update: 0</p>|
|3parPort B/s {#PROTOCOL} {#DEVICE} {#LABEL}|<p>-</p>|`Dependent item`|3parPortB["{#DEVICE}"]<p>Update: 0</p>|
|3parPort IOSzCur {#PROTOCOL} {#DEVICE} {#LABEL}|<p>-</p>|`Dependent item`|3parPortIOSzCur["{#DEVICE}"]<p>Update: 0</p>|
|3parPort IO/s {#PROTOCOL} {#DEVICE} {#LABEL}|<p>-</p>|`Dependent item`|3parPortIO["{#DEVICE}"]<p>Update: 0</p>|
|3parPort STATE {#PROTOCOL} {#DEVICE} {#LABEL} Port {#PORTWWN} Node {#NODEWWN}|<p>-</p>|`Dependent item`|3parPortSTATE["{#PROTOCOL}","{#DEVICE}","{#LABEL}","{#PORTWWN}"]<p>Update: 0</p>|
|3parPort SvtCur {#PROTOCOL} {#DEVICE} {#LABEL}|<p>-</p>|`Dependent item`|3parPortSvtCur["{#DEVICE}"]<p>Update: 0</p>|
|3parPort TYPE {#PROTOCOL} {#DEVICE} {#LABEL} Port {#PORTWWN} Node {#NODEWWN}|<p>-</p>|`Dependent item`|3parPortTYPE["{#PROTOCOL}","{#DEVICE}","{#LABEL}","{#PORTWWN}"]<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|3parVVSTATE {#ID} {#PROV} {#NAME} Warning not normal|<p>-</p>|disaster|
|3parDisk STATE {#DISKID} {#CAGEPOS} Проверь срочно диск!!!|<p>-</p>|not classified|
|3parPort Статус {#PROTOCOL} {#DEVICE} {#LABEL} {#PORTWWN} не готов. СРОЧНО ПРОВЕРИТЬ!!!|<p>-</p>|disaster|
|3parPort Тип {#PROTOCOL} {#DEVICE} {#LABEL} {#PORTWWN} в статусе Free. СРОЧНО ПЕРЕПРОВЕРИТЬ!!!|<p>-</p>|disaster|
