#!/bin/bash

# A simple Bash script for beginners

echo "Welcome to the Simple Bash Script!"

# Create a new directory
echo "Creating a directory named 'test_directory'"
mkdir test_directory
echo "Directory created."

# Navigate into the directory
cd test_directory
echo "Navigating into 'test_directory'."

# Create a new file
echo "Creating a file named 'test_file.txt'"
touch test_file.txt
echo "File created."

# List contents of the directory
echo "Listing contents of 'test_directory':"
ls
echo "Contents listed."

# Write to the file
echo "Hello World!" > test_file.txt
echo "Written 'Hello World!' to 'test_file.txt'."

# Display the file content
echo "Displaying contents of 'test_file.txt':"
cat test_file.txt
echo "Contents displayed."

# Return to the parent directory
cd ..
echo "Returned to the parent directory."

# Delete the directory and its contents
echo "Deleting 'test_directory' and its contents"
rm -r test_directory
echo "Directory deleted."

echo "Script execution completed."
