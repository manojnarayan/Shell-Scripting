#!/bin/bash
echo "Enter the service to be checked"
read serv
stp=$(service $serv status|cut -d " " -f3)
str=$(service $serv status| cut -d " " -f6)
if [[ $stp == stopped ]]
then
echo "Service $serv is stopped"
echo -e "Enter YES for start the service $serv\nEnter NO for not given permission"
read opt
if [[ $opt == YES ]]||[[ $opt == yes ]]
then
service $serv  start
echo "Service $serv started"
fi
fi
if [[ $str == running... ]]
then
echo "Service $serv already is running"

fi


====================================================================================================
## storing running and stopped services in file

#!/bin/bash
echo "Enter the file path to store stopped services"
read fil1
service --status-all|grep stopped|awk '{print $1}' >> $fil1
ls -ltr $fil1


echo "Enter the file path to store running services"
read fil2
service --status-all|grep running|awk '{print $1}' >> $fil2
ls -ltr $fil2
