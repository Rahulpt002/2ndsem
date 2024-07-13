#!/bin/bash

if [ $# -gt 1 ]; then
  echo "Syntax is <$0> [<filename>]"
  exit 1
fi

flag=0
if [ $# -eq 1 ]; then
  term=`tty`
  exec < $1
  flag=1
fi

no1=0
nowds=0

while read line; do
  no1=`expr $no1 + 1`
  set $line >/dev/null
  nowds=`expr $nowds + $#`
done

echo "number of lines=$no1"
echo "number of words=$nowds"

if [ $flag -eq 1 ]; then
  exec < $term
fi

exit 0
