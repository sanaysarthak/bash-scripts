#!/bin/bash

# Write A Shell Script To Find Factorial Of Given Number N.

# taking user input to find its factorial
read -p "Enter number: " num

prod=1

for (( i=num; i>1; i-- ));
    do
        prod=$((prod*i))
    done

echo "Factorial of $num is : $prod"