#!/bin/bash

#Script: Ops 201 Class 04 Ops Challenge Solution
# Author: Dericus Horner
# Date of latest revision:02/09/2023
# Purpose: Arrays

# Main

mkdir dir1 dir2 dir3 dir4

path_array=("./dir1/" "./dir2/" "./dir3/" "./dir4/")

touch "${path_array[0]}file1.txt"
touch "${path_array[1]}file1.txt"
touch "${path_array[2]}file1.txt"
touch "${path_array[3]}file1.txt"

# End