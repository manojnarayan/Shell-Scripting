#!/bin/bash
echo "Enter the path of file whose inode to be check"
read fil
echo "Below are the inode of $fil"
ls -litr $fil