#!/bin/bash
x=`echo "5.4<6.6"|bc`
echo $x
if [ $x -eq 1 ]
 then  
echo true
else 
 echo false
fi
