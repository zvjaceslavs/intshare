## Varnish template installation and configuration

### Template configuration zabbix-side
* Import zabbix template file `zabbix_varnish_app_template.xml` on zabbix
* Select a varnish hosts and add `Template App Varnish`

### Configuration on varnish server side
* Allow varnish to use netstat : ```sudo echo "zabbix ALL=(ALL) NOPASSWD: /bin/netstat" >> /etc/sudoers```
* Allow zabbix user to read varnish secret file ```chmod +r /etc/varnish/secret```
* Add zabbix to varnish group to use varnish CLI ```sudo usermod -a -G varnish zabbix```
* Copy `userparameter_varnish.conf` to `/etc/zabbix/zabbix_agentd.d/userparameter_varnish.conf`
* Copy `varnish_metrics.py` to `/etc/zabbix/varnish_metrics.py`
* Set execution right with `sudo chmod +x /etc/zabbix/varnish_metrics.py`
* restart agent : `sudo service zabbix-agent restart`

