Hello,

this script checks the folowing:
1. if you have nfs mount it will check if its mounted
2. if a mount has fallen because of network the file will look like this ? ???? ?? ??? mountfile and mount simple  check
will not see it so i check mount file state
3. will compare between fstab file and df output

how to install:
1. put script under /home/zabbix or you own script file.
2.chmod +x scriptname
3.go to script and change varible MOUNT_FILE to your oun nfs mount  file if theres not any then command this step
3.import xML