## What is the purpose of this template:

A simple template that detects and monitors software raids made with MDADM

## How to setup:

### On your servers :

copy the `userparameter_mdadm.conf` file in the directory "/etc/zabbix/zabbix_agentd.d/" and restart your zabbix agent

### On your Zabbix WebUI :

In "Configurations" -> "Templates", clic on the "Import" button and load the `Template Module MDADM.yaml` file
