A working Windows Zabbix Agent is assumed.  Each monitored Windows host requires additional lines in its zabbix.conf file that call the included Powershell scripts.

Discovery Rules utilize Powershell scripts to collect JSON-formatted Windows Performance Monitor counters.

1)  Import the template XML file using the Zabbix Templates Import feature.



2)  ZABBIX.CONF additional lines

UserParameter=sqldatabasename.discovery,powershell -NoProfile -ExecutionPolicy Bypass -File C:\zabbix\scripts\SQLBaseName_To_Zabbix.ps1

3)  POWERSHELL SCRIPTS


The UserParameter statements call Powershell scripts located in the c:\zabbix\scripts directory.  These paths may be changed to reflect the deployment.



The -NoProfile -ExecutionPolicy Bypass statements assure the scripts execute and are mandatory.



4)  Restart the Zabbix Agent service after the above modifications.

I did not charts for meters from Discovery Rules, because their number is very dependent on the number of databases in SQL. It is not correct to aggregate it to database name. Different counters has different unit of measurement.