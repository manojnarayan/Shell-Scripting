#!/bin/bash

echo "Enter a number to generate its multiplication table:"
read num

for (( i=1; i<=10; i++ ))
do
    result=$((num * i))
    echo "$num * $i = $result"
done