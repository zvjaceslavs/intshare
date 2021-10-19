Instruction

Following steps on zabbix server or zabbix proxy

1. Download Pyton XENApi.py from https://github.com/xapi-project/xen-api/tree/master/scripts/examples/python. Please use the last version, becaus of ssl support changes in pyton


2. Copy file XENApi.py to directory /usr/local/lib/python

If you want to change, please change line sys.path.append('/usr/local/lib/python') also!



3. Copy citrix.xenserver.py from attached archive to you externel script path and set userrights (chmod 755).

4. Import the templates

zbx_template_xenserver_host.xml -->Monitoring XEN Host

zbx_template_xenserver_vm.xml --> Monitoring XEN VMs

Please note, the the name in zabbix and the name in xen have to be the same!



5. Set macros (Global on on all host you use this templates)

{$XENMASTER} -->Masterserver of XENCLUSTER

{$XENUSERNAME} --> Username for connect to XENCLUSTER

{$XENPASSWORD} --> Password for connect to XENCLUSTER



