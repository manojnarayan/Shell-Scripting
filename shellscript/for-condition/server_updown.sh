#!/bin/bash
for i in $(cat ip.txt)         #ip.txt containe IP's of the servers
do
ping -c2 $i >/dev/null         #c2 for 2 interval
if [[ $? -eq 0 ]]
then
echo "Server $i is reachable"
else
echo "Server $i is not reachable"
fi
done

=========================ping and ssh================================

#!/bin/bash
for i in $(cat ip.txt)
do
ping -c2 $i >/dev/null
if [[ $? -eq 0 ]]
then
echo "Server $i is pinging"
ssh $i "exit"
if [[ $? -eq 0 ]]
then
echo "Server $i is sshable" >> server_ping_ssh.txt
else
echo "Server $i is pinging but not sshable" >> server_not_ping_ssh.txt
fi
else
echo "Server $i is down"
fi
done