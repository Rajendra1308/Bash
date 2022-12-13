#!/bin/bash
#Enter A as abcdefghijkl
read A
echo ${#A}
echo =========
echo length of matching substring
echo `expr match "$A" "abc"`
echo `expr "$A" : "abc"`
echo regular expression
echo `expr "$A" : 'abc[d-j]'`
echo `expr "$A" : 'abc[a-z]*j'`
echo =========== index========
a=`expr index "$A" xyz`
echo $a

