#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Dhanashri Dhatrak
# Course: Open Source Software

# Array of important system directories [cite: 152]
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=========================================="
echo "       DIRECTORY AUDIT REPORT"
echo "=========================================="
echo "Directory  |  Permissions  |  Owner  |  Size"
echo "------------------------------------------"

# For loop to iterate through the list [cite: 147, 154]
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, and group using ls and awk [cite: 148, 157]
        PERMS=$(ls -ld "$DIR" | awk '{print $1 " " $3 ":" $4}')
        
        # Get directory size using du [cite: 157]
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "$DIR => $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system" [cite: 161]
    fi
done

echo "------------------------------------------"
# Requirement: Check if your software's config directory exists [cite: 162]
PY_CONF="/etc/python3"
if [ -d "$PY_CONF" ]; then
    echo "Python Config ($PY_CONF) exists."
    ls -ld "$PY_CONF"
else
    echo "Note: Standard Python config directory not found in /etc."
fi
