#!/bin/bash
echo "Enter the file name"
read fil
echo "Below are the path of searched file $fil"
find / -type f -iname $fil


#finding directory
#!/bin/bash
# echo "Enter the file name"
# read dir
# echo "Below are the path of searched file $dir"
# find / -type d -iname $dir