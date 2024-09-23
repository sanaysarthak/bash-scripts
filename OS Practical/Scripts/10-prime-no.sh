#!/bin/bash

# Write a shell script in which will accept a number N and display the first N prime numbers as output.

read -p "Enter N: " num
count=1
while [ $num -ge $count ]; do
    for((i=2; i<=$((num/2)); i++))
    do
    ans=$(( num%i ))
    if [ $ans -eq 0 ]
    then
        break
    fi
    done
    echo "$num"
    count=$((count+1))
done