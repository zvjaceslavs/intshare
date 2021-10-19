# Zabbix-templates-for-Active-Directory
This repository contains zabbix templates for Active Directory(AD) and PowerShell(PS) script for AD replication monitoring
# Requirements
PowerShell 3.00+ version
# Installation
Add userparameter in your zabbix_agentd.conf by analogy with userparameter.conf
Import the template ADReplication.xml and the template ADAudit.xml in your zabbix installation
# Description
1). LLD finds a active directory replication partners

2). Zabbix server obtains replication metrics:
  - Failure count
  - Failure type
  - First failure time
  - Last replication error
  - some metadata metrics

3). Each trigger of last error contains the url to support.microsoft.com page of the troubleshooting for error by her id.
![problem](https://user-images.githubusercontent.com/39965096/51258163-62942c00-19ba-11e9-88ac-33c31647c8be.PNG)
![last data](https://user-images.githubusercontent.com/39965096/51258208-7c357380-19ba-11e9-8627-3d819134a1a3.PNG)
4) Audit template triggers (the name of the triggers in Russian language):
![audit](https://user-images.githubusercontent.com/39965096/51258362-d9c9c000-19ba-11e9-932e-fc90228cd6a2.PNG)



Tested on windows servers 2008r2 2012r2 2016
