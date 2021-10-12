yum install -y python-pip sysstat zabbix-sender
pip install requests py-zabbix
echo 'Copying service file to systemd...'
cp diskstat /etc/init.d/
#cp diskstat.service /etc/systemd/system/
echo 'Enabling service...'
#systemctl enable diskstat
chkconfig --add diskstat
echo 'Starting service...'
service diskstat start
#systemctl start diskstat