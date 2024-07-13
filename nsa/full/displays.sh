#!/bin/bash

# Menu options
echo "Menu:"
echo "a) Display ordinary files"
echo "b) Display all directory files"
echo "c) Display all readable files"
echo "d) Display all files with permissions for ugo"
echo "e) Display all executable files with permissions for ugo"
echo "f) Display all write files with permission for ugo"
echo "q)quit"
while :
do
        read -p "enter a choice" ch
        case $ch in
                a)ls -f ;;
                b)ls -d -- */;;
                c)ls -r ;;
                d)ls -l | grep -E '^-..';;
                e)ls -l | grep -E '^-..x';;
                f)ls -l | grep -E '^-..xw';;



                q)echo "exit"
                        exit;;
        esac
done
