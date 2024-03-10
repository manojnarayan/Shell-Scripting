#!/bin/bash
echo "Enter the content to be check"
read cont
echo "Enter the file path"
read pat
out=$(grep $cont $pat |wc -l)

if [[ $out > 0 ]]
then
echo "Content is present"
echo "Below are the lines where content $cont exits in file $pat"
grep -n $cont $pat       ====================>> **
else
echo "Content is not present"
fi

======================OR=============================
#!/bin/bash
echo "Enter the content to be checked"
read cont
echo "Enter the file path where content $cont check"
read fil

grep "$cont" $fil >/dev/null
if [[ $? -eq 0 ]]
then
echo "Content $cont is present"
else
echo "Content $cont not present"
fi
=====================OR=================================
#!/bin/bash
echo "Enter the content to be checked"
read cont
echo "Enter file name to be search"
read fil
echo "Below are the path of the $fil"           #file finding
find / -type f -iname $fil

echo "Enter the path of the file which content $cont check"
read fil1
sleep 5
grep "$cont" $fil1 >/dev/null
if [[ $? -eq 0 ]]
then
echo "Content $cont is present"
else
echo "Content $cont not present"
else
echo "Invalid input"
fi

=================================belo script is not work==============================
#!/bin/bash
echo "Enyter the content to be checked"
read cont

for i in $(cat kiran.txt)
do
if [[ $i == $cont ]]
then
echo "Content is present in file"
else
echo "Content  not present in file"
fi
done

output is 
Enyter the content to be checked
kiran
Content is present in file
Content  not present in file

it showing both present and not present because i is check each line for 1 line kiran present 
and 2nd line kiran not present 
==============================================================================================