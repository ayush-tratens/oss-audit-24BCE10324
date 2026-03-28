#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Ayush Singh

# Array of key system directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "================================================="
echo "           Directory Audit Report"
echo "================================================="

# Using a for loop to iterate through the array of directories
for DIR in "${DIRS[@]}"; do

    # Checking if the directory actually exists using an if-then statement
    if [ -d "$DIR" ]; then
    
        # Extracting permissions ($1), owner ($3), and group ($4) using ls and awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        
        # Calculating directory size using du. 
        # 2>/dev/null suppresses "permission denied" errors for restricted files.
        # cut -f1 extracts just the human-readable size value.
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        # Outputting the collected data
        echo "Directory   : $DIR"
        echo "Perms/Owner : $PERMS"
        echo "Size        : $SIZE"
        echo "-------------------------------------------------"
    else
        echo "Directory   : $DIR"
        echo "Status      : [Not Found or Not a Directory]"
        echo "-------------------------------------------------"
    fi
done

echo "Audit Complete."
echo "================================================="
