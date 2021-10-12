Important Notice:

Oracle VM does not provide a way to monitor CPU, Network and Disk consumption via Admin CLI.
The itens CPU and Network can be monitored by SNMP, but I don't know if the data is accurate.
Maybe on future OVM upgrades there will be some more options to Admin CLI, to fill in de gaps.
I don't like to monitor Hypervisors by SNMP for many reasons, but we will need it for now.
Detailed Disk use can be monitored from the Virtual Machine itself. Oracle VM Hypervisor does
not provide this kind of information for now (shame on Oracle). I'm not a Oracle VM specialist,
but I know the basics. So, feedbacks are welcome. If you know a way to collect more useful 
information, please share, so I can include it on this template. :-)


Important Information:

Admin Console IP Access may differ from main IP address. By default, Admin CLI can be acessed on TCP port 10000.


Needs:

# yum install jq expect.x86_64 gawk sed


1) Preparing the scripts:

Place the provided scripts on /usr/lib/zabbix/externalscripts  (Use your external scripts dir here), and assign the exec privileges:

# chmod a+x agent_ovm
# chmod a+x agent_ovm_info.exp


1.1) If you use SELinux in Enforcing mode:

# restorecon -RFvv /usr/lib/zabbix/externalscripts  (Use your external scripts dir here)


1.2) You will also need a custom SELinux policy:
Create the following custom SELinux policy:
# cd ~
# vi ovm-script-check.te


 module ovm-script-check 1.0;
 
 require {
 	type admin_home_t;
 	type zabbix_t;
 	class file { execute_no_trans execute getattr open read };
 }

 #============= zabbix_t ==============
 allow zabbix_t admin_home_t:file { execute_no_trans execute getattr open read };


1.3) Register and apply the custom policy:

# checkmodule -M -m -o ovm-script-check.mod ovm-script-check.te
# semodule_package -o ovm-script-check.pp -m ovm-script-check.mod
# semodule -i ovm-script-check.pp


2) Enable SNMP Support on your Oracle VM Hypervisor:

To enable SNMP support, follow the official instructions here:
http://docs.oracle.com/cd/E64076_01/E64083/html/vmadm-config-snmp-ovs.html

Or you can use this configuration example:

# vi /etc/snmp/snmpd.conf

  dlmod ovs /usr/lib64/ovs-snmp/ovs.so
  rocommunity My_OVM_SNMP_Community
  com2sec notConfigUser  default      public
  group   notConfigGroup v1           notConfigUser
  group   notConfigGroup v2c          notConfigUser
  view    systemview    included   .1.3.6.1.2.1.1
  view    systemview    included   .1.3.6.1.2.1.25.1.1
  access  notConfigGroup ""      any       noauth    exact  systemview none none
  syslocation Mars
  syscontact Admin
  dontLogTCPWrappersConnects yes


2.1) Restart the SNMP service to aaply the changes:

# service snmpd restart


2.2) Check if you can collect SNMP data:

# snmpwalk -c My_OVM_SNMP_Community -v2c -On HOSTNAME_IP Uptime


2.3) Configure the SNMP interface on the monitored host on Zabbix.


3) Configure the following MACROS on your OracleVM monitored host:

 {$USERNAME} = Oracle VM Admin Account
 {$PASSWORD} = Oracle VM Admin Password
 {$ADMINCLI} = Admin CLI IP address
 {$OVMHNAME} = Oracle VM configured hostname
 {$SNMP_COMMUNITY} = My_OVM_SNMP_Community
 -> Don't use white spaces on your hostnames and disks!


4) Test if Zabbix can access OVM CLI:

You can test CLI access using the following command:

# ssh -l admin ADMIN_CLI_IP -p 10000


5) Assign the provided TEMPLATE (dont forget the MACROS) to your OracleVM host and wait a few minutes. 
Some itens are collected after a few hours, and will only show after this period. But in 10 minutes you will see the first results.



Final Note:

This template is provided as is. I have little time to help in case of problems. If you have any questions, please Google it or read the provided README.TXT again.

Andre Rocha
arocha@equinix.com


Useful commands:

# SHOW #

OVM> set OutputMode=Sparse
OVM> show server name=YOUR_SERVER_NAME
OVM> show PhysicalDisk name=YOUR_DISK_NAME
OVM> show fileSystem id=YOUR_FS_ID


# LIST #

OVM> list FileSystem
OVM> list Network
OVM> list physicalDisk
list VirtualDisk
list BondPort
list Cpu
list CpuCompatibilityGroup
list FileServer
list FileServerPlugin
list FileSystem
list Port (portas de rede)
list Server
list ServerController
list ServerPool
list ServerPoolNetworkPolicy
list ServerUpdateGroup
list ServerUpdateRepository
list StorageArray
list StorageArrayPlugin
list StorageInitiator
list VirtualCdrom
list VlanInterface
list Vm
list VmDiskMapping
list Vnic
list VolumeGroup


# GET #

OVM> getStatList ?
                 *objType
                 *objId
                 *statType
                 *startTime
                 endTime
                 HelpText: 1. The Server object does not support the CPU_COUNT statistic. 2. FREE_MEMORY, MEMORY_UTILIZATION statistics are supported for Server associated objects only. 3. FILE_SYSTEM_SPACE_AVAILABLE, FILE_SYSTEM_SPACE_UTILIZATION, FILE_SYSTEM_SPACE_TOTAL, FILE_SYSTEM_TOTAL_FILES_SIZE are supported for File System object only.