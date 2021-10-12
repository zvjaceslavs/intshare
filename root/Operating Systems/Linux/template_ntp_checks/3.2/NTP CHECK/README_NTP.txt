Hello!

this script will check few things:
1.if ntp package installed
2.if ntp synchronised
3.if theres an offset for more then 1 minurts with ntp.pool europe servers

steps to install :
1.add the script to /home/zabbix/ or whatever script file that zabbix uses.
2.chmod +x /home/zabbix/ntp_check.sh
3.allow EnableRemoteCommands in /etc/zabbix/zabbix_agent.conf
EnableRemoteCommands=0 to EnableRemoteCommands=1 and restart agent.
4. import template.

made by batchen regev
batchenr@gmail.com
