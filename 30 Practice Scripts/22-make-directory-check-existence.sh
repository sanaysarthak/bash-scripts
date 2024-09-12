#!/bin/bash

echo "Enter directory name: "
read ndir
if [ -d "$ndir" ]
then
    echo "Directory exists already."
else
    mkdir $ndir
    echo "'$ndir' Directory created."
fi