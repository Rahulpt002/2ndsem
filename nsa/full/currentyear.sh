r=$(date +"%Y")
if (( (r%4==0 && r%100!=0) || (r%400==0) ))
  then
    echo "leap year"
else
 echo "not a leap year"
fi
