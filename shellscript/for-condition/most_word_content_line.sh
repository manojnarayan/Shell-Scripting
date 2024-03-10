#!/bin/bash
IFS=$'\n'
cob=0
for i in $(cat file.txt)
do
cow=$(echo $i |wc -w)
if [[ $cow -gt $cob ]]
then
cob=$cow
lin=$i
linenumber=$nu
fi
done

echo -e "Count of words is $cob\nLine content is $lin\nLinenumber is $linenumber"

===============================OR==================================================

#!/bin/bash
nu=0
IFS=$'\n'
cow=0
for i in $(cat file.txt)
do
nu=$(($nu+1))
cob=$(echo $i|wc -w)
if [[ $cob -gt $cow ]]
then
cow=$cob
lin=$i
linenumber=$nu
fi
done

echo -e "Count of words is $cow\nLine content is $lin\nLine number is $linenumber"