# ESXi HP Smart Array

## Overview

**Overview**
------------


Template and instructions for monitoring HP Smart Array controllers as well as physical and logical drives attached to them.


This template is based on scripts and template made by lesovsky:  
<https://github.com/lesovsky/zabbix-extensions/tree/master/files/hwraid-smartarray>


**Requirements**


* VMware ESXi 5.x or newer installed, using HPE Customized ESXi image: <http://www8.hp.com/us/en/products/servers/solutions.html?compURI=1499005#tab=TAB4>


**How it works**
----------------


Due to limitations of VMWare ESXi, all items in this template are "SSH Check" based, meaning all checks are performed via SSH.


The item "ssh.run[hpraid.data.retrieval]" connects to your host and creates the file "/tmp/hp-raid-data-harvester.out" which contains all information about your controllers, disks and logical drives.


Discovery is performed by crawling through the data gathered in "/tmp/hp-raid-data-harvester.out". Discovered physical and logical devices and corresponding checks are then automatically populated for your host(s).


All scripts are located within the template which means that no configuration of your ESXi host(s) is necessary. A user with SSH access is all that is needed


**Disclaimer**
--------------


This template should work with any number of controllers, disks and/or logical drives, however I have only been able to test it with disks and logical drives spanning two controllers. Also, scripts, template and instructions have only been tested on VMware ESXi 6.0 update 1b.


**Instructions**
----------------


1. Enable SSH and add an SSH user for Zabbix to use, onto your ESXi system(s), with read-only rights.
2. On your ESXi system(s), edit "/etc/security/access.conf" and after the last line starting with a '+' sign, add a new line with "+:zabbixUsername:ALL".
3. For persistence, add this line into "/etc/rc.local.d/local.sh" before "exit 0" to ensure "/etc/security/access.conf" is updated upon reboot:  
sed -i '/root/s/.*/&\n\+:zabbixUsername:ALL/' /etc/security/access.conf
4. Import template "esxi\_hp\_smart\_array.xml" into Zabbix.
5. Edit template macros {$ZABBIX\_SSH\_USER} and {$ZABBIX\_SSH\_PASS}.
6. Assign the template to your ESXi server(s).


## Author

