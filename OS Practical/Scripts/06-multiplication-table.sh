#!/bin/bash

# Write A Shell Script To Display The Multiplication Table Of The Given Number.

# taking user input to get number
read -p "Enter number to get table : " num

# for loop to get multiplication table
for(( i=1; i<=10; i++ ))
    do
        prod=$((num*i))
        echo "$num x $i = $prod"
    done