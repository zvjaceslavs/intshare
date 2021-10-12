## LXC template

### Server side
* copy userparameter file to /etc/zabbix/zabbix_agentd.d/userparameter_lxc.conf
* restart agent

### Zabbix side
* upload XML file to zabbix
* configure 2 templates for a server LXC : `Template Module Linux LXC CPU by Zabbix agent` & `Template Module Linux LXC memory by Zabbix agent`

