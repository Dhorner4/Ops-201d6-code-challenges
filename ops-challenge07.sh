#!/bin/bash

#Script: Ops 201 Class 07 Ops Challenge Solution
# Author: Dericus Horner
# Date of latest revision:02/14/2023
# Purpose: System Information

# Main 

# Information about the CPU
echo "CPU information:"
sudo lshw -class processor | grep -E 'product|vendor|physical id|bus info|width'

# Information about the RAM
echo "RAM information:"
sudo lshw -class memory | grep -E 'description|physical id|size'

# Information about the display adapter
echo "Display adapter information:"
sudo lshw -class display | grep -E 'description|product|vendor|physical id|bus info|width|clock|capabilities|configuration|resources'

# Information about the network adapter
echo "Network adapter information:"
sudo lshw -class network | grep -E 'description|product|vendor|physical id|bus info|logical name|version|serial|size|capacity|width|clock|capabilities|configuration|resources'

# End