#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Syntax should be $0 <word>"
  exit 1
fi

word=$1
count=0

while [ $# -ne 0 ]; do
  for wd in $(cat $1); do
    if [ $wd = $word ]; then
      count=$(expr $count + 1)
    fi
  done
  shift
done

echo "Number of occurrences of '$word': $count"
