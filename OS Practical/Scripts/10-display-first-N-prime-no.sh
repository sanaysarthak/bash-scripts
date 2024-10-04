#!/bin/bash

# Write a shell script in which will accept a number N and display the first N prime numbers as output.

read -p "Enter N: " N

count=0
num=1

echo "First $N prime numbers are:-"

while [ $count -ne $N ];
do
    flag=0
    
    for((i=2; i<=$((num/2)); i++))
    do
        if [ $((num%i)) -eq 0 ]; then
            flag=1
            break
        fi
    done

    if [ $flag -eq 0 ]; then
        echo "$num"
        count=$((count+1))
    fi

    num=$((num+1))
done





