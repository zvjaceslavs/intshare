# Zabbix Xenserver
This templates Monitoring Xenserver disks HBA, Physical Networks and Memory from all nodes. 
The agent is setup on xenserver master.

## Install Zabbix Agent on Xenserver
#### Add repositories:
```
#mkdir ~/downloads/
#cd ~/downloads
#rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
#rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
#rpm -Uvh https://repo.zabbix.com/zabbix/3.2/rhel/7/x86_64/zabbix-release-3.2-1.el7.noarch.rpm
 ```
#### Disable new repositories:
Disable repositories according to the standard adopted by XenServer. To do this, use the command “sed”. Run the commands below:
```
#sed -i -e "s/enabled=1/enabled=0/" /etc/yum.repos.d/epel.repo
#sed -i -e "s/enabled=1/enabled=0/" /etc/yum.repos.d/remi.repo
#sed -i -e "s/enabled=1/enabled=0/" /etc/yum.repos.d/remi-safe.repo
#sed -i -e "s/enabled=1/enabled=0/" /etc/yum.repos.d/zabbix.repo
```

#### Update installed repositories:
```
#yum --enablerepo=epel --enablerepo=remi --enablerepo=base --enablerepo=zabbix makecache
 ```

#### Installing Zabbix Agent:
```
#yum --enablerepo=epel --enablerepo=remi --enablerepo=base --enablerepo=zabbix install zabbix-agent
```
 
#### Allow firewall:
For the zabbix agent to work correctly we need to allow port 10050 on the XenServer firewall to allow the agent to connect. Edit the file **/etc/sysconfig/iptables** and add the line:

**-A RH-Firewall-1-INPUT -p tcp --dport 10050 -j ACCEPT**
                
#### Enable services:
```
#systemctl enable zabbix-agent
#systemctl restart iptables
#systemctl start zabbix-agent
```

## Configure template
* Create xenserver user with read-only role (tested with active directory user)
* Copy the xenserver folder and userparameter_xenserver.conf inside **/etc/zabbix/zabbix_agentd.conf**
* Edit the file zabbix_agentd.d/xenserver/xen_passwd
* Import template (**xenserver_template.xml**) on Zabbix server (tested on zabbix 4.4)
