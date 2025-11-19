#!/bin/bash

# Mini File Search Utility
# Search files by name, extension, or size
# Usage: ./search.sh <directory> <name/extension> [size]
# Examples:
#   ./search.sh /home "report"      # name contains 'report'
#   ./search.sh . "txt"             # all .txt files
#   ./search.sh . "log" +100k       # .log files larger than 100 KB

# Check directory argument
if [ -z "$1" ]; then
    echo "Error: Directory not provided."
    echo "Usage: $0 <directory> <name/extension> [size]"
    exit 1
fi

# Check search keyword argument
if [ -z "$2" ]; then
    echo "Error: Search keyword not provided."
    echo "Usage: $0 <directory> <name/extension> [size]"
    exit 1
fi

DIRECTORY="$1"
KEYWORD="$2"
SIZE_FILTER="$3"

# Create patterns
PATTERN1="*$KEYWORD*"   # match file name containing keyword
PATTERN2="*.$KEYWORD"   # match file extension

echo "Searching in directory: $DIRECTORY"
echo "Keyword: $KEYWORD"

# Search logic
if [ -z "$SIZE_FILTER" ]; then
    find "$DIRECTORY" -type f \( -iname "$PATTERN1" -o -iname "$PATTERN2" \)
else
    echo "Applying size filter: $SIZE_FILTER"
    find "$DIRECTORY" -type f \( -iname "$PATTERN1" -o -iname "$PATTERN2" \) -size "$SIZE_FILTER"
fi
