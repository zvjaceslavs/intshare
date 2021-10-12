# Make changes on the config file of zabbix agent on the monitored server by enabling remote commands and add both lines "UserParameters" in the end of the config file
# place the powershell in the place accessible by zabbix agent, in our case it's C:\Zabbix\conf\

EnableRemoteCommands=1


UserParameter=certificate.discovery, powershell -NoProfile -ExecutionPolicy Bypass -File C:\Zabbix\conf\certificate_check.ps1 -ActionType discover
UserParameter=certificate.getexpirydays[*], powershell -NoProfile -ExecutionPolicy Bypass -File C:\Zabbix\conf\certificate_check.ps1 -ActionType get -PSCHILD "$1"