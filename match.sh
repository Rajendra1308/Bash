#!/bin/bash
string="Thiis"
pattern='[0-1]'
if [[ "$1" == $pattern ]]
then
echo true
else
echo false
fi
