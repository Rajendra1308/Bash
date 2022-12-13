#!/bin/bash
IFS='!'
while read -a a
do
	#num case
	if [  $1 = -num ]
	then
	#	counter=0
		if [ $2 = ${a[0]} ]
		then 
			while read -a b
			do
				length=${#b[@]}
				index=$(($length-1))
			counter=0
				for (( i=2; i<=$index; i++ )) 
				do
					if [ $counter -eq 0 ]
                                then
                                        echo -n ${b[0]}:''
                                        counter=1
                                fi

					echo -n ${b[$i]} ''
				done
				echo
			done<Books.txt
		fi
	fi

#nobook case
 	if [ $1 = -nobook ]
       	 then
        #echo -n ${a[2]} ''
        count=0
        while read -a b
        do
	#	echo aaaa  ${a[2]}  bbbbbb  ${b[1]}
                if [ ${a[2]} == ${b[1]} ]
                then

       	         count=$(($count+1))
 	 fi

		 done<Books.txt

        if [ $count -eq 0 ]
        then
                echo ${a[0]}
        fi
fi




#toomuch case
if [ $1 = -toomuch ]

         then
        #echo -n ${a[2]} ''
        count1=0

        while read -a b
        do
                if [ ${a[2]} == ${b[1]} ]  #compare ISBN	
                then	
			length1=${#b[@]}
			index1=$(($length1-1))
			if [ ${a[3]} = 'R' ] #Compare Requirement 
				then
                 count1=$(($count1+1))
	 fi
         fi

                 done<Books.txt

        if [ $count1 -gt 2 ]
        then
                echo ${a[0]}
        fi
fi








	
	



	
done<Courses.txt
