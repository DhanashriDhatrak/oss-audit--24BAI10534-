#!/bin/bash

# Script 1: System Identity Report

# Author: Dhanashri Dhatrak

echo "=========================================="
echo "        PYTHON OPEN SOURCE AUDIT"
echo "=========================================="
echo "Kernel Version : $(uname -r)"
echo "Current User   : $(whoami)"
echo "System Uptime  : $(uptime -p)"
echo "Date and Time  : $(date)"
echo "------------------------------------------"
echo "This system is running on $(lsb_release -ds)"
