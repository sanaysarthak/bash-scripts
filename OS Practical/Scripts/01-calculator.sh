#!/bin/bash

# Write A Shell Script Which Works Like A Calculator And Performs Below Operations: Addition, Subtract, Division And Multiplication.

show_menu() {
    echo "Calculator Menu:-"
    echo "Enter 1 for Addition."
    echo "Enter 2 for Subtraction."
    echo "Enter 3 for Multiplication."
    echo "Enter 4 for Division."
}

add() {
    result=$(($1 + $2))
    echo "Result: $result"
}

subtract() {
    result=$(($1 - $2))
    echo "Result: $result"
}

multiply() {
    result=$(($1 * $2))
    echo "Result: $result"
}

divide() {
    if [[ ($1 -eq 0 || $2 -eq 0) ]]
    then
        echo "Cannot divide with zero."
    else
        result=$(($1 / $2))
        echo "Result: $result"
    fi
}

show_menu
read choice

echo "Enter two numbers: "
read num1
read num2

case $choice in
    1)
        add $num1 $num2 ;;
    2)
        subtract $num1 $num2 ;;
    3)
        multiply $num1 $num2 ;;
    4)
        divide $num1 $num2 ;;
    *)
        echo "Invalid choice. Please select either 1, 2, 3, or 4." ;;
esac
