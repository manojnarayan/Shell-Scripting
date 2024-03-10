#!/bin/bash
echo "Enter the input to be check"
read -s cont
echo "Enter the file path"
read fil
grep $cont $fil > /dev/null

if [[ $? -eq 0 ]]
then
echo "Content is present"
else
echo "Content is not present"
fi 