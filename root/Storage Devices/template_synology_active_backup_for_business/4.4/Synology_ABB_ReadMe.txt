Zabbix template for monitoring Synology Active Backup for Business tasks.

By Glenn Peeters

Features
Discovery of all backup tasks (VM, Physical server, SMB and PC)
Item -- Status of backup tasks
Item -- Transferred bytes
Item -- Start time backup
Item -- End time backup
Trigger -- Backup operation error


Installation
Synology configuration
Enable SSH on Synology 
Create the scheduled task on your Synology that exports data from the Active Backup for Business database to a CSV file, paste this command in the task (change paths to Active Backup location and location for exported CSV file):

sqlite3 -header -csv /volumeX/@ActiveBackup/activity.db "select config_device_id, device_name, status, transfered_bytes, time_start, time_end  from (SELECT * FROM device_result_table ORDER BY config_device_id) GROUP BY config_device_id;" | awk '{gsub(/\"/,"")};1' > /volumeX/sharename/ActiveBackupExport.csv

sqlite3 -header -csv /volumeX/@ActiveBackup/config.db "select device_id, host_name, backup_type from device_table" | awk '{gsub(/\"/,"")};1' > /volumeX/Server/ActiveBackupHostExport.csv

Let this scheduled task run every 10mins (adjust as you wish)


Zabbix configuration
Import value mapping - Synology_ABB_ValueMapping.xml
Import template - Synology_ABB_Template.xml
Add template to Synology host