#!/bin/bash
IFS='!'
while read -a a

do
	if [ $1 = -nobook ]
	then
	#echo -n ${a[2]} ''
	count=0
	while read -a b
	do
		if [ ${a[2]} = ${b[1]} ]
		then
	
		count=$(($count+1))


	
	fi

		
			
		
	done<Books.txt

	if [ $count -eq 0 ]
	then
		echo ${a[0]}
	fi
fi
done<Courses.txt
