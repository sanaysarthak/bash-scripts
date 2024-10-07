#!/bin/bash

# Write A Shell Program To Area And Circumference Of A Circle.

read -p "Enter temperature in celsius: " celsius

fahrenheit=$(echo "($celsius * 9/5) + 32" | bc)

echo "$celsius degree celsius equals to $fahrenheit degree fahrenheit."
