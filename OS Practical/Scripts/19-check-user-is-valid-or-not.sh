#!/bin/bash

# Write A Shell Program Which Checks Whether A Given User Is Valid Or Not.

read -p "Enter the username to check: " username

# using id command to check whether the user exists or not
if id "$username" &>/dev/null; then
    echo "User '$username' is valid."
else
    echo "User '$username' does not exist."
fi