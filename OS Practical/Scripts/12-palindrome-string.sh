#!/bin/bash

# Write a shell script to check whether the given string is Palindrome or not.

# taking user input to check whether the string is palindrome or not
read -p "Enter string: " str

reverse=$(echo "$str" | rev) # reversing the string

if [ "$str" == "$reverse" ]; then
    echo "$str is a palindrome string!"
else
    echo "$str is not a palindrome string."
fi