#!/bin/bash
read a b c
if [ "$b" = "+" ]
then
        echo $(($a+$c))
fi
if [ "$b" = "-" ]
then

        echo $(($a-$c))
fi
if [ "$b" = "*" ]
then
        echo $(($a*$c))
fi
if [ "$b" = "/" ]
then
        echo $(($a/$c))
fi

if [ "$a" = "min" ]
then
        if [ "$b" -gt "$c" ]
        then
                echo $c
        else
                echo $b
        fi
fi

if [ "$a" = "max" ]
then
        if [ "$b" -gt "$c" ]
        then
        echo $b
                else echo $c
        fi
fi

