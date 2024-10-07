#!/bin/bash

# Write A Shell Program To Find The Area And Circumference Of A Circle.

read -p "Enter the radius of the circle: " radius

pi=3.14

# Using bc (basic calcualtor) for floating-point calculations
area=$(echo "$pi * $radius * $radius" | bc)
circumference=$(echo "2 * $pi * $radius" | bc)

echo "Area of the circle is = $area unit sq."
echo "Circumference of the circle is = $circumference units."
