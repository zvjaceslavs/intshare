#!/usr/bin/env python3

import os
import sys
import json
import re

TYPE_BCDEV = "bcdev"
TYPE_CSET = "cset"
TYPE_CDEV = "cdev"

DIRS = {
    TYPE_BCDEV: '/sys/block',
    TYPE_CSET: '/sys/fs/bcache',
    TYPE_CDEV: '/sys/block',
}

KEYS = {
    TYPE_BCDEV: '{#BCDEV}',
    TYPE_CSET: '{#CSET}',
    TYPE_CDEV: '{#CDEV}'
}

ITEMS = {
    TYPE_BCDEV: {
        'dirty_data',
        'io_errors',
        'readahead',
        'running',
        'state',
        'writeback_running',
    },

    TYPE_CSET: {
        'average_key_size',
        'cache_available_percent',
        'btree_cache_size',
        'congested',
        'root_usage_percent',
        'tree_depth'
    },

    TYPE_CDEV: {
        'btree_written',
        'io_errors',
        'metadata_written',
        'nbuckets',
        'written'
    }
}

PERIODS = ['five_minute', 'hour', 'day', 'total']

UNITS = {
    'k': 1024,
    'M': 1024 ** 2,
    'G': 1024 ** 3,
    'T': 1024 ** 4,
}


def convert(v):
    return int(float(v[:-1]) * UNITS[v[-1]])


CONV = [int, float, convert]


def parse(v):
    for t in CONV:
        try:
            return t(v)
        except:
            continue

    return v


def readvar(fn):
    with open(fn, 'r') as f:
        return parse(f.read().rstrip())


def discover(t):
    dir = DIRS[t]

    if t == TYPE_BCDEV:
        return [
            (f, '') for f in os.listdir(dir) if f.startswith('bcache')
        ]
    elif t == TYPE_CSET:
        return [
            (f, '') for f in os.listdir(dir) if os.path.isdir(os.path.join(dir, f))
        ]
    elif t == TYPE_CDEV:
        cdevs = set()
        for cs, _ in discover(TYPE_CSET):
            links = [x for x in os.listdir(
                os.path.join(
                    DIRS[TYPE_CSET], cs
                )
            ) if re.match(r'^cache\d+$', x)]

            for link in links:
                cdev = os.path.split(
                    os.path.realpath(
                        os.path.join(
                            DIRS[TYPE_CSET], cs, link
                        )
                    )
                )

                cdevs.add((os.path.split(cdev[0])[1], cdev[0]))

        return sorted(cdevs, key=lambda x: x[0])


def read_vars(dir, vars=None):
    o = {}

    for fn in os.listdir(dir):
        if vars and not fn in vars:
            continue

        path = os.path.join(dir, fn)
        if not os.path.isfile(path):
            continue

        o[fn] = readvar(path)

    return o


def get_vars(t, dev, stats=False, period='day'):
    if t == TYPE_CDEV:
        dirs = [{x[0]:x[1] for x in discover(t)}[dev]]
    else:
        dirs = [DIRS[t], dev]

    if t in {TYPE_BCDEV, TYPE_CDEV}:
        dirs.append('bcache')

    if stats:
        dirs.append(f'stats_{period}')

    return read_vars(
        os.path.join(*dirs),
        ITEMS[t] if not stats else None
    )


a1 = sys.argv[1]
a2 = sys.argv[2]

if a1 == 'discover':
    r = [{KEYS[a2]: x[0]} for x in discover(a2)]
elif a1 == 'vars':
    r = {
        'vars': get_vars(a2, sys.argv[3]),
    }

    if a2 != TYPE_CDEV:
        r['stats'] = {
            p: get_vars(a2, sys.argv[3], stats=True, period=p)
            for p in PERIODS
        }

print(
    json.dumps(r, indent=' ')
)
