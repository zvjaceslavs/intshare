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


def get_fan_info_list(ip, port, user, password):
    command = "/usr/bin/expect /root/HW_S3900/fan_info.sh " + \
        ip + " " + user + " " + password + " " + port + " >/dev/null 2>&1"
    os.system(command)
    Enclosure_ID = os.popen(
        "more /root/HW_S3900/faninfo|grep 'Enclosure ID'|awk '{print $4}'").read().splitlines()
    Fan_ID = os.popen(
        "more /root/HW_S3900/faninfo|grep 'Fan ID'|awk '{print $4}'").read().splitlines()
    Fan_Status = os.popen(
        "more /root/HW_S3900/faninfo|grep 'Status'|awk '{print $3}'").read().splitlines()
    fan_info_list = []
    for i in range(len(Fan_ID)):
        fan_info = []
        fan_info.append(Enclosure_ID[i])
        fan_info.append(Fan_ID[i])
        fan_info.append(Fan_Status[i])
        fan_info_list.append(fan_info)
    return fan_info_list


def get_fan_location_json(fan_info_list):
    fan_location_list = []
    for info in fan_info_list:
        fan_location_dic = {}
        fan_location_dic['{#FANNAME}'] = "Enclosure " + \
            info[0] + " " + "Fan " + info[1]
        fan_location_list.append(fan_location_dic)
    fan_location_json = json.dumps(
        fan_location_list, separators=(',', ':'))
    return fan_location_json


def create_fan_status_file(fan_info_list):
    with open('/root/HW_S3900/fanstatus.txt', 'w') as f:
        for info in fan_info_list:
            key = "Sx900.fan.[" + "Enclosure " + \
                info[0] + " " + "Fan " + info[1] + "]"
            value = info[2]
            f.write(Sx900_IP + " \"" + key + "\" " + value + "\n")
    return '/root/HW_S3900/fanstatus.txt'


def send_info_to_zabbix(fan_location_json, file_url):
    send_fan_location = zabbix_sender + " -z " + zabbix_serevr + " -p " + zabbix_port + \
        " -s " + Sx900_IP + " -k Sx900_fan_discovery -o '" + fan_location_json + "'"
    os.system(send_fan_location)
    time.sleep(30)
    send_fan_status = zabbix_sender + " -z " + \
        zabbix_serevr + " -p " + zabbix_port + " -i " + file_url
    os.system(send_fan_status)


if __name__ == "__main__":
    fan_info_list = get_fan_info_list(
        Sx900_IP, Sx900_Port, Sx900_Username, Sx900_Pwd)
    fan_location_json = get_fan_location_json(fan_info_list)
    file_url = create_fan_status_file(fan_info_list)
    send_info_to_zabbix(fan_location_json, file_url)
