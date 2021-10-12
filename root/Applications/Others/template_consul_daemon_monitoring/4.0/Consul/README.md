## Consul template installation and configuration

### Template configuration zabbix-side
* Import zabbix template file `zabbix_consul_app_template.xml` on zabbix
* Select a consul hosts and add `Template App consul`

### Configuration on consul server side
* Copy `userparameter_consul.conf` to `/etc/zabbix/zabbix_agentd.d/userparameter_consul.conf`
* Copy `varnish_metrics.py` to `/etc/zabbix/consul-nodes.sh`
* Set execution right with `sudo chmod +x /etc/zabbix/consul-nodes.sh`
* restart agent : `sudo service zabbix-agent restart`
