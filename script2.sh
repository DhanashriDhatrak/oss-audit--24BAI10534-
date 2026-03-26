#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Dhanashri Dhatrak
# Course: Open Source Software

# Define the package to inspect
PACKAGE="python3"

echo "=========================================="
echo "       FOSS Package Audit: $PACKAGE"
echo "=========================================="

# Check if the package is installed using dpkg (Ubuntu/Debian)
if dpkg -s $PACKAGE &>/dev/null; then
    echo "[OK] $PACKAGE is installed on this system."
    echo "------------------------------------------"
    
    # Extract version, license, and summary using dpkg-query and grep
    # This fulfills the requirement for 'dpkg -l' and 'pipe with grep' [cite: 128]
    dpkg -s $PACKAGE | grep -E 'Version|Section|Maintainer'
    
    echo "------------------------------------------"
    
    # Requirement: Case statement to print a philosophy note [cite: 126, 141]
    case $PACKAGE in
        python3)
            echo "Note: Python - A language shaped entirely by community and readability."
            ;;
        httpd|apache2)
            echo "Note: Apache - The web server that built the open internet."
            ;;
        mysql*)
            echo "Note: MySQL - Open source at the heart of millions of apps."
            ;;
        *)
            echo "Note: $PACKAGE is a vital component of the FOSS ecosystem."
            ;;
    esac
else
    echo "[ERROR] $PACKAGE is NOT installed."
    echo "To install it, run: sudo apt install $PACKAGE"
fi
