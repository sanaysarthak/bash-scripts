#!/bin/bash

# Write A Shell Program To Print The Pyramid Structure For The Given Number.

read -p "Enter number of rows: " rows

# Loop to print the pyramid structure
for ((i = 1; i <= rows; i++)); do
    # print spaces
    for ((j = i; j < rows; j++)); do
        echo -n " "
    done
    # print stars
    for ((k = 1; k <= (2 * i - 1); k++)); do
        echo -n "*"
    done
    # move to the next line
    echo
done