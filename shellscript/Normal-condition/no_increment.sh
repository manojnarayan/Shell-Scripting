#!/bin/bash
echo "Enter the number"
read num1
echo "Enter the last number"
read num2

for ((i=$num1;i<=$num2;i++))
do
k=$(($i+$num2))
echo "Number $i is increamented after the addition of $num2 is $k"
done