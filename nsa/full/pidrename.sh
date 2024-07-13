#!/bin/bash

# Check if the correct number of arguments is provided
if [[ $# -ne 1 ]]; then
    echo "Syntax: $0 <directory>"
    exit 1
fi

# Iterate through each file in the specified directory
for file in "$1"/*; do
    if [[ -f "$file" ]]; then
        # Get the base filename without extension
        base_name="${file%.*}"
        # Append the process ID (PID) of the shell
        new_name="${base_name}_$$.${file##*.}"
        # Rename the file
        mv "$file" "$new_name"
        echo "Renamed: $file -> $new_name"
    fi
done

echo "All ordinary files in $1 have been renamed."
