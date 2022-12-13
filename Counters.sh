#!/bin/bash
 counter=0
for i in $*
do
((counter++))
done
echo $counter
