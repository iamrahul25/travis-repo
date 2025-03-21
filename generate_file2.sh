#!/bin/bash

# Check if file.txt exists
if [ -f "file.txt" ]; then
    # Read the content of file.txt
    content=$(cat file.txt)

    # Write the content to file2.txt
    echo "$content" > file2.txt

    # Add file2.txt to the Git repository
    git add file2.txt

    # Commit the changes
    git commit -m "Automatically generated file2.txt from file.txt"

    # Push the changes to the repository
    git push origin main  # Change 'main' to your branch name if necessary
else
    echo "file.txt does not exist."
    exit 1
fi
