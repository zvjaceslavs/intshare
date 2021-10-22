#!/bin/bash
su pn400 -c "/export/home/pn400/Main/anactl status | grep $1 | awk '{ print substr(\$6,2)}'| sed s/]//"