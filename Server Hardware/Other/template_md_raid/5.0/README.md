# Template MD Soft RAID

## Description

Monitoring of MD Soft RAID

## Overview

**MD Soft RAID monitoring template for Zabbix**
-----------------------------------------------


Using sysfs for monitoring of Linux Soft RAID aka MD


Tested on Zabbix Version 3.0


See more at [GitHub](https://github.com/krom/zabbix_template_md)


FEATURES
--------


* LLD for auto detecting RAID
* Monitoring of total number of disks, number of degraded disks, sync\_status
* Graph for degraded disks
* Triggers for degrading and raid recovering



REQUIREMENTS
------------


* Zabbix server version 3.0
* SYSFS at agents's server, **/sys/block/md*** available


INSTALLATION
------------


* Agent (host with RAID)
	+ Copy **userparameter\_md.conf** to **/etc/zabbix/zabbix\_agentd.d/userparameter\_md.conf**
		- For example `curl -Ls https://git.io/fN9H5 | sudo tee /etc/zabbix/zabbix_agentd.d/userparameter_md.conf`
	+ Restart zabbix\_agent
		- UBUNTU/DEBIAN: `sudo service zabbix-agent restart`
* Server
	+ Import template **template\_md\_x.x.xml** file via web admin (**x.x** this is your version of Zabbix)
		- Save the XML template file to a convenient location
		- Open the Zabbix console
		- Navigate to **Configuration** > **Templates**
		- Click the **Import** button
		- Select the downloaded **template\_md.xml** file
		- Click **Import**


 


ITEMS
-----


* **md.discover** - LLD data (MD RAIDs and disks)
* **md.degraded[*]** - number of degraded disks for specific RAID
* **md.sync\_action[*]** - current sync status for specific RAID
* **md.raid\_disks[*]** - number of all disks for specific RAID


 


### How to add new Item


1. Add new **UserParameter** to **/etc/zabbix/zabbix\_agentd.d/userparameter\_md.conf** For example `UserParameter=md.sync_speed[*],cat /sys/block/$1/md/sync_speed`
2. Create a new Item by [instruction](https://www.zabbix.com/documentation/3.4/manual/config/items/item)


AUTHOR
------


Roman Kudlay [roman@kudlay.pro](mailto:roman@kudlay.pro)


 


LICENSE
-------


GNU GENERAL PUBLIC LICENSE Version 3, 29 June 2007



## Author

Roman Kudlay

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|MD Discovery|<p>-</p>|`Zabbix agent`|md.discover<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|MD $1 degraded (LLD)|<p>Get number of degraded disks</p>|`Zabbix agent`|md.degraded[{#MDNAME}]<p>Update: 5m</p>|
|MD $1 raid disks (LLD)|<p>Get number of all disks</p>|`Zabbix agent`|md.raid_disks[{#MDNAME}]<p>Update: 3600</p>|
|MD $1 sync action (LLD)|<p>Get current sync action</p>|`Zabbix agent`|md.sync_action[{#MDNAME}]<p>Update: 300</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|MD {#MDNAME} in recovery mode on {HOST.NAME}|<p>-</p>|<p>**Expression**: {Template MD Soft RAID:md.sync_action[{#MDNAME}].str(recover)}=1</p><p>**Recovery expression**: </p>|information|
|MD {#MDNAME} is degraded on {HOST.NAME}|<p>-</p>|<p>**Expression**: {Template MD Soft RAID:md.degraded[{#MDNAME}].last()}>0</p><p>**Recovery expression**: </p>|high|
|MD {#MDNAME} number of disks changed on {HOST.NAME}|<p>-</p>|<p>**Expression**: {Template MD Soft RAID:md.raid_disks[{#MDNAME}].diff()}>0</p><p>**Recovery expression**: </p>|warning|
|MD {#MDNAME} in recovery mode on {HOST.NAME} (LLD)|<p>-</p>|<p>**Expression**: {Template MD Soft RAID:md.sync_action[{#MDNAME}].str(recover)}=1</p><p>**Recovery expression**: </p>|information|
|MD {#MDNAME} is degraded on {HOST.NAME} (LLD)|<p>-</p>|<p>**Expression**: {Template MD Soft RAID:md.degraded[{#MDNAME}].last()}>0</p><p>**Recovery expression**: </p>|high|
|MD {#MDNAME} number of disks changed on {HOST.NAME} (LLD)|<p>-</p>|<p>**Expression**: {Template MD Soft RAID:md.raid_disks[{#MDNAME}].diff()}>0</p><p>**Recovery expression**: </p>|warning|
