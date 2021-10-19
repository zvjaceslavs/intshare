# zabbix_template_RapidRecoveryCore
A Zabbix Template for RapidRecovery Cores.


## Description
The purpose of this template is to provide basic insights into the status of a **Quest Rapid Recovery** core in your system. 

### Versioning Notes
Originally, this template was written for an older version of Rapid Recovery. Since then, the OIDS used to define Repositories and Protected Agents has changed. A newer template, known working on Rapid Recovery **6.4.0.718**, has been created and uploaded. The older template with old OIDs still is present (**..._legacy.xml**). At this time, I don't know exactly when the OIDs changed.

If you want to know which to use, query your RapidRecovery instance. If you get results at OID **.1.3.6.1.4.1.7572.200.100.200**, use the new version of the template. If you get results at OID **1.3.6.1.4.1.674.11000.1000.200.100.300.1.3**, use the legacy version.

## Goals
  - General Repository Health Info
  - Protected Agents
    - How many Recovery Points
    - Last protection time
    - State & Status of Replication
   
### Method
By utilizing the standard Quest .MIB file that is included with RR instances, we will use SNMPv1 to query date from the server. Use the standard `{$SNMP_COMMUNITY}` for authentication to the device.

NOTE: By default, SNMP handling on RapidRecovery Cores is disabled. This must be enabled, and ports *<sub>(Default UDP/8161)</sub>* opened on the firewall.

## Known Issues
  - The Web Scenario that is included with the template does not authenticate properly. A simple requirement for the scenario at this point is simply to expect a 401 Unauth. Not ideal, therefore no triggers are configured for the canned Web Scenario.
