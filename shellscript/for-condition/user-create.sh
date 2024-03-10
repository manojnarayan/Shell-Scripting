#!/bin/bash
echo "Enter the user name to be create"
read nam
echo "Enter how many user want"
read num
echo "Below are the users"
for ((i=1;i<=$num;i++))
do
echo "$nam$i"
useradd $nam$i
echo "Below are the user $nam$i details"
grep $nam$i /etc/passwd
================================================
done

----------------------------------------------------------------
## Create Multiple users and set passwd
#!/bin/bash
for ((i=1;i<=15;i++))
do
useradd user$id
echo  "12345" | passwd user$i --stdin
done
-----------------------------------------------------------------

##Create multiple users and set individual passwd for each user

#!/bin/bash
echo "Enter how many users want to create"
read num
for ((i=1;i<=$num;i++))
do
echo  "Enter the user name"
read name
useradd $name$i
echo "Enter the passswd for $name$i"
read pass
echo $pass | passwd $name$i --stdin
done