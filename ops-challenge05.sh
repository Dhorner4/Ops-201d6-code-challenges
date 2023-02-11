#!/bin/bash

#Script: Ops 201 Class 05 Ops Challenge Solution
# Author: Dericus Horner
# Date of latest revision:02/10/2023
# Purpose: Print a string to the terminal

# Main 

Letseewhathappen(){
ps -e -o pid,cmd=
}
Letseewhathappen

KillOps(){
    read -p "want to kill a function" pid
    kill $pid
}


while true; do 
echo "1. kill this process "
echo "2. quit"
read -p "please choose" choice

case $choice in
1) KillOps;;
2) break;;
esac
done


# End
