#!/bin/bash

#######################
# Author: Asif
# Date: 14/07/2024

# This script output the node health

# Version: v1
#######################

echo "Print the disk space"
df -h

echo "Print the memory"
free -g

echo "Print the cpu"
nproc