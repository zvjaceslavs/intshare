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


def get_power_info(ip, port, user, password):
    command = "/usr/bin/expect /root/HW_S3900/power_info.sh " + \
        ip + " " + user + " " + password + " " + port + " >/dev/null 2>&1"
    os.system(command)
    power_info = os.popen(
        "more /root/HW_S3900/powerinfo|grep -Eo '[0-9]+[ ]+[0-9]+.*AC'").read().splitlines()
    return power_info


def handle_power_info(power_info):
    power_info_list = []
    for info in power_info:
        info = re.sub(r"\s{2,}", " ", info.strip())
        power_location_status = info.split(" ")[0:3]
        power_info_list.append(power_location_status)
    return power_info_list


def get_power_location_json(power_info_list):
    power_location_list = []
    for info in power_info_list:
        power_location_dic = {}
        power_location_dic['{#POWERNAME}'] = "Enclosure " + \
            info[0] + " " + "Power " + info[1]
        power_location_list.append(power_location_dic)
    power_location_json = json.dumps(
        power_location_list, separators=(',', ':'))
    return power_location_json


def create_power_status_file(power_info_list):
    with open('/root/HW_S3900/powerstatus.txt', 'w') as f:
        for info in power_info_list:
            key = "Sx900.power.[" + "Enclosure " + \
                info[0] + " " + "Power " + info[1] + "]"
            value = info[2]
            f.write(Sx900_IP + " \"" + key + "\" " + value + "\n")
    return '/root/HW_S3900/powerstatus.txt'


def send_info_to_zabbix(power_location_json, file_url):
    send_power_location = zabbix_sender + " -z " + zabbix_serevr + " -p " + zabbix_port + \
        " -s " + Sx900_IP + " -k Sx900_power_discovery -o '" + power_location_json + "'"
    os.system(send_power_location)
    time.sleep(30)
    send_power_status = zabbix_sender + " -z " + \
        zabbix_serevr + " -p " + zabbix_port + " -i " + file_url
    os.system(send_power_status)


if __name__ == "__main__":
    power_info = get_power_info(
        Sx900_IP, Sx900_Port, Sx900_Username, Sx900_Pwd)
    power_info_list = handle_power_info(power_info)
    power_location_json = get_power_location_json(power_info_list)
    file_url = create_power_status_file(power_info_list)
    send_info_to_zabbix(power_location_json, file_url)
