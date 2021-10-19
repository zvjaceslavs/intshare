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


def get_controller_info_list(ip, port, user, password):
    command = "/usr/bin/expect /root/HW_S3900/controller_info.sh " + \
        ip + " " + user + " " + password + " " + port + " >/dev/null 2>&1"
    os.system(command)
    controller_ID = os.popen(
        "more /root/HW_S3900/controllerinfo|grep 'Controller ID'|awk '{print $4}'").read().splitlines()
    controller_Status = os.popen(
        "more /root/HW_S3900/controllerinfo|grep 'Health Status'|awk '{print $4}'").read().splitlines()
    controller_info_list = []
    for i in range(len(controller_ID)):
        controller_info = []
        controller_info.append(controller_ID[i])
        controller_info.append(controller_Status[i])
        controller_info_list.append(controller_info)
    return controller_info_list


def get_controller_location_json(controller_info_list):
    controller_location_list = []
    for info in controller_info_list:
        controller_location_dic = {}
        controller_location_dic['{#CONTROLLERNAME}'] = "Controller " + info[0]
        controller_location_list.append(controller_location_dic)
    controller_location_json = json.dumps(
        controller_location_list, separators=(',', ':'))
    return controller_location_json


def create_controller_status_file(controller_info_list):
    with open('/root/HW_S3900/controllerstatus.txt', 'w') as f:
        for info in controller_info_list:
            key = "Sx900.controller.[" + "Controller " + info[0] + "]"
            value = info[1]
            f.write(Sx900_IP + " \"" + key + "\" " + value + "\n")
    return '/root/HW_S3900/controllerstatus.txt'


def send_info_to_zabbix(controller_location_json, file_url):
    send_controller_location = zabbix_sender + " -z " + zabbix_serevr + " -p " + zabbix_port + \
        " -s " + Sx900_IP + " -k Sx900_controller_discovery -o '" + controller_location_json + "'"
    os.system(send_controller_location)
    time.sleep(30)
    send_controller_status = zabbix_sender + " -z " + \
        zabbix_serevr + " -p " + zabbix_port + " -i " + file_url
    os.system(send_controller_status)


if __name__ == "__main__":
    controller_info_list = get_controller_info_list(
        Sx900_IP, Sx900_Port, Sx900_Username, Sx900_Pwd)
    controller_location_json = get_controller_location_json(controller_info_list)
    file_url = create_controller_status_file(controller_info_list)
    send_info_to_zabbix(controller_location_json, file_url)
