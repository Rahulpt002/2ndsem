#!/bin/bash

echo "Enter a number:"
read a

sum=0
temp=$a

while [ $a -gt 0 ]
do
    r=$(( $a % 10 ))
    sum=$(( sum + (r * r * r) ))
    a=$(( a / 10 ))
done

if [ $temp -eq $sum ]
then
    echo "The given number is an Armstrong number."
else
    echo "The given number is not an Armstrong number."
fi
