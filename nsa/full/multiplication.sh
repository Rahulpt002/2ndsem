#!?bin/sh
echo " read number "
read n

for ((i=1;i<=10;i++))
do
r=$(($i*$n))
echo $i"*"$n"=" "$r"
done
~
