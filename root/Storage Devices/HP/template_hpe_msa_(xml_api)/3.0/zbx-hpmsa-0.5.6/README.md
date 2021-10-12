# zbx-hpmsa
Utility for get statuses of HPE MSA storage components via XML API.  
Zabbix Share page: https://share.zabbix.com/component/mtree/storage-devices/hp/hp-msa-2040-xml-api  
Also you can contact me with Telegram: @asand3r

zbx-hpmsa provides possibility to make Low Level Discovery (LLD) of HPE MSA storage components via it's XML API and retrieve many of some other metrics like health statuses, temperature etc.
Program wrote with Python 3.6, but works with Python 3.4 from EPEL.

**Latest stable versions:** 0.4.1, 0.5.6

__Please, read [Requirements and Installation](https://github.com/asand3r/zbx-hpmsa/wiki/Requirements-and-Installation) section on Wiki page before use.__  

## v0.4.x vs v0.5
Be careful - v0.5 broke compatibility with earlier version by parameter names, you cannot use it with old template.  
E.g. I've renamed some long options:
- '--discovery' => '--lld'
- '--showcache' => '--show-cache'
- '--loginfile' => '--login-file'  
Also, full JSON returned with '-g all|full' parameter was changed and extended in v0.5, so check if you using it.
New attached template has no LLD rule for virtual disks, because of it was removed in new API versions (since MSA 2050) and replaced with 'disk-groups'.
zbx-hpmsa still can found and check 'vdisks', but you must add this rule to template manually.


## Dependencies
 - requests
 - sqlite3

## Feautres  
**Common:**
 - [x] Bulk requests for dependent items (Zabbix 3.4+)
 - [x] HTTPS support
 - [x] Login cache (SQLite3)

**LLD, health check and full data in JSON:**
 - [x] Physical disks
 - [x] Virtual disks
 - [x] Controllers
 - [x] Enclosures
 - [x] Ports
 - [x] Pools
 - [x] Disk groups
 - [x] Power supplies
 - [x] Fans
 - [x] Volumes

## TODO  
- [ ] Add correct processing of round-robin DNS records
- [ ] Add 'install' command to make some preparations before works

## Supported arguments  
**-m|--msa**  
HPE MSA DNS name or IP address.  
**-u|--user**  
Sets MSA username  
**-p|--password**  
Sets password for MSA user  
**-f|--login-file**  
Path to file with login and password data  
**-d|--lld**  
Enables discovery mode.  
**-c|--component**  
Sets component to request.  
**-g|--get-health**  
Get component health status.  
**-v|--version**  
Print script version and exit.    
**--https [verify|direct]**  
Using HTTPS instead HTTP.  
**--show-cache**  
Print cache content and exit.  
**--save-xml**  
Save API response text to a xml.file. Accept path to some file as argument.


## Usage
You can find more examples on Wiki page, but I placed some cases here too.  
- LLD of enclosures, controllers, virtual disks and physical disks:
```bash
[user@server ~] # ./zbx-hpmsa.py --discovery --msa MSA-NAME-OR-IP --component vdisks

{"data":[{"{#VDISKNAME}":"vDisk01"},{"{#VDISKNAME}":"vDisk02"}]}
```
- Request health status of one component. E.g. disk '1.1':
```bash
[user@server ~] # ./zbx-hpmsa.py --msa MSA-NAME-OR-IP --component disks --get 1.1

OK
```
- Request to get all available data in JSON. E.g. all disks or controller 'A':
```bash
[user@server ~] # ./zbx-hpmsa.py --msa MSA-NAME-OR-IP --component disks --get-health full
{"1.1":{"health":"OK","health-num":"0","error":"0","temperature":"25","power-on-hours":"26094"}, ... }
[user@server ~] # ./zbx-hpmsa.py --msa MSA-NAME-OR-IP --component controllers --get-health full
{"A":{"health":"OK","health-num":"0","status":"Operational","status-num":"0","redundancy":"Redundant","redundancy-num":"2","flash-health":"OK","flash-health-num":"0","flash-status":"Installed","flash-status-num":"1"}, ... }
```
It's useful for dependent items. This feature will be fully usable with LLD in Zabbix 4.0 (ZBX-4200), but now you must create all items manually.

## Zabbix templates
In addition I've attached preconfigured Zabbix Templates here, so you can use them in your environment and build your own template based on it.  
Templates using LLD functionality and {HOST.CONN} macro to determine HTTP connection URL, so make sure that it points to right DNS name or IP and your MSA has HTTP protocol enabled.  
Also it expects what MSA storage has default user with default password - **'monitor'@'!monitor'**, but if it isn't true - correct it with '-u' and '-p' or '-l|--login-file' options.  
If you want to use HTTPS, you must correct template and be sure what {HOST.CONN} macro contains FQDN. By the way, look at relevant Wiki page for HTTPS support.  
Started with version v0.5.4 I've attached two new templates for Zabbix 4.0, which using dependent items functionality and can retrieve much more metrics from storage than earlier versions. Check [Wiki](https://github.com/asand3r/zbx-hpmsa/wiki/Zabbix-4.0-Templates) to read more about it.  
Have fun and rate it on [share.zabbix.com](https://share.zabbix.com/component/mtree/storage-devices/hp/hp-msa-2040-xml-api) if you like it. =)

**Tested with**:  
HP MSA P2000 G3, HP MSA 2040, HP MSA 2050, HP MSA2324FC (2000 G2 series, I think, will works too)

**Known Issues**:
- Using '--https verify' with dns round-robin doesn't works correctly. It may give you the "ERROR: -10027", that means the user in not recongnized on the system. It happens because of session key was given from one MSA controller, but the script tries to establish connections the other one. The option '--https direct' will works fine, so you can try to use it instead. I haven't full solution right now, so just don't using it so. =)
