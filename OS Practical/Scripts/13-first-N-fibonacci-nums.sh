#!/bin/bash

# Write A Shell Script To Find First N Fibonacci Numbers Like: 0, 1, 1, 2, 3, 5, 13

read -p "Enter the value of N: " n

# intialize the first two fibonacci numbers
a=0
b=1

echo "The first $n Fibonacci numbers are:"

for ((i = 0; i < n; i++)); do
    # print the current fibonacci number
    echo -n "$a "
    
    # calculate the next fibonacci number
    fn=$((a + b))
    a=$b
    b=$fn
done

echo # prints a newline at the end
