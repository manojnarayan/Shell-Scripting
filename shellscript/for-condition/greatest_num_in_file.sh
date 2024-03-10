#!/bin/bash
d=0
for i in $(cat num.txt)
do
if [[ $i -gt $d ]]
then
d=$i
fi
done
echo "Greatest number is $d"