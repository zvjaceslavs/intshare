Tested on:

- CentOS 7.3 (others will probably work too)
- Zabbix 2.4.8 (others may work too)


What you will need:

1) Value Mappings:

Go to "Administration -> General -> Value Mapping" and create the following mappings:

 VMware - Ethernet Port Status
 
 0 = Disabled
 1 = Enabled
 2 = Down


2) Import the provided template.

 - TEMPLATE.VMWARE_ESXi_6.0_CIM.xml


3) Install Dependencies:

 # yum -y install sblim-wbemcli.x86_64 pywbem.noarch python2-pyvmomi.noarch python-setuptools jq python-setuptools zabbix-sender.x86_64
 # easy_install -U pysphere
 # easy_install -U docopt



4) Create a read only account on your VMWare ESXi with enough privileges to collect the data you want to monitor.

 You can create such account with the following commands:

 # /usr/lib/vmware/auth/bin/adduser -s /sbin/nologin -D -H zabbix -G root
 # echo "YOUR_PASSWORD" | /usr/lib/vmware/auth/bin/passwd --stdin zabbix
 # vim-cmd vimsvc/auth/role_add CIM_ReadOnly Host.Cim.CimInteraction System.Anonymous
 # vim-cmd vimsvc/auth/entity_permission_add vim.Folder:ha-folder-root 'zabbix' false CIM_ReadOnly true


5) VMWare Host UUID information:

You need to enable MOB VIB, because esxcli may not provide a valid UUID for this template.

 To enable mob via CLI:
 vim-cmd proxysvc/add_np_service "/mob" httpsWithRedirect /var/run/vmware/proxy-mob

 To disable mob via CLI:
 vim-cmd proxysvc/remove_service "/mob" "httpsWithRedirect"

You can also enable MOB VIB via vSphere:

 1. Go to your vsphere Advanced Settings, Config, Hostagent, plugins, solo, check "Config.HostAgent.plugins.solo.enableMob"
 2. Browse to https://YOUR_ESX_HOST_IP/mob/?moid=ha-host&doPath=hardware.systemInfo and copy the UUID.
 3. Disable MOB vib again (uncheck Config.HostAgent.plugins.solo.enableMob)

You can also obtain the UUID information through the collected data, on "CIM Hardware" item on Zabbix dashboard after 10 minutes of collected data.

An anternate way, is to execute "esxcfg-info -u". But you may need to convert the results to lowercase.


6) Zabbix Macros:

{$USERNAME}	zabbix
{$PASSWORD}	YOUR_PASSWORD
{$URL}		https://YOUR_ESX_HOST_IP/sdk
{$UUID}		your-uuid-collected-information


7) Scripts on ExternalScrips directory.

Put the bundled scripts on your ExternalScrips directory of your Zabbix Proxy or Zabbix Server, and apply the necessary privileges:

 # chmod a+x agent_vsphere_wrapper agent_vsphere


8) If you use SELINUX in Enforcing mode:

 # restorecon -v /usr/lib/python2.7/site-packages/pysphere-0.1.7-py2.7.egg  (use according directory here)
 # restorecon -v /usr/lib/python2.7/site-packages/docopt-0.6.2-py2.7.egg  (use according directory here)
 # restorecon -RFvv /usr/lib/zabbix/externalscripts  (use according directory here)

8.1) Create a custom SELinux policy:

 # cd ~
 # vi check-esx-hardware.te


 module check-esx-hardware 1.0;
 
 require {
 	type admin_home_t;
 	type zabbix_t;
 	class file { execute_no_trans execute getattr open read };
 }

 #============= zabbix_t ==============
 allow zabbix_t admin_home_t:file { execute_no_trans execute getattr open read };


8.2) Register and apply the policy:

 # checkmodule -M -m -o check-esx-hardware.mod check-esx-hardware.te
 # semodule_package -o check-esx-hardware.pp -m check-esx-hardware.mod
 # semodule -i check-esx-hardware.pp


9) Assign the TEMPLATE "VMWARE_ESXi_6.0_CIM" and MACROS to your VMWare ESX host and wait a few minutes.
   Some itens are collected after a few hours, and will only show after this period. But in 10 minutes you will see the first results.


Todo on wrapper script:

 - Internal disk status and internal disk health
 - Figure out some sort of automation or trigger to monitor guest snapshots age
 -> Maybe you will need some more zabbix triggers on this template


More Information:

You can find original Check_MK ESX Agent here:
https://raw.githubusercontent.com/opinkerfi/check_mk/master/agents/special/agent_vsphere

You can find a modified original Zabbix VMWare ESXi template which uses UUID here:
https://github.com/pfoo/zabbix-esxi


Troubleshooting:

Just check the contents of the file "/var/tmp/zabbix/*.FULL_ESX_INFO.TMP.ERR"

DO NOT USE WHITESPACES IN YOUR HOSTNAMES OR MONITORED SERVER NAMES.

Have Fun!
Andre Rocha