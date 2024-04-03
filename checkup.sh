#!/bin/bash

# Function to display header
print_header() {
    echo "----------------------------------------"
    echo "    SYSTEM MAINTENANCE CHECK REPORT"
    echo "----------------------------------------"
    echo
}

# Function to check disk usage
check_disk_usage() {
    echo "Disk Usage:"
    df -h
    echo
}

# Function to check network information
check_network_info() {
    echo "Network Information:"
    ifconfig | grep -A 1 'flags'  # Adjust command according to your system (ifconfig or ip addr)
    echo
}

# Function to check running processes
check_running_processes() {
    echo "Running Processes:"
    ps -aux --sort -%mem | head -n 10
    echo
}

# Main script execution
clear
print_header
check_disk_usage
check_network_info
check_running_processes
