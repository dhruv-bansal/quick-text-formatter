#!/bin/bash

# Path to the text file to watch
file_path="./fileToBeFormatted.txt"

# Function to reformat the file
reformat_file() {
    # Remove empty lines from the file
    sed -i '' '/^$/d' "$file_path"

    # Replace new line character with empty space
    tr '\n' ' ' < "$file_path" > "$file_path.tmp" && mv "$file_path.tmp" "$file_path"

    # Add your additional reformatting logic here
    # For example, you can use sed to replace tabs with spaces:
    sed -i '' 's/\t/    /g' "$file_path"
}


reformat_file

