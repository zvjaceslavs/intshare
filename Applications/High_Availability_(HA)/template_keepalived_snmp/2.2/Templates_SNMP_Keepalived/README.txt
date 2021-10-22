Introduction

The five Keepalived SNMP Templates provide a modular monitoring implementation becuase Keepalived installations may do a wide range of things.  The simplest Keepalived implementation is only implementing VRRP failover and requires only the templates:

	1) Template SNMP Keepalived Global
	2) Template SNMP Keepalived VRRP

A Keepalived implemetation that provides LVS load balancing defined by IP address or fwmark requires, additionally:

	3) Template SNMP Keepalived Check Virtual Servers
	4) Template SNMP Keepalived Check Real Servers

A Keepalived implemetation that provides LVS load balancing defined by on or more Virtual Server Groups requires, additionally:

	5) Template SNMP Keepalived Check Virtual Server Groups

The included KEEPALIVED-MIB file must be installed in the Zabbix Server's SNMP MIBs path to provide the textual snmpbulkget support configured in the templates.

1. Prerequisites
	Net-SNMP installed and running on the Keepalived servers.
	Keepalived compiled with SNMP support and enabled in the startup script (i.e. using the --snmp daemon argument).
	The KEEPALIVED-MIB file in the Zabbix Server's SNMP mibs path.

2.  Templates
There are five templates that correspond to the structure of the KEEPALIVED-MIB:
	1) Template SNMP Keepalived Global
	2) Template SNMP Keepalived VRRP
	3) Template SNMP Keepalived Check Virtual Servers
	4) Template SNMP Keepalived Check Real Servers
	5) Template SNMP Keepalived Check Virtual Server Groups

	2.1 Template SNMP Keepalived Global
This template contains only configuration information. Checks are disabled by default.

	2.2 Template SNMP Keepalived VRRP
This template contains both configuration and monitoring information.  Only the monitoring information is enabled.  The template utilizes SNMP Low Level Discovery.

	2.3 Template SNMP Keepalived Check Virtual Servers
This template contains both configuration and monitoring information.  Only the monitoring information is enabled.  The template utilizes SNMP Low Level Discovery.

	2.4 	Template SNMP Keepalived Check Real Servers
This template contains both configuration and monitoring information.  Checks are disabled by default.  Due to the MIB structure's dynamic OID assignment, it is not amenable to SNMP Low Level Discovery and requires manual configuration (see below).

	2.5 Template SNMP Keepalived Check Virtual Server Groups
This template contains only configuration information.  Only the monitoring information is enabled.  A single SNMP Low Level Discovery item is included to enumerate only the Virtual Server Group Names.  Due to the MIB structure's dynamic OID assignment, it is not amenable to SNMP Low Level Discovery and requires manual configuration (see below).

3.  Configuration

	3.1 Keepalived.conf for SNMP Low Level Discovery
Each vrrp_instance requires a definition of the initial state because it is used in Template triggers:
	state (MASTER| BACKUP)

