#!/bin/bash
# Usage: my_cp.sh source_file destination_directory

source_file="$1"
destination_directory="$2"

# Check if source file exists
if [ ! -f "$source_file" ]; then
    echo "Error: Source file '$source_file' does not exist."
    exit 1
fi

# Check if destination directory exists
if [ ! -d "$destination_directory" ]; then
    echo "Error: Destination directory '$destination_directory' does not exist."
    exit 1
fi

# Perform the copy
cp -v "$source_file" "$destination_directory" || {
    echo "Error: Copy failed."
    exit 1
}

echo "File '$source_file' successfully copied to '$destination_directory'."
