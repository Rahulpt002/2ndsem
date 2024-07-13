f="$1"
lines=()
while read line
do
        lines+=($line)
done<$f
len=${#lines[@]}
for (( i=(len-1);i>=0;i-- ))
do
        echo "${lines[i]}"
done
