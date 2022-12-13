#!/bin/bash

while IFS=$'\t' read -a ENTRY

do
	if [[ "$1" = "-s" ]]
	then 	
  	 	
		if [ "$2" -eq "${ENTRY[1]}" ]	
		then
			echo ${ENTRY[0]}
			length=${#ENTRY[*]}
#echo length is $length 
			lastCourseIndex=$(($length-2))
#echo \last \index is $lastCourseIndex
			#echo before \for loop
			for i in `seq 2 $lastCourseIndex`
			do
			#echo $i 
			echo -n "${ENTRY[$i]} "
 			
			done
			echo
















	fi 
		fi



	if [ $1 = -m ]
	then 
		length=${#ENTRY[*]}
		Courses=$(($length-3))
		gpa=${ENTRY[$(($length-1))]}  
		minGPA=`echo "$gpa<6.0"|bc`
		if [ $Courses -gt 3 ] && [ $minGPA -eq 1 ]
		then
			echo ${ENTRY[0]} ${ENTRYT[1]}

		fi
	fi




		
done < Courses.txt
