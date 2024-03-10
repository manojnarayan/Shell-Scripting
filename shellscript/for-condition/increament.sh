#!/bin/bash
echo "Enter the input number"
read num
for ((i=0;i<=$num;i++))
do
echo "Before increament"
echo "$i"
echo "After increament"
k=$(($i+2))
echo "$k"
done