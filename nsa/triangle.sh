#!/bin/sh
echo "enter the first side"
read a
echo "enter the second side"
read b
echo "enter the third side"
read c
if  [ $a == $b -a $b == $c -a $a == $c ]
then
        echo "equilateral"
elif [ $a == $b -o $b == $c -o $a == $c ]
then
        echo "issocless"
else
        echo "scalene"
fi
