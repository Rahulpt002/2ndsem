echo "enter the filename"
read file
c=`cat $file | wc -c`
w=`cat $file | wc -w`
l=`grep -c "." $file`
echo "number of character in $file is $c"
echo "number of words in $file is $w"
echo "number of lines in $file is $l"

