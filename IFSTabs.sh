#!/bin/bash
while IFS=$'\t' read a b
do
echo $a
done <tabs.txt
