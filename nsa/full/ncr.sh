ncr(){
        n=$1
        r=$2
        f=1
        r1=1
        for (( i=1;i<=$n;i++ ))
        do
                f=$(( f * i ))

        done
        echo "$f"
        for (( i=1;i<=$r;i++ ))
        do
                r1=$(( r1 * i ))

        done
         echo "$r1"

        x=$(( n - r ))
        x1=1
        for (( i=1;i<=$x;i++ ))
         do
                 x1=$(( x1 * i ))

         done
         echo "$x1"

         ncr=$(( f / ( r1 * x1) ))
         echo "$ncr"
 }
 read -p "enter n " n
 read -p "enter r " r
 ncr $n $r

