#!/bin/bash
# Script 1: System Identity Report
# Author: Ayush Singh
# Variables for Project Identity
STUDENT_NAME="Ayush Singh"
REG_NO="24BCE10324"
SOFTWARE_CHOICE="Python"

# Gathering System Information using command substitution
KERNEL_V=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
HOME_DIR=$HOME
DATE_TIME=$(date "+%Y-%m-%d %H:%M:%S")

# Extracting the Linux Distribution name safely
if [ -f /etc/os-release ]; then
    . /etc/os-release
    DISTRO=$PRETTY_NAME
else
    DISTRO=$(uname -s)
fi

# Defining the OS License (Linux kernel is under GPL v2)
OS_LICENSE="GNU General Public License v2 (GPLv2)"

# Displaying the final output with basic formatting
echo "======================================================="
echo "Course: Open Source Software"
echo "Student: $STUDENT_NAME ($REG_NO)"
echo "Chosen Software: $SOFTWARE_CHOICE"
echo "======================================================="
echo "            --- System Identity Report ---"
echo "OS Distribution   : $DISTRO"
echo "Kernel Version    : $KERNEL_V"
echo "Current User      : $USER_NAME"
echo "Home Directory    : $HOME_DIR"
echo "System Uptime     : $UPTIME"
echo "Current Date/Time : $DATE_TIME"
echo "OS License        : $OS_LICENSE"
echo "======================================================="
