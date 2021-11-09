# Virt VMware Hypervisor

## Overview

Official VMware Hypervisor Template from Zabbix distribution



## Author

Zabbix SIA

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Datastore discovery|<p>-</p>|`Simple check`|vmware.hv.datastore.discovery[{$URL},{HOST.HOST}]<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|CPU usage|<p>Aggregated CPU usage across all cores on the host in Hz. This is only available if the host is connected.</p>|`Simple check`|vmware.hv.cpu.usage[{$URL},{HOST.HOST}]<p>Update: 60</p>|
|CPU cores|<p>Number of physical CPU cores on the host. Physical CPU cores are the processors contained by a CPU package.</p>|`Simple check`|vmware.hv.hw.cpu.num[{$URL},{HOST.HOST}]<p>Update: 3600</p>|
|Number of bytes transmitted|<p>-</p>|`Simple check`|vmware.hv.network.out[{$URL},{HOST.HOST},bps]<p>Update: 60</p>|
|Number of bytes received|<p>-</p>|`Simple check`|vmware.hv.network.in[{$URL},{HOST.HOST},bps]<p>Update: 60</p>|
|Used memory|<p>Physical memory usage on the host.</p>|`Simple check`|vmware.hv.memory.used[{$URL},{HOST.HOST}]<p>Update: 60</p>|
|Full name|<p>The complete product name, including the version information.</p>|`Simple check`|vmware.hv.fullname[{$URL},{HOST.HOST}]<p>Update: 3600</p>|
|CPU threads|<p>Number of physical CPU threads on the host.</p>|`Simple check`|vmware.hv.hw.cpu.threads[{$URL},{HOST.HOST}]<p>Update: 3600</p>|
|CPU model|<p>The CPU model.</p>|`Simple check`|vmware.hv.hw.cpu.model[{$URL},{HOST.HOST}]<p>Update: 3600</p>|
|Cluster name|<p>Cluster name of the guest VM.</p>|`Simple check`|vmware.hv.cluster.name[{$URL},{HOST.HOST}]<p>Update: 3600</p>|
|Model|<p>The system model identification.</p>|`Simple check`|vmware.hv.hw.model[{$URL},{HOST.HOST}]<p>Update: 3600</p>|
|Number of guest VMs|<p>Number of guest virtual machines.</p>|`Simple check`|vmware.hv.vm.num[{$URL},{HOST.HOST}]<p>Update: 3600</p>|
|Ballooned memory|<p>The amount of guest physical memory that is currently reclaimed through the balloon driver. Sum of all guest VMs.</p>|`Simple check`|vmware.hv.memory.size.ballooned[{$URL},{HOST.HOST}]<p>Update: 60</p>|
|Overall status|<p>The overall alarm status of the host: gray - unknown, ok, red - it has a problem, yellow - it might have a problem.</p>|`Simple check`|vmware.hv.status[{$URL},{HOST.HOST}]<p>Update: 60</p>|
|Vendor|<p>The hardware vendor identification.</p>|`Simple check`|vmware.hv.hw.vendor[{$URL},{HOST.HOST}]<p>Update: 3600</p>|
|CPU frequency|<p>The speed of the CPU cores. This is an average value if there are multiple speeds. The product of CPU frequency and number of cores is approximately equal to the sum of the MHz for all the individual cores on the host.</p>|`Simple check`|vmware.hv.hw.cpu.freq[{$URL},{HOST.HOST}]<p>Update: 3600</p>|
|Total memory|<p>The physical memory size.</p>|`Simple check`|vmware.hv.hw.memory[{$URL},{HOST.HOST}]<p>Update: 3600</p>|
|Uptime|<p>System uptime.</p>|`Simple check`|vmware.hv.uptime[{$URL},{HOST.HOST}]<p>Update: 3600</p>|
|Version|<p>Dot-separated version string.</p>|`Simple check`|vmware.hv.version[{$URL},{HOST.HOST}]<p>Update: 3600</p>|
|Bios UUID|<p>The hardware BIOS identification.</p>|`Simple check`|vmware.hv.hw.uuid[{$URL},{HOST.HOST}]<p>Update: 3600</p>|
|Average read latency of the datastore $3|<p>-</p>|`Simple check`|vmware.hv.datastore.read[{$URL},{HOST.HOST},{#DATASTORE},latency]<p>Update: 60</p><p>LLD</p>|
|Average write latency of the datastore $3|<p>-</p>|`Simple check`|vmware.hv.datastore.write[{$URL},{HOST.HOST},{#DATASTORE},latency]<p>Update: 60</p><p>LLD</p>|
## Triggers

There are no triggers in this template.

