#!/bin/bash

# Write A Shell Script To Check Whether A Given Number Is Palindrome Or Not.

# taking user input to check whether the number is palindrome or not
read -p "Enter number: " num

reverse=$(echo "$num" | rev) # reversing the number

if [ "$num" == "$reverse" ]; then
    echo "$num is a palindrome number!"
else
    echo "$num is not a palindrome number."
fi