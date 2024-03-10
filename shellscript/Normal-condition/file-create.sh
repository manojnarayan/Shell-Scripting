#!/bin/bash
echo "Enter the file name"
read fil
touch $fil
echo "File $fil is created anf below are the details of the file $fil"
ls -ltr $fil