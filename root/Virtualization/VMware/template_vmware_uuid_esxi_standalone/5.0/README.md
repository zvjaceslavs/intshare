# Template VM VMware UUID ESXi Standalone

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$PASSWORD}|<p>-</p>|``|Text macro|
|{$URL}|<p>-</p>|`https://{ESXi}/sdk`|Text macro|
|{$USERNAME}|<p>-</p>|`zabbix`|Text macro|
|{$UUID}|<p>-</p>|``|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Datastore discovery|<p>-</p>|`Simple check`|vmware.hv.datastore.discovery[{$URL},{$UUID}]<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Number of guest VMs|<p>Number of guest virtual machines.</p>|`Simple check`|vmware.hv.vm.num[{$URL},{$UUID}]<p>Update: 1h</p>|
|Number of bytes transmitted|<p>-</p>|`Simple check`|vmware.hv.network.out[{$URL},{$UUID},bps]<p>Update: 1m</p>|
|CPU usage|<p>Aggregated CPU usage across all cores on the host in Hz. This is only available if the host is connected.</p>|`Simple check`|vmware.hv.cpu.usage[{$URL},{$UUID}]<p>Update: 1m</p>|
|CPU frequency|<p>The speed of the CPU cores. This is an average value if there are multiple speeds. The product of CPU frequency and number of cores is approximately equal to the sum of the MHz for all the individual cores on the host.</p>|`Simple check`|vmware.hv.hw.cpu.freq[{$URL},{$UUID}]<p>Update: 1h</p>|
|Total memory|<p>The physical memory size.</p>|`Simple check`|vmware.hv.hw.memory[{$URL},{$UUID}]<p>Update: 1h</p>|
|Full name|<p>The complete product name, including the version information.</p>|`Simple check`|vmware.hv.fullname[{$URL},{$UUID}]<p>Update: 1h</p>|
|CPU model|<p>The CPU model.</p>|`Simple check`|vmware.hv.hw.cpu.model[{$URL},{$UUID}]<p>Update: 1h</p>|
|Uptime|<p>System uptime.</p>|`Simple check`|vmware.hv.uptime[{$URL},{$UUID}]<p>Update: 1h</p>|
|Cluster name|<p>Cluster name of the guest VM.</p>|`Simple check`|vmware.hv.cluster.name[{$URL},{$UUID}]<p>Update: 1h</p>|
|Number of bytes received|<p>-</p>|`Simple check`|vmware.hv.network.in[{$URL},{$UUID},bps]<p>Update: 1m</p>|
|CPU threads|<p>Number of physical CPU threads on the host.</p>|`Simple check`|vmware.hv.hw.cpu.threads[{$URL},{$UUID}]<p>Update: 1h</p>|
|Vendor|<p>The hardware vendor identification.</p>|`Simple check`|vmware.hv.hw.vendor[{$URL},{$UUID}]<p>Update: 1h</p>|
|Version|<p>Dot-separated version string.</p>|`Simple check`|vmware.hv.version[{$URL},{$UUID}]<p>Update: 1h</p>|
|Event log|<p>-</p>|`Simple check`|vmware.eventlog[{$URL}]<p>Update: 1m</p>|
|Overall status|<p>The overall alarm status of the host: gray - unknown, ok, red - it has a problem, yellow - it might have a problem.</p>|`Simple check`|vmware.hv.status[{$URL},{$UUID}]<p>Update: 1m</p>|
|Bios UUID|<p>The hardware BIOS identification.</p>|`Simple check`|vmware.hv.hw.uuid[{$URL},{$UUID}]<p>Update: 1h</p>|
|Used memory|<p>Physical memory usage on the host.</p>|`Simple check`|vmware.hv.memory.used[{$URL},{$UUID}]<p>Update: 1m</p>|
|Datacenter name|<p>Datacenter name of the hypervisor.</p>|`Simple check`|vmware.hv.datacenter.name[{$URL},{$UUID}]<p>Update: 1m</p>|
|Model|<p>The system model identification.</p>|`Simple check`|vmware.hv.hw.model[{$URL},{$UUID}]<p>Update: 1h</p>|
|CPU cores|<p>Number of physical CPU cores on the host. Physical CPU cores are the processors contained by a CPU package.</p>|`Simple check`|vmware.hv.hw.cpu.num[{$URL},{$UUID}]<p>Update: 1h</p>|
|Ballooned memory|<p>The amount of guest physical memory that is currently reclaimed through the balloon driver. Sum of all guest VMs.</p>|`Simple check`|vmware.hv.memory.size.ballooned[{$URL},{$UUID}]<p>Update: 1m</p>|
|Health state rollup|<p>The host health state rollup sensor value: gray - unknown, ok, red - it has a problem, yellow - it might have a problem.</p>|`Simple check`|vmware.hv.sensor.health.state[{$URL},{$UUID}]<p>Update: 1m</p>|
|Average read latency of the datastore $3|<p>-</p>|`Simple check`|vmware.hv.datastore.read[{$URL},{$UUID},{#DATASTORE},latency]<p>Update: 1m</p>|
|Free space on datastore $3 (percentage)|<p>-</p>|`Simple check`|vmware.hv.datastore.size[{$URL},{$UUID},{#DATASTORE},pfree]<p>Update: 1m</p>|
|Total size of datastore $3|<p>-</p>|`Simple check`|vmware.hv.datastore.size[{$URL},{$UUID},{#DATASTORE}]<p>Update: 1m</p>|
|Average write latency of the datastore $3|<p>-</p>|`Simple check`|vmware.hv.datastore.write[{$URL},{$UUID},{#DATASTORE},latency]<p>Update: 1m</p>|
## Triggers

There are no triggers in this template.

