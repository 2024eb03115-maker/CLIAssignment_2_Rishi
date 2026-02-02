#!/bin/bash

# Check if file argument is provided
if [ $# -ne 1 ]; then
    echo "Please provide only one input whch should be name of a log file"
    exit 1
fi

# Chech if the 
if [[ ! -f "$1" ]]; then
    echo "Error: File '$1' does not exist."
    exit 1
fi

if [[ ! -r "$1" ]]; then
    echo "Error: File '$1' is not readable."
    exit 1
fi

# Count occurrences
TOTAL=$(wc -l < "$1")
INFO_COUNT=$(grep -c " INFO " "$1")
WARN_COUNT=$(grep -c " WARNING " "$1")
ERR_COUNT=$(grep -c " ERROR " "$1")

# Get most recent error
LAST_ERROR=$(grep " ERROR " "$1" | tail -n 1)

# Generate report
REPORT_DATE=$(date +%Y%m%d)
REPORT_FILE="logsummary_${REPORT_DATE}.txt"

{
    echo "Log Analysis Report - $(date)"
    echo "----------------------------"
    echo "Total Entries: $TOTAL"
    echo "INFO: $INFO_COUNT"
    echo "WARNING: $WARN_COUNT"
    echo "ERROR: $ERR_COUNT"
    echo "----------------------------"
    echo "Most Recent Error:"
    echo "${LAST_ERROR:-None}"
} > "$REPORT_FILE"

# Output to console
cat "$REPORT_FILE"
echo "Report saved to $REPORT_FILE"
