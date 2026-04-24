#!/bin/bash
# ---------------------------------------------------------
# Example Linux Commands Used in Linux Fundamentals Part 2
# ---------------------------------------------------------

echo "Running Linux Fundamentals Part 2 example commands..."

# List files including hidden ones
ls -la

# Show help for a command
ls --help

# View manual page
man touch

# Create files and directories
touch example.txt
mkdir example-folder

# Copy, move, and remove
cp example.txt example-copy.txt
mv example-copy.txt moved-example.txt
rm moved-example.txt

# Identify file type
file example.txt

# View permissions
ls -l example.txt

# Switch user (example only)
# su -l analyst

echo "Commands completed."
