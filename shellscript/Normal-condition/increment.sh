#!/bin/bash
echo "Enter the number"
read a
b=$(($a+1))
echo "Entered number is $a"

echo "After increament number is $b"

======================================================

#!/bin/bash
echo "Enter the number"
read num
for ((j=1;j<=$num;j++))
do
if [[ $j%2 -eq 0 ]]
then
k=$(($j+1))
echo "increament value is $k"
fi
done