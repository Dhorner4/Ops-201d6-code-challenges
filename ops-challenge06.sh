#!/bin/bash

# Conditionals: Ops 201 Class 06 Ops Challenge Solution
# Author: Dericus Horner
# Date of latest revision:
# Purpose: Conditionals

# Main 

# Options to search for file or path
read -p "Enter the path of the file or dirctory: "file

#user will be notified if false/ user will be prompt to create if true
if [ ! -e "file" ]; then
    echo "file does not exist."
    read -p "Do you want to create sir?: answer

#if yay the file stored in variable $discover is used to create new
if [ "$discover" == "yay" ]; then 
    if file ends in * assume the user wants to create a dir
    if [[ "$file" == @/ ]]; then
    mkdir -p "$file"
    echo "Directory $file successfully created"
    # if path doesn't end with * creates new file
    else
        touch "$file"
        echo "File path was created sir"
        fi
    #if no input prompt user with no new message
    else
    echo "nothing was created sir"
    fi
#if path exist prompt user
else
    echo "path already exist sir/ma'am
fi
#End
