## What is the purpose of this template:

This template extends the "Template App Nginx by Zabbix agent" template by adding :
* Certificate detection and verification
* Verification of the existence of a DNS entry for each "server_name"
* Analysis of virtual host logs (5XX responses)
* Verification of the status code of the roots of each virtual host 

## How to setup:

### On your Zabbix Server and all your Zabbix Proxies:
copy the `dns-check` and `cert-check` files in the directory "/usr/lib/zabbix/externalscripts/" and make them executables.

### On your servers with Nginx Installed:
copy the `nginx-discovery.sh` file in the directory "/etc/zabbix/scripts" and make it executable.

copy the `userparameter_nginx.conf` file in the directory "/etc/zabbix/zabbix_agentd.d/" and restart your zabbix agent

### On your Zabbix WebUI :

In "Configurations" -> "Templates", clic on the "Import" button and load the `Template App Nginx by Zabbix agent Enhanced.yaml` file
