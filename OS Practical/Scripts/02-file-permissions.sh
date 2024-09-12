#!/bin/bash

# A file named report.txt needs to be readable and writable by the owner, buttonly readable by the group and others. How would you set the permissions?

filename="report.txt"

if [ -f "$filename" ];
then
    chmod 644 "$filename"
    echo "Permissions for '$filename' have been set to 644: Read/Write for owner, Read-only for group and others."
else
    echo "Error: File '$filename' does not exist."
fi