#!/bin/bash

# not working
# sudo apt install mailutils

recipient="admin@example.com"
subject="Greeting"
message="Welcome to our website."
mail -s $subject $recipient <<< $message