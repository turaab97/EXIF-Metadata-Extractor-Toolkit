#!/bin/bash

# Check if exiftool is installed
if ! command -v exiftool &> /dev/null; then
    echo "exiftool is not installed. Please install it first."
    exit 1
fi

# Check if a file is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <image_file>"
    exit 1
fi

# Get EXIF metadata
exiftool "$1"

