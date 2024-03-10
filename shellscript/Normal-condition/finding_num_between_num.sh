#!/bin/bash
echo "Enter the number"
read num1
echo "Enter the last number"
read num2
for ((i=$num1+1;i<$num2;i++))
do
if [[ $i -eq $num ]] && [[ $i -eq $num2 ]]
then
echo "The number between $num1 and $num2"
echo $i
else
fi
done