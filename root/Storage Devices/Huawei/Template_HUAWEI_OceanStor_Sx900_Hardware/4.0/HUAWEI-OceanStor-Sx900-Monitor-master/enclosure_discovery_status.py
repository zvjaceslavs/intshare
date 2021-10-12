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


def get_enclosure_info(ip, port, user, password):
    command = "/usr/bin/expect /root/HW_S3900/enclosure_info.sh " + \
        ip + " " + user + " " + password + " " + port + " >/dev/null 2>&1"
    os.system(command)
    enclosure_info = os.popen(
        "more /root/HW_S3900/enclosureinfo|grep -Eo '[0-9]+.*SAS'").read().splitlines()
    return enclosure_info


def handle_enclosure_info(enclosure_info):
    enclosure_info_list = []
    for info in enclosure_info:
        info = re.sub(r"\s{2,}", " ", info)
        enclosure_location_status = info.split(" ")[0:4]
        enclosure_info_list.append(enclosure_location_status)
    return enclosure_info_list


def get_enclosure_location_json(enclosure_info_list):
    enclosure_location_list = []
    for info in enclosure_info_list:
        enclosure_location_dic = {}
        enclosure_location_dic['{#ENCLOSURENAME}'] = "Enclosure " + \
            info[0] + " " + info[1]
        enclosure_location_list.append(enclosure_location_dic)
    enclosure_location_json = json.dumps(
        enclosure_location_list, separators=(',', ':'))
    return enclosure_location_json


def create_enclosure_status_file(enclosure_info_list):
    with open('/root/HW_S3900/enclosurestatus.txt', 'w') as f:
        for info in enclosure_info_list:
            key = "Sx900.enclosure.[" + "Enclosure " + \
                info[0] + " " + info[1] + "]"
            value = info[2]
            f.write(Sx900_IP + " \"" + key + "\" " + value + "\n")
    return '/root/HW_S3900/enclosurestatus.txt'


def create_enclosure_temp_file(enclosure_info_list):
    with open('/root/HW_S3900/enclosuretemp.txt', 'w') as f:
        for info in enclosure_info_list:
            key = "Sx900.enclosure.temp[" + "Enclosure " + \
                info[0] + " " + info[1] + "]"
            value = info[3]
            f.write(Sx900_IP + " \"" + key + "\" " + value + "\n")
    return '/root/HW_S3900/enclosuretemp.txt'


def send_info_to_zabbix(enclosure_location_json, enclosure_status_file_url, enclosure_temp_file_url):
    send_enclosure_location = zabbix_sender + " -z " + zabbix_serevr + " -p " + zabbix_port + \
        " -s " + Sx900_IP + " -k Sx900_enclosure_discovery -o '" + enclosure_location_json + "'"
    os.system(send_enclosure_location)
    time.sleep(30)
    send_enclosure_status = zabbix_sender + " -z " + \
        zabbix_serevr + " -p " + zabbix_port + " -i " + enclosure_status_file_url
    os.system(send_enclosure_status)
    send_enclosure_temp = zabbix_sender + " -z " + \
        zabbix_serevr + " -p " + zabbix_port + " -i " + enclosure_temp_file_url
    os.system(send_enclosure_temp)


if __name__ == "__main__":
    enclosure_info = get_enclosure_info(
        Sx900_IP, Sx900_Port, Sx900_Username, Sx900_Pwd)
    enclosure_info_list = handle_enclosure_info(enclosure_info)
    enclosure_location_json = get_enclosure_location_json(enclosure_info_list)
    enclosure_status_file_url = create_enclosure_status_file(enclosure_info_list)
    enclosure_temp_file_url = create_enclosure_temp_file(enclosure_info_list)
    send_info_to_zabbix(enclosure_location_json, enclosure_status_file_url, enclosure_temp_file_url)
