#!/bin/bash
echo "Enter the file name"
read fil
touch $fil
echo "File $fil is created anf below are the details of the file $fil"
ls -ltr $fil
echo "Enter the first input to be added to  the file $fil"
read nu1
echo "$nu1" >> $fil
echo "Enter the second input to be added to the file $fil"
read nu2
echo "$nu2" >> $fil

echo "Below are the details of the file $fil"
cat $fil