# Zabbix Bind9 Statistics Collection

[![Join the chat at https://gitter.im/Zabbix-Bind9-Statistics-Collection/Lobby](https://badges.gitter.im/Zabbix-Bind9-Statistics-Collection/Lobby.svg)](https://gitter.im/Zabbix-Bind9-Statistics-Collection/Lobby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

This method utilises Bind 9s built in statistics export via HTTP/XML.

Most statistics available are collected, several aggregate graphs are defined.

[Forked from https://github.com/Pesticles/Zabbix-Bind9-Statistics-Collection](https://github.com/Pesticles/Zabbix-Bind9-Statistics-Collection)

Changes from original:
* Zones without statistics are not detected
* The template for Zabbix 3.4 uses dependent item. As a result, only one query is made to the agent for general statics and one for each zone.

## Requirements
* Zabbix 2.X.X and Zabbix 3.X.X
* Python 3


## To install:
* Configure Bind to export statistics via HTTP by adding the following to your bind.conf and restarting bind:
```
statistics-channels {
 	inet 127.0.0.1 port 8653 allow { 127.0.0.1; };
};
```
* Copy the userparameter_bind.conf into your zabbix agents include directory (/etc/zabbix/zabbix_agentd.d/ on
Debian/Ubuntu)
* Copy the script bind-stats.py to /usr/local/bin/ (or anywhere else you like, but you will need to alter the
contents of
userparameter_bind.conf)
* Import the xml template into Zabbix (zbx_bind_statistics_template_v3.xml for Zabbix 3.X.X)

## Update to 3.4
* Update userparameter_bind.conf and bind-stats.py
* Restart zabbix-agent
* Import the xml template zbx_bind_statistics_template_v3.4.xml (previous data will not be lost)

## Note:

You can enable per-zone statistics (which will be automatically discovered) by adding the following clause to each zone definition in your bind.conf:
`zone-statistics yes;`
