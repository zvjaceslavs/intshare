# Virt VMware Guest

## Description

## Overview Official VMware Guest Template from Zabbix distribution ## Author Zabbix SIA 

## Overview

Official VMware Guest Template from Zabbix distribution



## Author

Zabbix SIA

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Network device discovery|<p>Discovery of all network devices.</p>|`Simple check`|vmware.vm.net.if.discovery[{$URL},{HOST.HOST}]<p>Update: 3600</p>|
|Disk device discovery|<p>Discovery of all disk devices.</p>|`Simple check`|vmware.vm.vfs.dev.discovery[{$URL},{HOST.HOST}]<p>Update: 3600</p>|
|Mounted filesystem discovery|<p>Discovery of all guest file systems.</p>|`Simple check`|vmware.vm.vfs.fs.discovery[{$URL},{HOST.HOST}]<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Memory size|<p>Total size of configured memory.</p>|`Simple check`|vmware.vm.memory.size[{$URL},{HOST.HOST}]<p>Update: 60</p>|
|CPU usage|<p>Current upper-bound on CPU usage. The upper-bound is based on the host the virtual machine is current running on, as well as limits configured on the virtual machine itself or any parent resource pool. Valid while the virtual machine is running.</p>|`Simple check`|vmware.vm.cpu.usage[{$URL},{HOST.HOST}]<p>Update: 60</p>|
|CPU ready|<p>Percentage of time that the virtual machine was ready, but could not get scheduled to run on the physical CPU. CPU ready time is dependent on the number of virtual machines on the host and their CPU loads.</p>|`Simple check`|vmware.vm.cpu.ready[{$URL},{HOST.HOST}]<p>Update: 60</p>|
|Unshared storage space|<p>Total storage space, in bytes, occupied by the virtual machine across all datastores, that is not shared with any other virtual machine.</p>|`Simple check`|vmware.vm.storage.unshared[{$URL},{HOST.HOST}]<p>Update: 60</p>|
|Compressed memory|<p>The amount of memory currently in the compression cache for this VM.</p>|`Simple check`|vmware.vm.memory.size.compressed[{$URL},{HOST.HOST}]<p>Update: 60</p>|
|Uptime|<p>System uptime.</p>|`Simple check`|vmware.vm.uptime[{$URL},{HOST.HOST}]<p>Update: 60</p>|
|Swapped memory|<p>The amount of guest physical memory swapped out to the VM's swap device by ESX.</p>|`Simple check`|vmware.vm.memory.size.swapped[{$URL},{HOST.HOST}]<p>Update: 60</p>|
|Number of virtual CPUs|<p>Number of virtual CPUs assigned to the guest.</p>|`Simple check`|vmware.vm.cpu.num[{$URL},{HOST.HOST}]<p>Update: 60</p>|
|Power state|<p>The current power state of the virtual machine.</p>|`Simple check`|vmware.vm.powerstate[{$URL},{HOST.HOST}]<p>Update: 60</p>|
|Host memory usage|<p>The amount of host physical memory allocated to the VM, accounting for saving from memory sharing with other VMs.</p>|`Simple check`|vmware.vm.memory.size.usage.host[{$URL},{HOST.HOST}]<p>Update: 60</p>|
|Uncommitted storage space|<p>Additional storage space, in bytes, potentially used by this virtual machine on all datastores.</p>|`Simple check`|vmware.vm.storage.uncommitted[{$URL},{HOST.HOST}]<p>Update: 60</p>|
|Hypervisor name|<p>Hypervisor name of the guest VM.</p>|`Simple check`|vmware.vm.hv.name[{$URL},{HOST.HOST}]<p>Update: 3600</p>|
|Shared memory|<p>The amount of guest physical memory shared through transparent page sharing.</p>|`Simple check`|vmware.vm.memory.size.shared[{$URL},{HOST.HOST}]<p>Update: 60</p>|
|Ballooned memory|<p>The amount of guest physical memory that is currently reclaimed through the balloon driver.</p>|`Simple check`|vmware.vm.memory.size.ballooned[{$URL},{HOST.HOST}]<p>Update: 60</p>|
|Guest memory usage|<p>The amount of guest physical memory that is being used by the VM.</p>|`Simple check`|vmware.vm.memory.size.usage.guest[{$URL},{HOST.HOST}]<p>Update: 60</p>|
|Committed storage space|<p>Total storage space, in bytes, committed to this virtual machine across all datastores.</p>|`Simple check`|vmware.vm.storage.committed[{$URL},{HOST.HOST}]<p>Update: 60</p>|
|Cluster name|<p>Cluster name of the guest VM.</p>|`Simple check`|vmware.vm.cluster.name[{$URL},{HOST.HOST}]<p>Update: 3600</p>|
|Private memory|<p>Amount of memory backed by host memory and not being shared.</p>|`Simple check`|vmware.vm.memory.size.private[{$URL},{HOST.HOST}]<p>Update: 60</p>|
|Number of bytes received on interface {#IFDESC}|<p>-</p>|`Simple check`|vmware.vm.net.if.in[{$URL},{HOST.HOST},{#IFNAME},bps]<p>Update: 60</p><p>LLD</p>|
|Number of packets received on interface {#IFDESC}|<p>-</p>|`Simple check`|vmware.vm.net.if.in[{$URL},{HOST.HOST},{#IFNAME},pps]<p>Update: 60</p><p>LLD</p>|
|Number of bytes transmitted on interface {#IFDESC}|<p>-</p>|`Simple check`|vmware.vm.net.if.out[{$URL},{HOST.HOST},{#IFNAME},bps]<p>Update: 60</p><p>LLD</p>|
|Number of packets transmitted on interface {#IFDESC}|<p>-</p>|`Simple check`|vmware.vm.net.if.out[{$URL},{HOST.HOST},{#IFNAME},pps]<p>Update: 60</p><p>LLD</p>|
|Average number of bytes read from the disk {#DISKDESC}|<p>-</p>|`Simple check`|vmware.vm.vfs.dev.read[{$URL},{HOST.HOST},{#DISKNAME},bps]<p>Update: 60</p><p>LLD</p>|
|Average number of reads from the disk {#DISKDESC}|<p>-</p>|`Simple check`|vmware.vm.vfs.dev.read[{$URL},{HOST.HOST},{#DISKNAME},ops]<p>Update: 60</p><p>LLD</p>|
|Average number of bytes written to the disk {#DISKDESC}|<p>-</p>|`Simple check`|vmware.vm.vfs.dev.write[{$URL},{HOST.HOST},{#DISKNAME},bps]<p>Update: 60</p><p>LLD</p>|
|Average number of writes to the disk {#DISKDESC}|<p>-</p>|`Simple check`|vmware.vm.vfs.dev.write[{$URL},{HOST.HOST},{#DISKNAME},ops]<p>Update: 60</p><p>LLD</p>|
|Free disk space on {#FSNAME}|<p>-</p>|`Simple check`|vmware.vm.vfs.fs.size[{$URL},{HOST.HOST},{#FSNAME},free]<p>Update: 60</p><p>LLD</p>|
|Free disk space on {#FSNAME} (percentage)|<p>-</p>|`Simple check`|vmware.vm.vfs.fs.size[{$URL},{HOST.HOST},{#FSNAME},pfree]<p>Update: 60</p><p>LLD</p>|
|Total disk space on {#FSNAME}|<p>-</p>|`Simple check`|vmware.vm.vfs.fs.size[{$URL},{HOST.HOST},{#FSNAME},total]<p>Update: 3600</p><p>LLD</p>|
|Used disk space on {#FSNAME}|<p>-</p>|`Simple check`|vmware.vm.vfs.fs.size[{$URL},{HOST.HOST},{#FSNAME},used]<p>Update: 60</p><p>LLD</p>|
## Triggers

There are no triggers in this template.

