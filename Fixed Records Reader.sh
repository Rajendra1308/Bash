#!/bin/bash
while IFS=$'!' read name location phonenumber
do
if [[ $location = $1 ]]
then
while IFS=$'!' read NAME salary
do
if [[ $name = $NAME ]]
then
echo $NAME $salary
fi
done < salary.txt
fi
done < names.txt 
