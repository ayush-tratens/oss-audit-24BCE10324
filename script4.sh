#!/bin/bash
# Script 4: Log File Analyzer
# Author: Ayush Singh

# Taking command-line arguments
LOGFILE=$1
KEYWORD=${2:-"error"} # Default keyword is 'error' if $2 is not provided
COUNT=0

# Implementing a do-while style retry if the file is empty or missing
# We use an infinite while loop that breaks when a valid file is provided
while true; do
    # -z checks if variable is empty, -s checks if file exists and is NOT empty
    if [ -z "$LOGFILE" ] || [ ! -s "$LOGFILE" ]; then
        echo "Warning: File '$LOGFILE' is missing or empty."
        read -p "Please enter a valid, non-empty file path: " LOGFILE
    else
        break # File is valid, exit the loop
    fi
done

echo "================================================="
echo "              Log File Analyzer"
echo "================================================="
echo "Scanning '$LOGFILE' for keyword: '$KEYWORD'"
echo "-------------------------------------------------"

# Using a while-read loop to read the file line by line
while IFS= read -r LINE; do
    # Using if-then and grep to check for the keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1)) # Incrementing the counter variable
    fi
done < "$LOGFILE"

echo "Summary: Keyword '$KEYWORD' found $COUNT times."
echo "-------------------------------------------------"

# Printing the last 5 matching lines using tail and grep
if [ "$COUNT" -gt 0 ]; then
    echo "Last 5 matching lines:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi
echo "================================================="