Each virtual_server requires a definition of a virtualhost name because it is used in Discovery as the {#SNMPVALUE} variable:
	virtualhost (string)

	3.2 Value Mappings
The following Value Mappings (Administration > General > Value Mapping selection from the drop-down menu) are required before importing the templates:

SNMP Keepalived Enabled/Disabled
	1 ⇒ enabled
	2 ⇒ disabled

SNMP Keepalived realServerActionWhenDown
	1 ⇒ remove
	2 ⇒ inhibit
SNMP Keepalived realServerType
	1 ⇒ regular
	2 ⇒ sorry

SNMP Keepalived ServerAddrType
	0 ⇒ unknown
	1 ⇒ ipv4
	2 ⇒ ipv6
	3 ⇒ ipv4z
	4 ⇒ ipv6z
	16 ⇒ dns

SNMP Keepalived ServerStatus
	1 ⇒ alive
	2 ⇒ dead

SNMP Keepalived True/False
	1 ⇒ true
	2 ⇒ false

SNMP Keepalived virtualServerGroupMemberType
	1 ⇒ fwmark
	2 ⇒ ip
	3 ⇒ iprange

SNMP Keepalived virtualServerLoadBalancingAlgo
	1 ⇒ rr
	2 ⇒ wrr
	3 ⇒ lc
	4 ⇒ wlc
	5 ⇒ lblc
	6 ⇒ lblcr
	7 ⇒ dh
	8 ⇒ sh
	9 ⇒ sed
	10 ⇒ nq
	99 ⇒ unknown

SNMP Keepalived virtualServerLoadBalancingKind
	1 ⇒ nat
	2 ⇒ dr
	3 ⇒ tun

SNMP Keepalived virtualServerProtocol
	1 ⇒ tcp
	2 ⇒ udp

SNMP Keepalived virtualServerQuorumStatus
	1 ⇒ met
	2 ⇒ notMet

SNMP Keepalived virtualServerType
	1 ⇒ fwmark
	2 ⇒ ip
	3 ⇒ group

SNMP Keepalived vrrpInstanceAuthType
	0 ⇒ none
	1 ⇒ password
	2 ⇒ ah

SNMP Keepalived vrrpInstancePreempt
	1 ⇒ preempt
	2 ⇒ noPreempt

SNMP Keepalived vrrpInstanceState
	0 ⇒ init
	1 ⇒ backup
	2 ⇒ master
	3 ⇒ fault
	4 ⇒ unknown

SNMP Keepalived vrrpInstanceTrackedInterface
	1 ⇒ tracked
	2 ⇒ notTracked

SNMP Keepalived vrrpInstanceVipsStatus
	1 ⇒ allSet
	2 ⇒ notAllSet

SNMP Keepalived vrrpScriptResult
	0 ⇒ disabled
	1 ⇒ init
	2 ⇒ bad
	3 ⇒ good
	4 ⇒ initgood

	3.3 Zabbix Host Configuration
Each keepalived host added to Zabbix must have an SNMP interface (a static IP address independent of the VRRP addresses) and the Macro {SNMP_COMMUNITY} defined.

	3.4 Configuring Real Server and Virtual Server Group Manually
The keepalived daemon dynamically creates two-digit SNMP OIDs for that are not amenable to snmpbulkget requests used by Zabbix.  Default items are included as Templates, but the administrator must clone and modify the items to enumerate the SNMP OIDs present on each instance.  Use a MIB browser or the snmpwalk command to enumerate the two-digit OIDs.  For example, a keepalived installation has two virtual servers.  The first virtual server is the front-end for two real servers and the second virtual server is the front-end for four real servers.  The SNMP OIDs are:

~$ snmpwalk -v 2c -c public 192.168.251.2 KEEPALIVED-MIB::realServerType
KEEPALIVED-MIB::realServerType.1.1 = INTEGER: regular(1)
KEEPALIVED-MIB::realServerType.1.2 = INTEGER: regular(1)
KEEPALIVED-MIB::realServerType.2.1 = INTEGER: regular(1)
KEEPALIVED-MIB::realServerType.2.2 = INTEGER: regular(1)
KEEPALIVED-MIB::realServerType.2.3 = INTEGER: regular(1)
KEEPALIVED-MIB::realServerType.2.4 = INTEGER: regular(1)

The first virtual server above is defined as an IP server and the second virtual server is defined as a group server.  The SNMP OIDs are:

~$ snmpwalk -v 2c -c public 192.168.251.2 KEEPALIVED-MIB::virtualServerGroupMemberType
KEEPALIVED-MIB::virtualServerGroupMemberType.1.1 = INTEGER: iprange(3)

Once all real server items have been added to Template SNMP Keepalived Check Real Servers, you must add to and/or clone the four graphs to include performance data for the instillation.

	3.5 Additional Graphs and Screens
Graphical displays are contingent upon each keepalived installation.  Additional graphs added to each host may include, for example:
	Traffic Rates for each individual Real Server
	Traffic Rates for each Virtual Server and its back end Real Servers

Additional Screens that may be added globally may include, for example:
	Traffic Rates for each keepalived server that individually detail all Virtual Servers and/or Real Servers.
	Traffic Rates for each keepalived server that include total traffic on an interface (from another Template) and each Virtual Server configured for that interface.
	Traffic Rates for each keepalived server that include total traffic on an interface (from another Template) and each Real Server configured for that interface.