${arr[@]}
arr=(2 5 3 4)
max=${arr[0]}
for i in "${arr[@]}";
do
   if [ "$i" -gt "$max" ];
   then
      max="$i"
   fi
done
echo "The largest number is $max"
~
