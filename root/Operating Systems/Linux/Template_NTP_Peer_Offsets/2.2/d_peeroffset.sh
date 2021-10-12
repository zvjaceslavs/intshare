#!/bin/bash

ntpq -pn | grep ${1} | awk '{print $9}'
