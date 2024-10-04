#!/bin/bash

# Write A Shell Program To Compare The Equality Of Strings.

# Function to compare strings
compare_strings() {
    echo ""
    if [ "$1" = "$2" ]; then
        echo "The strings are equal."
    else
        echo "The strings are not equal."
    fi

    # Case-insensitive comparison
    if [ "${1,,}" = "${2,,}" ]; then
        echo "The strings are equal (case-insensitive)."
    else
        echo "The strings are not equal (case-insensitive)."
    fi
}

# Taking user input
read -p "Enter the first string: " string1
read -p "Enter the second string: " string2

# Call the comparison function
compare_strings "$string1" "$string2"

# Display string lengths
echo ""
echo "Length of first string: ${#string1}"
echo "Length of second string: ${#string2}"