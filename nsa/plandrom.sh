echo "Enter a number:"
read num

orig_num=$num

rev_num=0
while [ $num -gt 0 ]
do
    rem=$(( $num % 10 ))

    num=$(( $num / 10 ))

    rev_num=$(( $rev_num * 10 + $rem ))
done

if [ $orig_num -eq $rev_num ]
then
    echo "$orig_num is a palindrome"
else
    echo "$orig_num is not a palindrome"

fi
