#!/bin/bash

a=$1
b=$2
for i in `seq $1 $2`
do
result=$(($result+$i))
done
echo $result
