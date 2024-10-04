#!/bin/bash

# Write A Shell Program To Display The Greeting Based On System Time Using Nested If Statements.

# current hour (in 24 hours format)
hour=$(date +%H)

# converting hour into an integer
hour=$((10#$hour)) # expand the number using base-10 (decimal)'

if [ $hour -ge 0 ] && [ $hour -lt 24 ]; then
    if [ $hour -lt 12 ]; then
        if [ $hour -lt 5 ]; then
            echo "Good night! It's very late!."
        else
            echo "Good morning!"
        fi
    else
        if [ $hour -lt 17 ]; then
            echo "Good afternoon!"
        else
            if [ $hour -lt 20 ]; then
                echo "Good evening!"
            else
                echo "Good night!"
            fi
        fi
    fi
else
    echo "Invalid time."
fi

echo "The current time is $(date +%H:%M)."
