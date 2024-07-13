read -p "enter the file name" text
while read line
do
no1=`expr $no12+1`

set $line>/dev/null
nowds=`expr $nowds+$#`
done <$text
echo "number of lines=$no1"
echo "number of words=$nowds"
