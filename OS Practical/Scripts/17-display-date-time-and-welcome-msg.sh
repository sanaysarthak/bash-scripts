#!/bin/bash

# 17.Write A Shell Script To Display The Date, Time And A Welcome Message (Like Good Morning Etc.). The Time Should Be Displayed With A.M. Or P.M. And Not In 24 Hours Notation.

# getting the current date and time
current_date=$(date +"%A, %B %d, %Y")
current_time=$(date +"%I:%M %p")

# storing the greeting message
hour=$(date +"%H")
if [ "$hour" -lt 12 ]; then
    greeting="Good Morning"
elif [ "$hour" -lt 18 ]; then
    greeting="Good Afternoon"
else
    greeting="Good Evening"
fi

# displaying the greeting message, and current date and time
echo "$current_date"
echo "Current Time: $current_time"
echo "$greeting!"
