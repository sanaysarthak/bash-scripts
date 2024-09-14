#!/bin/bash

# Write A Shell Script To Generate Mark Sheet Of A Student. Take 3 Subjects, Calculate And Display Total Marks, Percentage And Class Obtained By The Student.

# function to get the class obtained
get_class() {
    if (( $(echo "$percentage >= 60" | bc -l) )); then
        echo "First Class"
    elif (( $(echo "$percentage >= 50" | bc -l) )); then
        echo "Second Class"
    elif (( $(echo "$percentage >= 40" | bc -l) )); then
        echo "Third Class"
    else
        echo "Fail"
    fi
}

# taking user input
read -p "Enter student's name : " student_name
read -p "Enter marks in Subject 1 : " sub1
read -p "Enter marks in Subject 2 : " sub2
read -p "Enter marks in Subject 3 : " sub3

# calculating different attributes
total_marks=$((sub1+sub2+sub3))
percentage=$(echo "scale=2; ($total_marks/300)*100" | bc)

class=$(get_class $percentage) # calling function

# displaying the marksheet
echo # blank line
echo "Mark Sheet"
echo "----------------------"
echo "Student Name : $student_name"
echo "Subject 1 Marks : $sub1"
echo "Subject 2 Marks : $sub2"
echo "Subject 3 Marks : $sub3"
echo "Total Marks : $total_marks"
echo "Percentage : $percentage %"
echo "Class Obtained : $class"
echo "----------------------"
