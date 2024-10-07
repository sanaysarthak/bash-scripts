#!/bin/bash

# Write A Shell Program To Find The Area Of A Triangle.

# taking input from the user
read -p "Enter base of triangle: " base
read -p "Enter height of triangle: " height

# performing the calculation (using formula: 1/2 * base * height)
area=$(echo "scale=2; 0.5 * $base * $height" | bc) # scale=2; is used to take upto 2 decimal places

# displaying the result
echo "The area of the triangle is: $area"