Zabbix.tips

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$ZABBIX_SSH_PASS}|<p>-</p>|`zabbixPassword`|Text macro|
|{$ZABBIX_SSH_USER}|<p>-</p>|`zabbixUsername`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Physical Drives Discovery|<p>-</p>|`SSH agent`|ssh.run[hpraid.pd.discovery]<p>Update: 86400</p>|
|Logical Volumes Discovery|<p>-</p>|`SSH agent`|ssh.run[hpraid.ld.discovery]<p>Update: 21600</p>|
|Controllers Discovery|<p>-</p>|`SSH agent`|ssh.run[hpraid.ctrl.discovery]<p>Update: 86400</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Smart Array: Data Retrieval|<p>-</p>|`SSH agent`|ssh.run[hpraid.data.retrieval]<p>Update: 600</p>|
|Physical drive {#PD} status|<p>-</p>|`SSH agent`|ssh.run[hpraid.pd.status.{#PD}]<p>Update: 600</p><p>LLD</p>|
|Physical drive {#PD} temperature|<p>-</p>|`SSH agent`|ssh.run[hpraid.pd.temperature.{#PD}]<p>Update: 600</p><p>LLD</p>|
|Logical volume $1 status|<p>-</p>|`SSH agent`|ssh.run[hpraid.ld.status.{#LD}]<p>Update: 600</p><p>LLD</p>|
|Smart Array: Battery status on slot {#CTRL_SLOT}|<p>-</p>|`SSH agent`|ssh.run[hpraid.bbu.status.{#CTRL_SLOT}]<p>Update: 21600</p><p>LLD</p>|
|Smart Array: Cache $2 status on slot {#CTRL_SLOT}|<p>-</p>|`SSH agent`|ssh.run[hpraid.cache.status.{#CTRL_SLOT}]<p>Update: 21600</p><p>LLD</p>|
|Smart Array: Controller status on slot {#CTRL_SLOT}|<p>-</p>|`SSH agent`|ssh.run[hpraid.ctrl.status.{#CTRL_SLOT}]<p>Update: 21600</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Smart Array: Controller Battery in slot {#CTRL_SLOT} state is {ITEM.LASTVALUE}|<p>-</p>|<p>**Expression**: {ESXi HP Smart Array:ssh.run[hpraid.bbu.status.{#CTRL_SLOT}].regexp(OK|Not available)}=0</p><p>**Recovery expression**: </p>|high|
|Smart Array: Controller Cache in slot {#CTRL_SLOT} state is {ITEM.LASTVALUE}|<p>-</p>|<p>**Expression**: {ESXi HP Smart Array:ssh.run[hpraid.cache.status.{#CTRL_SLOT}].regexp(OK|Not available)}=0</p><p>**Recovery expression**: </p>|high|
|Smart Array: Controller in slot {#CTRL_SLOT} state is {ITEM.LASTVALUE}|<p>-</p>|<p>**Expression**: {ESXi HP Smart Array:ssh.run[hpraid.ctrl.status.{#CTRL_SLOT}].regexp(OK)}=0</p><p>**Recovery expression**: </p>|high|
|Smart Array: No controller data received for >24h|<p>-</p>|<p>**Expression**: {ESXi HP Smart Array:ssh.run[hpraid.ctrl.status.{#CTRL_SLOT}].nodata(24h)}=1</p><p>**Recovery expression**: </p>|high|
|Smart Array: Logical Volume state is {ITEM.LASTVALUE} on {HOSTNAME}|<p>-</p>|<p>**Expression**: {ESXi HP Smart Array:ssh.run[hpraid.ld.status.{#LD}].str(OK)}=0</p><p>**Recovery expression**: </p>|high|
|Smart Array: Disk state is {ITEM.LASTVALUE} on {HOSTNAME}|<p>-</p>|<p>**Expression**: {ESXi HP Smart Array:ssh.run[hpraid.pd.status.{#PD}].str(OK)}=0</p><p>**Recovery expression**: </p>|high|
|Smart Array: Disk state is {ITEM.LASTVALUE} on {HOSTNAME} (LLD)|<p>-</p>|<p>**Expression**: {ESXi HP Smart Array:ssh.run[hpraid.pd.status.{#PD}].str(OK)}=0</p><p>**Recovery expression**: </p>|high|
|Smart Array: Logical Volume state is {ITEM.LASTVALUE} on {HOSTNAME} (LLD)|<p>-</p>|<p>**Expression**: {ESXi HP Smart Array:ssh.run[hpraid.ld.status.{#LD}].str(OK)}=0</p><p>**Recovery expression**: </p>|high|
|Smart Array: Controller Battery in slot {#CTRL_SLOT} state is {ITEM.LASTVALUE} (LLD)|<p>-</p>|<p>**Expression**: {ESXi HP Smart Array:ssh.run[hpraid.bbu.status.{#CTRL_SLOT}].regexp(OK|Not available)}=0</p><p>**Recovery expression**: </p>|high|
|Smart Array: Controller Cache in slot {#CTRL_SLOT} state is {ITEM.LASTVALUE} (LLD)|<p>-</p>|<p>**Expression**: {ESXi HP Smart Array:ssh.run[hpraid.cache.status.{#CTRL_SLOT}].regexp(OK|Not available)}=0</p><p>**Recovery expression**: </p>|high|
|Smart Array: Controller in slot {#CTRL_SLOT} state is {ITEM.LASTVALUE} (LLD)|<p>-</p>|<p>**Expression**: {ESXi HP Smart Array:ssh.run[hpraid.ctrl.status.{#CTRL_SLOT}].regexp(OK)}=0</p><p>**Recovery expression**: </p>|high|
|Smart Array: No controller data received for >24h (LLD)|<p>-</p>|<p>**Expression**: {ESXi HP Smart Array:ssh.run[hpraid.ctrl.status.{#CTRL_SLOT}].nodata(24h)}=1</p><p>**Recovery expression**: </p>|high|
