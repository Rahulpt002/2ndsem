#!/bin/bash
if [ $# -ne 2 ]
    then
    echo "Syntax is $0 <string> <filename>"
    exit 1
fi
term=`tty`
exec<$2
while read line
do
    echo $line | grep $1>/dev/null
    echo $line | grep -w $1>/dev/null
    if [ $? -ne 0 ]
        then
        echo $line >>temp
    fi
done
exec<$term
mv temp $2
