#!/bin/bash

# You have a directory `projects/` with multiple subdirectories. How would you create a new subdirectory called `final/` within each of the subdirectories using a single command?

# initializing the parent directory with projects
parent_dir="projects"

# checking if the parent directory exists or not
if [ ! -d "$parent_dir" ];
then
    echo "Error: Directory '$parent_dir' does not exist."
    exit 1
fi

# loop which goes through each subdirectory in the parent directory
for dir in "$parent_dir"/*/; do
    dir=${dir%/} # remove trailing slash

    if [ -d "$dir" ]; then
        mkdir -p "$dir/final" # creates the 'final' subdirectory
        echo "Created 'final' in $dir"
    fi
done
