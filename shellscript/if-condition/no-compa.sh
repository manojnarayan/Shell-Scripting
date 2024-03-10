#!/bin/bash
echo "Enter 1st number"
read num1
echo "Enter 2nd number"
read num2

if [[ $num1 -eq $num2 ]]
then
echo "$num1 and $num2 are same"
echo "Performing Addition"
sum=$(($num1+$num2))
echo "Sum of $num1 and $num2 is $sum"

elif [[ $num1 -gt $num2 ]]
then
echo "$num1 is greater than $num2"
echo "Performing Substraction"
sub=$(($num1-$num2))
echo "Substraction of the $num1 and $num2 is $sub"

elif [[ $num1 -lt $num2 ]]
then
echo "$num1 is less than $num2"
echo "Performing Multiplication"
mult=$(($num1*$num2))
echo "Multiplication of the $num1 and $num2 is $mult"

else
echo "Entry is wrong"

fi