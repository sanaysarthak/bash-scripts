#!/bin/bash

# Write A Shell Program To Simple Interest And Compound Interest.

# taking input from the user
read -p "Enter principal amount: " principal
read -p "Enter rate of interest (in %): " rate
read -p "Enter time (in years): " time

# calculating simple interest
si=$(echo "scale=2; ($principal * $rate * $time)/100" | bc)

# calculating compound interest
amount=$(echo "scale=2; $principal * (1 + $rate / 100) ^ $time" | bc)
ci=$(echo "scale=2; $amount - $principal" | bc)

# displaying the result
echo "Simple Interest: Rs. $si"
echo "Compound Interest: Rs. $ci"
