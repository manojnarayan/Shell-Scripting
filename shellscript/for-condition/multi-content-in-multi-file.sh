#!/bin/bash
for fil in file.txt file1.txt
do
for k in "Kiran"
do
s=$(grep $k $fil|wc -c)
if [[ $s -gt 0 ]]
then
echo "Content $k is presentin $fil"
else
echo "Content $k is not present in $fil"
fi

done
done