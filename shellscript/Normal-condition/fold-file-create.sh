#!/bin/bash
echo "Enter the folder name"
read dir
mkdir $dir
echo "Below are the details of folder $dir"
ls -ld $dir
echo "Enter the file name which create in $dir"
read fil
echo "Below are the details of the file $fil"
ls -ltr $fil