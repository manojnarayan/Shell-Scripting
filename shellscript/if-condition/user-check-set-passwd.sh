#!/bin/bash
echo "Enter the username"
read nam
uout=$(grep $nam /etc/passwd|wc -l)
if [[ $uout -gt 0 ]] ; then
echo "User $nam is present"
echo "Checking passwd is set or not for user $nam...."
sleep 5
coc=$(grep $nam  /etc/shadow|cut -d ":" -f2|wc -c)
if [[ $coc -gt 3 ]]
then
echo "Passwd for $nam is set"
else
echo "Passwd is not set for $nam"
echo -e "Enter 'Y' for set a passwd for user $nam\nEnter 'N' for set a passwd for user $nam"
read opt
if [[ $opt == Y ]]||[[ $opt == y ]]
then
echo "User gave a permission to set a passwd for user $nam"
passwd $nam 
#echo "Passwd for user $nam is set"
elif [[ $opt == N ]]||[[ $opt == n ]]
then
echo "Permission is not given to set passwd for user $nam "
fi
fi
else
echo "User $nam not present"
echo "==============================="
echo -e "Enter "Y" for creating user $nam\nEnter "N" for not creating user $nam"
read opt
if [[ $opt == Y ]] || [[ $opt == y ]]
then
echo "Permission is given to creating user $nam"
useradd $nam
echo "Below are the user $nam details"
grep $nam /etc/passwd
elif [[ $opt == N ]] || [[ $opt == n ]]
then
echo "Permission is not given to creating user $nam"
else
echo "Invalid input"
fi
fi