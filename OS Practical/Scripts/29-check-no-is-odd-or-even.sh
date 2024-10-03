#!/bin/bash

# Write A Shell Program To Check Whether The Given Number Is Odd Or Even.

read -p "Enter a number: " num

# checking whether the number is odd or even using if-else statements
if [ $((num % 2)) -eq 0 ]; then
    echo "Number is even."
else
    echo "Number is odd."
fi
