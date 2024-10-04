#!/bin/bash

# Write A Shell Program To Check Whether The Input Number Is Prime Or Not.

read -p "Enter number: " num

# To change the state of the number and tell whether it is prime or not
flag=0

for((i=2; i<=$((num/2)); i++))
do
	if [ $((num%i)) -eq 0 ]; then
        echo "It is not a prime number."
        flag=1
        break
    fi
done

if [ $flag -eq 0 ]; then
    echo "It is a prime number!"
fi


