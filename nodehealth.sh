#!/bin/bash

#######################
# Author: Asif
# Date: 14/07/2024

# This script output the node health

# Version: v1
#########################

set -x # debug mode
set -e # exit the script when there is error
set -o pipefail


df -h

free -g

nproc

ps -ef | grep amazon | awk -F" " '{print $2}'