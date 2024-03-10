#!/bin/bash
echo "Enter number"
read num
echo "Enter the file name where out-put is stored"
read fil
for ((i=1;i<=$num;i++))
do
if [[ $i%2 -eq 0 ]]
then
echo "Number $i is even" >> $fil
else
echo "Number $i is odd" >> $fil
fi
done
echo "Below are the content of $fil"
cat $fil