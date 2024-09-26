#!/bin/bash

# Write A Shell Program To Find The Square And Cube Of A Number.

read -p "Enter a number: " num

# Calculating square and cube of the number
square=$((num * num))
cube=$((num * num * num))

echo "The square of $num is: $square"
echo "The cube of $num is: $cube"

