#!/bin/bash
echo "DIS QL($1) CURDEPTH" | runmqsc | grep "[C]URDEPTH(" | grep -o '[0-9]\+'                                                                 
