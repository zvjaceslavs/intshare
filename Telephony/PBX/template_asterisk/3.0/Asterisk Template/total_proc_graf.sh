#!/bin/bash

PROC=$(/bin/ps -A | wc -l)

echo "$PROC"
