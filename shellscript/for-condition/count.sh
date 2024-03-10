#!/bin/bash
echo "Enter the path of the file"
read fil
count=0
for i in $(cat $fil);
do
 if [[ $i == *.csv ]];
then
echo $i
((count ++))
 fi
done

echo "Total lines ending with the .csv: $count"