#!/bin/bash
nam=$(uname)
a=$(uname -a)
b=$(uname -r)
c=$(uname -m)
d=(top -b -n2)
e=(df -h)
k=$(who)
work_dir=$(pwd)
cp_mem=$(free)
echo -e "Server name is $nam\nName of the user who logged in server $k\n
Present working directory is $work_dir\nCPU and Memory utilisation of the server $cp_mem"