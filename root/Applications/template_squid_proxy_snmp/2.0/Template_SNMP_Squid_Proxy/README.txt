1)  Configure Squid Proxy Server SNMP Support

Add the following lines to the squid.conf file:

snmp_port 3401
acl <aclname> snmp_community <string>
snmp_access allow <string> all

NOTE:  This is not a secure configuration and allows any host access to Squid SNMP.  A more restrictive ACL than "all" (such as the Squid IP address ACL specifying only the Zabbix Server) should be applied.

NOTE:  The selected SNMP port is the one most commonly used in Squid documentation.  This may set to any supported port.

2)  Template Macros

The template specifies two macros:

{$SQUID_SNMP_COMMUNITY} > public
{$SQUID_SNMP_PORT} > 3401

These may be adjusted to reflect the SNMP port and snmp_community <string> defined in the squid.conf file as described above.

3)  Host Configuration

Specify an SNMP address and port as defined above when creating the host to which this template is applied.  This is found in the main host definition screen under SNMP Interfaces.  Also select the radio button to assure it is the default SNMP interface used by the Zabbix Server.

If the Squid servers use different Squid SNMP ports and community names, disable the macros in the template (above) and specify the per host in the Host Macros configuration.