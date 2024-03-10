#!/bin/bash
echo "Enter the last number"
read num
for ((i++;i<=$num;i++))
do
if [[ $i%2 -eq 0 ]]
then
echo "Number $i is even" >> /tmp/even.txt
else
echo "Number $i is odd" >> /tmp/odd.txt
fi
done