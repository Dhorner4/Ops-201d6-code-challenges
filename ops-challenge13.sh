#!/bin/bash

#Script: Ops 201 Class 13 Ops Challenge Solution
# Author: Dericus Horner
# Date of latest revision:2/22/2023
# Purpose: Domain Analyzer

# Main 
read -p "Enter a domain mame: " google
# whois
echo "WHOIS information for $google:"
whois $google

# dig
echo "DNS information for $google using dig:"
dig $google

# host
echo "DNS information for $google using host:"
host $google

# nslookup
echo "DNS information for $google using nslookup:"
nslookup $google

# End
