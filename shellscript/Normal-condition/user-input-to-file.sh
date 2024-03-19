#!/bin/bash
echo "Enter the file name"
read fil
touch $fil
echo "File $fil is created anf below are the details of the file $fil"
ls -ltr $fil
echo "Enter the first input to be added to  the file $fil"
read nu1
echo "$nu1" >> $fil
echo "Enter the second input to be added to the file $fil"
read nu2
echo "$nu2" >> $fil

echo "Below are the details of the file $fil"
cat $fil

Here's a breakdown of each part of the script:

Prompting for File Name: The script prompts the user to enter a file name using the echo and read commands.

Creating the File: The touch command is used to create the file with the name entered by the user.

Displaying File Details: The ls -ltr command is used to display detailed information about the file, such as its permissions, owner, size, and modification time.

Prompting for Inputs: The script prompts the user to enter two inputs using the read command.

Appending Inputs to File: The >> operator is used to append the inputs entered by the user to the file.

Displaying File Contents: The cat command is used to display the contents of the file.

Overall, this script allows users to create a file, add content to it, and view its details and contents.






