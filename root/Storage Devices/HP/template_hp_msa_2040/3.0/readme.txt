Template and script for Zabbix 3.0+ for monitoring HP MSA storage devices.
Tested with MSA 2040 but may work with other MSAs as well.

Based on template by Michael Weber that is based on Emir Imamagics HP P2000 G3 Template.

For bug reports and discussion:

https://www.zabbix.com/forum/showthread.php?p=176984

Modified by Eugene Varnavsky:

1. Discovery and check intervals frequency is increased
2. Fixed bug with disk status trigger and vdisk fault tolerance trigger
3. Script modified from HTTP to HTTPS
4. Support for per-host authentication
5. Script is run by speedyCGI instead of classic perl for better performance

Installation:

1. Make sure you have perl with all needed modules installed and speedyCGI
2. Copy hp-msa.pl to /usr/lib/zabbix/externalscripts and chmod 755 it.
3. Check if it works with command /usr/lib/zabbix/externalscripts/hp-msa.pl <host> <user> <password> lld controller 
4. Increase "Timeout" parameter in zabbix_server.conf to 20 or even more, script takes time.
5. Import template
6. Create host, with macros:

{$MSA1} = hostname or address of Controller 1
{$MSA2} = hostname or address of Controller 2
{$USER} = username for monitor user on MSA.
{$PASSWORD} = password for 'monitor' user

and attach template to it
8. Wait for discovery to complete it's job

Tips:
1. Have JSON-XS installed for faster JSON processing
2. For security, use user with monitor privilege only
3. You may need to increase amount of Zabbix pollers