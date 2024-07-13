
#!/bin/bash

echo "Enter the time (HHMM):"
read time

if [ "$time" -ge 0000 ] && [ "$time" -lt 1200 ]; then
    echo "It's morning."
elif [ "$time" -ge 1200 ] && [ "$time" -lt 1800 ]; then
    echo "It's afternoon."

else
    echo "It's night"
fi
