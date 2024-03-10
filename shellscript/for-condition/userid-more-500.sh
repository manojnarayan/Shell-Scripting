#!/bin/bash
IFS=$'\n'
for i in $(cat /etc/passwd)
do
u=$(echo $i |cut -d ":" -f3)
un=$(echo "$i" | cut -d ":" -f1)
if [[ $u -gt 500 ]]
then
echo "User ID greater than 500: $un and user id is $u"
fi
done