#!/bin/bash

# Write A Shell Script To Find The Largest Among The 3 Given Numbers Using Switch Case

find_greatest() {
    local greatest=$1
    
    case 1 in
        1)
            # compare with second no.
            if [ $2 -ge $greatest ]; then
                greatest=$2
            fi ;;
    esac

    case 1 in
        1)
            # compare with third no.
            if [ $3 -ge $greatest ]; then
                greatest=$3
            fi ;;
    esac

    echo "The greatest number is: $greatest"
}

read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "Enter third number: " num3

find_greatest $num1 $num2 $num3