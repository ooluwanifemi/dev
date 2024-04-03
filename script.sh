#!/bin/bash

# Script to collect and display user information

# Function to collect user information
collect_info() {
    read -p "Enter your name: " name
    read -p "Enter your height (e.g., 5ft 6in): " height
    read -p "Enter your country: " country
    read -p "Enter your age: " age
}

# Function to display the collected information
display_info() {
    echo "--------------------------------"
    echo "         User Information       "
    echo "--------------------------------"
    echo "Name: $name"
    echo "Height: $height"
    echo "Country: $country"
    echo "Age: $age"
    echo "--------------------------------"
}

# Main execution
echo "Please provide your information:"
collect_info
display_info

