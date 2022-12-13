#!/bin/bash

checkArr=()
while IFS=$'!' read courseCode courseName ISBN requirement
do
#num case
if [[ $1 = -num ]]
then
 if [[ $2 = $courseCode ]] 
then 
while IFS=$'!' read -a book
do
if [[ $ISBN = ${book[1]} ]]
then
echo -n ${book[0]}":"
length=${#book[@]}
lastauthor=$(($length-2))
for i in `seq 2 $lastauthor`
do
echo -n ${book[$i]} "" 
done
fi
echo
done < books 
fi
fi 
#nobook case

if [[ $1 = -nobook ]]

then
if [[ $ISBN = "" ]]
then
echo $courseCode
fi
fi 
#echo $i


done < courses




