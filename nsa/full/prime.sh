echo "enter a range"
read n

for(( i=2 ; i <= n ; i++ ))

 do
   k=0
   for (( j=2; j < i ;j++ ))
     do
        if (( $i % $j  == 0 ))
          then
             k=1
             break


         fi
       done
           if (( $k == 0 ))
           then
              echo $i
           fi

done
