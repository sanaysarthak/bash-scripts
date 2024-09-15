#!/bin/bash

# Write A Shell Script To Find Sum & Average Of N Numbers.

# getting value of inputs to take from user
read -p "Enter N: " N
echo # blank line

total=0 # initializing variable 'total' with 0

# loop to take numbers as input from the user
for (( i=1; i<=N; i++ ))
    do
        read -p "Enter number $i : " num
        total=$((total+num)) # finding total
    done

# finding the average of all numbers
avg=$((total/N))

# printing the required output
echo # blank line
echo "Sum = $total"
echo "Average = $avg"
