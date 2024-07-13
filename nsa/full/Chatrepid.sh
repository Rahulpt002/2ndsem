#!/bin/bash

# Ensure the script is executed in the directory of interest
cd /path/to/your/directory || exit

# Iterate over each file in the directory
for file in *; do
    # Check if the file is a regular file (not a directory or special file)
    if [ -f "$file" ]; then
        # Get the process ID (PID) of the script itself
        pid=$$

        # Extract the filename without the extension
        filename=$(basename "$file" | cut -d. -f1)

        # Rename the file by appending .pid to its name
        mv "$file" "${filename}.${pid}"
        echo "Renamed $file to ${filename}.${pid}"
    fi
done
