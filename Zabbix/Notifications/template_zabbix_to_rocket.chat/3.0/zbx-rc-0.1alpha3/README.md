# zbx-rc
Utility to send message from Zabbix into Rocket.Chat.
![alt](https://pp.userapi.com/c847120/v847120545/ca50d/BhNh_-7pRL4.jpg)
Zabbix Share page: None  
You can contact me with Telegram: @asand3r

Program wrote with Python 3.6.

**Latest stable versions:** None

## Dependencies
 - requests

## Feautres  
**Common:**
- [x] Send simple text message
- [x] HTTPS support
- [x] Update config file in place
## TODO  
- [ ] Attach images to message

## Supported arguments  
### Please, read help message first, it always actual.
### Common:  
**-h|--help**  
Print help message  
**-v|--version**  
Print version number  
**-c|--config**  
Path to config file (default: zbx-rc.conf near executable file)  
**--debug**  
Turn on debug output to console

### Positional:  
**install**  
Prepate environment. Create config directory and config example.
>**-c|--conf-dir**  
>Path to conig directory (Default: /etc/zbx-rc)  
>**-g|--group**  
>System group, who will be own config directory (Default: zabbix)

**auth**  
Authenticate to Rocket.Chat  
>**-u|--username**  
>Rocket.Chat username  
>**-p|--password**  
>Rocket.Chat password

**send**  
Send message to Rocket.Chat  
>**to**          Recipient  
>**subject**     Subject  
>**message**     Text body  

## Usage examples
Install script to your system. In fact, it's just creates config directory with config example:
```bash
[root@server ~]# ./zbx-rc.py install
INFO: Script installed successfully. Please, correct /etc/zbx-rc/zbx-rc.conf file for your environment.
[root@server ~]# cat /etc/zbx-rc/zbx-rc.conf
[RCHAT]
protocol = http
server = 10.0.0.1
port = 3000
uid = 
token = 
```

Authenticate to Rocket.Chat with REST API:
```bash
[root@server ~]# ./zbx-rc.py auth -u 'asand3r' -p 'secretPa$$word'
id:     '1234567890'
token:  'c68019f8c6e613180ac296d5870e9cdb4b46f29c'
```
You can provide '--update' parameter to update your config file with received values:
```bash
[root@server ~]# ./zbx-rc.py auth -u 'asand3r' -p 'secretPa$$word' --update
```
Use 'send' parameter to send simple text message:
```bash
[root@server ~]# ./zbx-rc.py send '@asand3r' 'PROBLEM: Free space is low (5%)' 'Free space on disk C:\ too low - 5%'
```
