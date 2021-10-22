# License

MIT License

Copyright (c) 2021 Dhruva Kumar

# Zabbix-Windows-Security-Checks

This repository contains zabbix templates for Windows Active Directory(AD) security checks.

# Requirements
Zabbix mininum version 4.0.x

# Installation
Download and import the template into your Zabbix server. Insert your zabbix server ip address in the script where it is required.

# Description

1) The template checks the windows active directory security checks.

2) Zabbix server obtains replication metrics:

    > Failure count
    > Failure type
    > First failure time
    > Last replication error
    > some metadata metrics
   
3) The audit template triggers the below events which occur in windows Active directory.

•	Eventlog clear
•	Failed Login attempt
•	Attempt to install a service
•	User account creation
•	User account deletion
•	User account enabled
•	User account disabled
•	User account deleted
•	User account lockout
•	User account unlock

4) The template monitors above events which are considered as critical events.

5) The template is tested on windows servers 2008r2 2012r2 2016, windows 10.
