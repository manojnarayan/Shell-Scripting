#!/bin/bash
k=0
s=0
for i in $(cat file.txt)
do
echo $i
k=$(($k+1))
coc=$(echo $i |wc -c)
if [[ $coc -gt $s ]]
then
lin=$k
s=$coc
con=$i
fi

done

echo -e "$s\n$lin\n$con"