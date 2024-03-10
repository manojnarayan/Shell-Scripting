#!/bin/bash
for i in "/tmp" "/var" "/var/tmp"
do
echo "Enter the file name to be checked"
read fil
if [[ -f $i/$fil ]]
then
echo "File $fil exixts in $i"
else
echo "File $fil doesnot exists in $i"
fi
done