#!/bin/bash

#######################
# Author: Asif
# Date: 14/07/2024

# This script output the node health

# Version: v1
########################

set -x # debug mode

df -h

free -g

nproc