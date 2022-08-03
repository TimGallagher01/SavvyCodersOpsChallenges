# !/bin/bash

# Script Name: Class13.sh
# Author Name: Tim Gallagher
# Date of revision: 7/29/2022
# Description of purpose:  Ops CHallenge 13 - Domain Analyzer
# Example usage: $bash class13.sh
# Expected output: Analyze domain name supplied by user
# Declaration of variables (if any): user_domain
# Declaration of functions (if any): read_domain


# Declare and set variables

echo -e "\nPlease supply the domain name you wish to research:"
    read user_domain

 read_domain(){

    whois $user_domain
    dig $user_domain
    host $domain
    nslookup $user_domain
    }

# Main

read_domain > classs13_info.txt

# End

