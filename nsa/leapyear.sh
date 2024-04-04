echo "enter the year"
read a
if (( $a % 4 == 0 ))
then
        echo "the given year is leap"
else
        echo "the given year is not leap"
fi

