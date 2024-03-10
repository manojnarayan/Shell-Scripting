#!/bin/bash
echo "Enter the directory to be checked"
read dir
if [[ -d $dir ]]
then
echo "Directory $dir is present"
echo "Enter the file to create under directory $dir"
read fil
if [[ -f $dir/$fil ]]
then
echo "File $fil already present in $dir and Below are the details of the $fil"
ls -ltr $fil
else
echo "File $fil is not present in directory $dir"
echo  "Now file $fil is creating under directory $dir...."
sleep 5
touch $dir/$fil
echo "Below are the details of the file $fil"
ls -ltr /$dir/$fil
fi
else
echo "Directory $dir not present"
echo "Now creating directory $dir...."
sleep 2
mkdir $dir
if [[ -d $dir ]]
then
echo "Directory $dir created"
echo "Enter the file to be create"
read $fil
touch $dir/$fil
fi
fi