#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Ayush Singh

PACKAGE="python3"

echo "======================================"
echo "      FOSS Package Inspector"
echo "======================================"

# Checking if the package is installed using dpkg (Ubuntu/Debian)
# We use if-then-else and pipe with grep as required by the rubric
if dpkg -l | grep -q "^ii  $PACKAGE "; then
    echo "[+] $PACKAGE is installed on this system."
    
    # Extracting the version number
    VERSION=$(dpkg -l | grep "^ii  $PACKAGE " | awk '{print $3}')
    echo "[-] Version: $VERSION"
    
    echo "--------------------------------------"
    
    # Using a case statement to print a description based on package name
    case $PACKAGE in
        python3)
            echo "Description: A high-level, general-purpose programming language shaped entirely by its community."
            ;;
        mysql-server)
            echo "Description: A popular open-source relational database management system."
            ;;
        firefox)
            echo "Description: A free and open-source web browser developed by the Mozilla Foundation."
            ;;
        *)
            echo "Description: Unknown open-source package."
            ;;
    esac
else
    echo "[-] $PACKAGE is NOT installed."
    echo "You can install it by running: sudo apt install $PACKAGE"
fi
echo "======================================"
