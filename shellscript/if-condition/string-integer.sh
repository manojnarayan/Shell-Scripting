#!/bin/bash
echo "Enter the input"
read a
if [[ $a =~ ^[a-z]+$ ]]
then
echo "$a is alpha or word"

 elif [[ $a =~ ^[0-9]+$ ]]
 then
 echo "$a is number"
 if [[ $a%2 -eq 0 ]]
 then
 echo "$a is even number"
 else
 echo "$a is odd number"
 fi

 elif [[ $a =~ [0-9] ]] && [[ $a =~ [a-z] ]] 
 then
 echo "$a is combination of number and alphabet"

 else
 echo "Entry  is wrong"
fi