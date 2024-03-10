#!/bin/bash
echo "Enter the input"
read a
if [[ $a == kiran ]] || [[ $a == Kiran ]]
then
echo "true"
elif [[ $a == shri ]] || [[ $a == Shri ]]
then
echo "true"
else
echo "false"
fi

# #or
# #elif [[ $a == shri ]]
# then
# echo "true"
# elif [[ $a == Shri ]]
# then
# echo  "thre"

#if [[ $a == kiran ]] || [[ $a == Kiran ]] || [[ $a == KIRAN ]] || [[ $a == shri ]] || [[ $a ]]