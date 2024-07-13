read -p "enter the file" filename

while  read line
do
  echo "$line"
done < $filename
~
