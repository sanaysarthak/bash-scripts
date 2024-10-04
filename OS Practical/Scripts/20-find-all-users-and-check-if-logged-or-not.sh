#!/bin/bash

# Write A Shell Script That Finds Total No. Of Users And Finds Out How Many Of Them Are Currently Logged In.

# using wc (word count), but only increments one per line (using -l)
total_users=$(wc -l < /etc/passwd)

# getting the number of currently logged in users
logged_in_users=$(who | wc -l)

# displaying the results
echo "Total number of users: $total_users"
echo "Number of currently logged-in users: $logged_in_users"
