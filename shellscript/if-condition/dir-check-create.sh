#!/bin/bash
echo "Enter the directory name"
read dir

if [[ -d $dir ]]
then
echo "$dir is present"
echo "Below are the details of the dir $dir"
ls -ld $dir

else "$dir does not exists"
echo -e "Enter 'Y' for creating dir $dir\nEnter 'N' for not creating dir $dir"
read opt
if [[ $opt == Y ]] || [[ $opt == y]]
then
echo "Permission is given to create dir $dir"
mkdir $dir
echo "Below are the details of the dir $dir"
ls -ld $dir
elif [[ $opt == N ]] || [[ $opt == y]]
then
echo "Permission is not given to create dir $dir"
fi
fi