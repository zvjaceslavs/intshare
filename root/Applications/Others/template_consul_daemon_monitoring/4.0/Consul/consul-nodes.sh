#!/bin/bash

if [ $1 = "registered" ]; then
consul catalog nodes |sed -n '1!p' |wc -l
else
  echo "Bad argument"
fi
