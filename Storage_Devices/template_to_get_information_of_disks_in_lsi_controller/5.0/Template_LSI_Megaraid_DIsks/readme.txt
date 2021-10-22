Template to get information about Disks in LSI controller

This template was created to get only information about disks in LSI controller.

Ps: It use MegaCli64 utility.

How to use


---Zabbix side


  -Import template

---Client side

 - Script
   the script is called raiddisc.sh, get it and put on this path /etc/zabbix/scripts/
 
 - Json file
   execute this command to create the json file:
   touch /etc/zabbix/scripts/info.json | chown zabbix: /etc/zabbix/scripts/info.json  
 
 - Crontab schedule
   Create in root crontab a schedule to run the script every day to populate json file. To do it, use these commands:
   
   crontab -e
 
   and add at the final of the file the following line:

   * 12 * * *  /etc/zabbix/scripts/raiddisc.sh disk

   With it, the script will run every day with an interval of 12 hours and populate the file /etc/zabbix/scripts/info.json
   
 
 - Zabbix user
   To get the results you will need to add these lines on sudo file:

   zabbix  ALL=NOPASSWD:/etc/zabbix/scripts/raiddisc.sh

   zabbix  ALL=NOPASSWD:<<<<PATH OF MEGACLI64>>>>> ((((USE PATH OF MEGACLI64 instead <<<<PATH OF MEGACLI64>>>>>)))


   to do it you can use the command:

   sudo visudo

   to open the editor and put the text above at the final of the file.

 - Zabbix agent.conf (User Parameter)
   at zabbix_agent.conf, you need to add the follow lines:
 
   UserParameter=disk[*], cat /etc/zabbix/scripts/info.json
   (to get information from json file and create items based on discovery)

   UserParameter=diskinfo[*], /etc/zabbix/script/raiddisc.sh $1 $2 $3   
   (to get values according to the items)

How can I test the script on client side?


You can test the script running it via powershell with these parameters. E.g:

 /etc/zabbix/scripts/raiddisc.sh disk
   ****to fill the /etc/zabbix/scripts/info.json file****
  then;
  cat /etc/zabbix/scripts/info.json

 to see if it is charged with information needed. E.g:
 
{ "data":[
 {"{#SLOTN}":"0","{#DEVID}":"8"}
 ,
 {"{#SLOTN}":"1","{#DEVID}":"9"}
,
 {"{#SLOTN}":"2","{#DEVID}":"10"}
 ]}
 
 So, get the slotn and devid values and put as arg 2 and 3 as it:

 
 /etc/zabbix/scripts/raiddisc.sh diskinfo 0 8
   ****return disk status****