#!/bin/bash

if [ $# -ne 2 ]
 then
  echo "Syntax is <$0> <file1> <file2>"
  exit 1
fi

if [ -f $1 ] && [ -f $2 ]
 then
  cmp -s $1 $2
  if [ $? -eq 0 ]
   then
    echo "$1 and $2 are the same"
    rm -f $1
    echo "$1 deleted"
  else
    echo "$1 and $2 are not the same"
  fi
else
  echo "Not ordinary files"
fi
