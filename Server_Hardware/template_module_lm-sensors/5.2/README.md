## What is the purpose of this template:

This template will automatically detect and supervise the temperature sensors of the machines.

It's optimized to make only one request on the agent, and to proceed the data on the Zabbix server

## How to setup:

### On your servers :

Make sure to install lm-sensors >= 3.5.0 and run the command `sensors-detect`

copy the `userparameter_sensors.conf` file in the directory "/etc/zabbix/zabbix_agentd.d/" and restart your zabbix agent

### On your Zabbix WebUI :

In "Configurations" -> "Templates", clic on the "Import" button and load the `Template Module lm-sensors.yaml` file
