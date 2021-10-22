A working Windows Zabbix Agent is assumed.  Each monitored Windows host requires additional lines in its zabbix.conf file that call the included Powershell scripts.

The template Discovery Rules utilize Powershell scripts to collect JSON-formatted Windows Performance Monitor counters.

1)  Import the template XML file using the Zabbix Templates Import feature.

2)  ZABBIX.CONF additional lines

UserParameter=windowsdb.discovery,powershell -NoProfile -ExecutionPolicy Bypass -File c:\scripts\get_sqldbs.ps1

3)  Zabbix Server Regular Expression
A new regular expression filters Windows network interfaces, eliminating logical devices.
	a)  From the Zabbix web interface, click the "Administration" tab and select "Regular expressions" frmo the drop down menu in the upper right.
	b)  Click the New regular expression button in the upper right.
	c)  Name:  MS SQL System DBs
	d)  Expression:   ^(_Total|master|model|msdb|mssqlsystemresource|tempdb)$
	e)  Expresion Type:  Result is FALSE
	f)  Case sensitive:  No
	g)  Add the expression to the rule and add the Regular Expression to the list.
 
4)  POWERSHELL SCRIPTS

The UserParameter statements call Powershell scripts located in the c:\scripts directory.  These paths may be changed to reflect the deployment.

The -NoProfile -ExecutionPolicy Bypass statements assure the scripts execute and are mandatory.

5)  Restart the Zabbix Agent service after the above modifications.