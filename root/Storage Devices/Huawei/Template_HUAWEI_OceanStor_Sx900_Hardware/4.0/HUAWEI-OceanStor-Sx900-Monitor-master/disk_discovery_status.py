#!/usr/bin/python
# coding=utf-8

import os
import re
import json
import time

zabbix_sender = "/usr/bin/zabbix_sender"
zabbix_serevr = '192.168.128.181'
zabbix_port = '10051'

Sx900_IP = '192.168.137.52'
Sx900_Port = '22'
Sx900_Username = 'admin'
Sx900_Pwd = 'Admin@storage'


def get_disk_info(ip, port, user, password):
    command = "/usr/bin/expect /root/HW_S3900/disk_info.sh " + \
        ip + " " + user + " " + password + " " + port + " >/dev/null 2>&1"
    os.system(command)
    disk_info = os.popen(
        "more /root/HW_S3900/diskinfo|grep -Eo '\([0-9]+,[0-9]+\).*SAS'").read().splitlines()
    return disk_info


def handle_disk_info(disk_info):
    disk_info_list = []
    for info in disk_info:
        info = re.sub(r"\s{2,}", " ", info.strip())
        disk_location_status = info.split(" ")[0:2]
        disk_info_list.append(disk_location_status)
    return disk_info_list


def get_disk_location_json(disk_info_list):
    disk_location_list = []
    for info in disk_info_list:
        disk_location_dic = {}
        disk_location_dic['{#DISKNAME}'] = "Disk" + \
            info[0].replace("(", " ").replace(")", "").replace(",", "_")
        disk_location_list.append(disk_location_dic)
    disk_location_json = json.dumps(
        disk_location_list, separators=(',', ':'))
    return disk_location_json


def create_disk_status_file(disk_info_list):
    with open('/root/HW_S3900/diskstatus.txt', 'w') as f:
        for info in disk_info_list:
            key = "Sx900.disk.[" + "Disk" + info[0].replace(
                "(", " ").replace(")", "").replace(",", "_") + "]"
            value = info[1]
            f.write(Sx900_IP + " \"" + key + "\" " + value + "\n")
    return '/root/HW_S3900/diskstatus.txt'


def send_info_to_zabbix(disk_location_json, file_url):
    send_disk_location = zabbix_sender + " -z " + zabbix_serevr + " -p " + zabbix_port + \
        " -s " + Sx900_IP + " -k Sx900_disk_discovery -o '" + disk_location_json + "'"
    os.system(send_disk_location)
    time.sleep(60)
    send_disk_status = zabbix_sender + " -z " + \
        zabbix_serevr + " -p " + zabbix_port + " -i " + file_url
    os.system(send_disk_status)


if __name__ == "__main__":
    disk_info = get_disk_info(
        Sx900_IP, Sx900_Port, Sx900_Username, Sx900_Pwd)
    disk_info_list = handle_disk_info(disk_info)
    disk_location_json = get_disk_location_json(disk_info_list)
    file_url = create_disk_status_file(disk_info_list)
    send_info_to_zabbix(disk_location_json, file_url)
