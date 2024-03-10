#!/bin/bash
for i in "kiran" "ajit" "venky" "aksh"
do
for j in file1 file2
do
grep "$i" $j > /dev/null

if [[ $? -eq 0 ]]
then
echo "Content $i is present in file $j"
else
echo "Content $i not is present in file $j"
fi
done
echo "========================================"
done