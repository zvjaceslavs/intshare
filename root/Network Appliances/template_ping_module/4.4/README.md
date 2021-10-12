### Zabbix Template Ping version 1.0.0

Tested on Zabbix 4.4

# Introduction
Template for zabbix to check if an host is pingable using simple check.
There is 4 templates problem's level:
* information 
* warning
* average
* high

In addition:
* it can ping an host by it's hostname
* ping by host name can be disabled using macro
* high ping response time can be disabled using macro

# Requirement
No specific requierement

It use **Simple check** zabbix function

# Installation

## Template
You need to import the **frogg_ping_check.xml** template configuration file in the zabbix web interface in **Template** tab using the import button

The file contains 4 templates:
* Template Module Ping information 
* Template Module Ping warning
* Template Module Ping average
* Template Module Ping high

## Macro

MACRO | Description
----- | -----------
{$ICMP_DISABLED_HOSTNAME_CHECK} | if set to 1 disable the display of problems on hostname
{$ICMP_DISABLED_RESPONSETIME_CHECK} | if set to 1 disable the display of problems on response time

# Template items
![Zabbix Ping items sample](https://tool.frogg.fr/upload/github/zabbix-ping/items.png)

# Template triggers
* information
![Zabbix Ping triggers sample](https://tool.frogg.fr/upload/github/zabbix-ping/triggers_info.png)
* warning
![Zabbix Ping triggers sample](https://tool.frogg.fr/upload/github/zabbix-ping/triggers_warn.png)
* average
![Zabbix Ping triggers sample](https://tool.frogg.fr/upload/github/zabbix-ping/triggers_avg.png)
* high
![Zabbix Ping triggers sample](https://tool.frogg.fr/upload/github/zabbix-ping/triggers_high.png)
