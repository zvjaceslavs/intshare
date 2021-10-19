# Template Virt VMware

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
|Discover VMware VMs|<p>Discovery of guest virtual machines.</p>|`Simple check`|vmware.vm.discovery[{$URL}]<p>Update: 3600</p>|
|Discover VMware clusters|<p>Discovery of clusters</p>|`Simple check`|vmware.cluster.discovery[{$URL}]<p>Update: 3600</p>|
|Discover VMware hypervisors|<p>Discovery of hypervisors.</p>|`Simple check`|vmware.hv.discovery[{$URL}]<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Full name|<p>-</p>|`Simple check`|vmware.fullname[{$URL}]<p>Update: 3600</p>|
|Version|<p>-</p>|`Simple check`|vmware.version[{$URL}]<p>Update: 3600</p>|
|Event log|<p>-</p>|`Simple check`|vmware.eventlog[{$URL}]<p>Update: 60</p>|
|Status of "$2" cluster|<p>-</p>|`Simple check`|vmware.cluster.status[{$URL},{#CLUSTER.NAME}]<p>Update: 60</p>|
## Triggers

There are no triggers in this template.

