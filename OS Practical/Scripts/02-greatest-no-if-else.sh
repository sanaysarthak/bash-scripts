#!/bin/bash

# Write A Shell Script To Find A Greater Number Out Of 3 Numbers. (if-else)

find_greatest() {
    if [ $1 -ge $2 ] && [ $1 -ge $3 ]; 
    then
        echo "The greatest number is: $1"
    elif [ $2 -ge $1 ] && [ $2 -ge $3 ];
    then
        echo "The greatest number is: $2"
    else
        echo "The greatest number is: $3"
    fi
}

read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "Enter third number: " num3

find_greatest $num1 $num2 $num3