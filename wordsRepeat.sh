#!/bin/bash
read a b c d
if [ $a = $b ] || [ $a = $c ] || [ $a = $d ] || [ $b = $c ] ||  [ $b = $d ] || [ $c = $d ]
then
echo Yes
#elif  [ $b = $a ] || [ $b = $c ] || [ $b = $d ]
#then
#echo Yes
#elif  [ $c = $a ] || [ $c = $d ] || [ $c = $b ]
#then
#echo Yes
#elif  [ $d = $a ] || [ $d=$b ] || [ $d=$c ]
#then
#echo Yes
else 
echo No
fi

