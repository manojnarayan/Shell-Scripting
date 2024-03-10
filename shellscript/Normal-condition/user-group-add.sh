#!/bin/bash
echo "Enter the user name which is not present in server"
read nam
useradd $nam
echo "Enter the group name"
read gp
groupadd $gp
echo "Below are the user $nam details"
grep $nam /etc/passwd
echp "Below are the details of the group $gp"
grep $gp /etc/group