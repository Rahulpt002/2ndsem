echo "enter a number"
read n

temp=$n
re=0
while [ $temp -gt 0 ]
do
        r=$(( $temp % 10 ))
        re=$(( $re * 10 + $r ))
        temp=$(( temp / 10 ))
done
if [ $re -eq $n ]
then
        echo "palindrome"
else
        echo "not palindrome"
fi
~
