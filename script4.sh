#!/bin/bash
# Script 4: Log File Analyzer
# Author: Dhanashri Dhatrak

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

echo "=========================================="
echo "OSS AUDIT — LOG FILE ANALYZER"
echo "Author: Dhanashri Dhatrak"
echo "=========================================="

if [ -f "$LOGFILE" ]; then
    echo "Analyzing $LOGFILE for keyword: '$KEYWORD'..."
    echo "------------------------------------------"

    while IFS= read -r LINE; do
        if echo "$LINE" | grep -iq "$KEYWORD"; then
            ((COUNT++))
        fi
    done < "$LOGFILE"

    echo
    echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE."
    echo "Last matching entries:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 2

else
    echo "Error: File '$LOGFILE' not found."
    echo "Usage: $0 [filename] [keyword]"
    exit 1
fi
