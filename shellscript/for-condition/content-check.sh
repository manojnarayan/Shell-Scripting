#!/bin/bash
for i in "kiran" "shri" "om" "shri" "raj" "rishan"
do
echo "$i"  #echo "$i" |grep kiran
done


##to display filename where content exits

#!/bin/bash
echo "Enter the content  to be checked"
read cont
for i in "/tmp" "/var"
do
col=$(grep -li "$cont" $i/* 2> /dev/null |wc -l)
if [[ col > 0 ]]
then
echo "Below are the files which containes content $cont in $i path and count of files are $col"
grep -l "$cont" $i/* 2>dev/null
else
echo "None of the files contains the content $con in $i path and count of file are $col"
fi
done