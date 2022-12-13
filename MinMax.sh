#!/bin/bash
read a b c 
if [[ $b == "+" ]]
then
result=$(($a+$c))
echo $result
fi

	if [[ $a == "min" ]]
	then
	if [[ $b -gt $c ]]
        then
	echo $c
	else 
	echo $b
fi
fi
 

