if [[ $# -ne 2 ]]
then
        echo "syntax $0 file1 file2"
elif [[ -f $1  &&  -f $2 ]]
then
        cmp $1 $2 >/dev/null
        if [[ $? -eq 0 ]]
        then
                echo " $1 and $2 are same"
                rm -f $1
                echo " $1 deleted"
        else
                echo " $1 and $2 are not same"
        fi
else
        echo "not ordinary file"
fi
