#!/bin/bash
echo "Enter the content"
read cont
if i in $(cat file_name)
do
echo $i | grep "^$cont"
done