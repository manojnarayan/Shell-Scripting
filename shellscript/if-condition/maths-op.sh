#!/bin/bash
echo -e "Enter 1 for Addition\nEnter 2 for Substraction\nEnter 3 for Multiplication\nEnter 4 for Division"
read opt
if [ $opt -eq 1 ]
then
echo "Enter 1st number"
read num1
echo "Enter 2nd number"
read num2
sum=$(($num1+$num2))
echo "Addition of number $num1 and $num2 is $sum"
elif [ $opt -eq 2 ]
then
echo "Enter 1st number"
read num1
echo "Enter 2nd number"
read num2
sub=$(($num1-$num2))
echo "Substraction of number $num1 and $num2 is $sub"
elif [ $opt -eq 3 ]
then
echo "Enter 1st number"
read num1
echo "Enter 2nd number"
read num2
mult=$(($num1*$num2))
echo "Multiplication of number $num1 and $num2 is $mult"
elif [ $opt -eq 4 ]
then
echo "Enter 1st number"
read num1
echo "Enter 2nd number"
read num2
divi=$(($num1/$num2))
echo "Division of number $num1 and $num2 is $divi"