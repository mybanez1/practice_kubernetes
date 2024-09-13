#!/bin/bash

# File to store the names
database_file="database_file.txt"

# Ask the user for their name
echo -e "\nWhat is your name?\n"
read name

# Write the name to the file
echo "$name" > database_file.txt

# Output the sentence using the content from the file
echo -e "\nHello, $(cat database_file.txt)! It's nice to meet you!\n"