#!/bin/bash

# Check number of arguments
if [ "$#" -ne 1 ]; then
    echo "Error: Invalid number of arguments."
    exit 1
fi


# Check if the path exists
if [ ! -e "$1" ]; then
    echo "Error: The path '$1' does not exist."
    exit 1
fi

# Case 1: The argument is a file
if [ -f "$1" ]; then
    stats=$(wc "$1")
    read lines words chars filename <<< "$stats"
    echo "Lines: $lines"
    echo "Words: $words"
    echo "Characters: $chars"

# Case 2: The argument is a directory
elif [ -d "$1" ]; then
    
    total_files=$(find "$1" -maxdepth 1 -type f | wc -l)
    
    txt_files=$(find "$1" -maxdepth 1 -type f -name "*.txt" | wc -l)
    
    echo "Total files: $total_files"
    echo "Total .txt files: $txt_files"

else
    echo "Error: '$1' is neither a regular file nor a directory."
    exit 1
fi
