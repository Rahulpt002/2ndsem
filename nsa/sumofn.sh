echo "enter the first range";
read a
b=0
for ((i=0; i<=a; i++))
do
        b=$(( b + i ))
done
echo "$b"
