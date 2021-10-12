#!/usr/bin/python3
# coding: utf-8


############################################################
# Varnish - metrics
#
# Author: Corentin MONTEL       <corentin.montel@yooda.com>
# Author: Robin TALMA           <robin.talma@yooda.com>
############################################################


import sys
import subprocess
import re
import os


def ping_varnish():
    """
    Ping varnish using CLI varnishadm
    :return:
    """
    result = subprocess.Popen(["varnishadm", "ping"], stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    out, err = result.communicate()

    print(out.decode('utf-8').split(' ', 1)[0])


def get_varnish_port():
    """
    Get the varnish port using Linux netstat command
    :return:
    """

    try:
        result = subprocess.Popen(["sudo", "netstat", "-ltunp"], stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
        out, err = result.communicate()
        out = out.decode('utf-8').split("\n")
    except:
        print("Unable to execute command \"sudo netstat -ltunp\"")
        quit(0)

    for line in out:
        line = re.sub(' +', ' ', line)

        if line.find('varnishd') > 0 and re.search(r'0\.0\.0\.0:[0-9]+', line) is not None:
            port = re.search(r'0\.0\.0\.0:([0-9]+)', line)

            print(port.group(1))
            quit(0)

    print("NotFound")
    quit(1)

def get_sick_backend():
    """
    Check that all backend are healthy, return sick backend name instead
    :return:
    """
    try:
        result = subprocess.Popen(["varnishadm", "backend.list"], stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
        out, err = result.communicate()
        out = out.decode('utf-8').split("\n")
    except:
        print("Unable to execute command \"varnishadm backend.list\"")
        quit(1)

    sicks = []
    for line in out:
        line = re.sub(' +', ' ', line)

        sick_backend = re.search(r'^([a-zA-Z0-9_.-]+) probe Sick', line)
        if sick_backend is not None:
            sicks.append(sick_backend.group(1))

    if len(sicks) == 0:
        quit(0)
    else:
        print(', '.join(sicks))
        quit(0)


def get_cache_size():
    """
    Return the cache size in /var/lib/varnish in bytes
    :return:
    """
    total_size = 0
    for dirpath, dirnames, filenames in os.walk("/var/lib/varnish"):
        for f in filenames:
            fp = os.path.join(dirpath, f)
            # skip if it is symbolic link
            if not os.path.islink(fp):
                total_size += os.path.getsize(fp)

    print(total_size)


def get_cache_entries():
    """
    Get the total number of objects in cache
    :return:
    """
    # MAIN.n_object
    try:
        result = subprocess.Popen(["varnishstat", "-1"], stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
        out, err = result.communicate()
        out = out.decode('utf-8').split("\n")
    except:
        print("Unable to execute command \"varnishadm backend.list\"")
        quit(1)

    for line in out:
        line = re.sub(' +', ' ', line)
        match = re.search(r'^MAIN.n_object ([0-9]+)', line)

        if match is not None:
            print(match.group(1))
            quit(0)

    print('Error')
    quit(1)


def get_cached_requests():
    """
    Get the percentage of cached request
    :return:
    """
    # MAIN.n_object
    try:
        result = subprocess.Popen(["varnishstat", "-1"], stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
        out, err = result.communicate()
        out = out.decode('utf-8').split("\n")
    except:
        print("Unable to execute command \"varnishadm backend.list\"")
        quit(1)

    total_reqs = None
    fetched_reqs = None

    for line in out:
        line = re.sub(' +', ' ', line)
        match_total = re.search(r'^MAIN.s_req ([0-9]+)', line)
        match_fetched = re.search(r'^MAIN.s_fetch ([0-9]+)', line)

        if match_total is not None:
            total_reqs = int(match_total.group(1))

        if match_fetched is not None:
            fetched_reqs = int(match_fetched.group(1))

        if total_reqs is not None and fetched_reqs is not None:
            cached_reqs = total_reqs - fetched_reqs

            print((cached_reqs / total_reqs) * 100)
            quit(0)
    print('Error')
    quit(1)


def get_uncached_requests():
    """
    Get the percentage of uncached request
    :return:
    """
    # MAIN.n_object
    try:
        result = subprocess.Popen(["varnishstat", "-1"], stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
        out, err = result.communicate()
        out = out.decode('utf-8').split("\n")
    except:
        print("Unable to execute command \"varnishadm backend.list\"")
        quit(1)

    total_reqs = None
    fetched_reqs = None

    for line in out:
        line = re.sub(' +', ' ', line)
        match_total = re.search(r'^MAIN.s_req ([0-9]+)', line)
        match_fetched = re.search(r'^MAIN.s_fetch ([0-9]+)', line)

        if match_total is not None:
            total_reqs = int(match_total.group(1))

        if match_fetched is not None:
            fetched_reqs = int(match_fetched.group(1))

        if total_reqs is not None and fetched_reqs is not None:
            cached_reqs = total_reqs - fetched_reqs

            print(100 - ((cached_reqs / total_reqs) * 100))
            quit(0)
    print('Error')
    quit(1)


if __name__ == '__main__':
    args_length = len(sys.argv)
    if args_length < 2:
        print("Missing cmd")
        quit(1)

    cmd = sys.argv[1]
    args = sys.argv[2:args_length]

    if 'ping' == cmd:
        ping_varnish()

    elif 'port' == cmd:
        get_varnish_port()

    elif 'backend' == cmd:
        get_sick_backend()

    elif 'cache_size' == cmd:
        get_cache_size()

    elif 'cache_entries' == cmd:
        get_cache_entries()

    elif 'cached_requests' == cmd:
        get_cached_requests()

    elif 'uncached_requests' == cmd:
        get_uncached_requests()

    else:
        print("Unrecognized command %s" % cmd)
        quit(1)
    quit(0)
