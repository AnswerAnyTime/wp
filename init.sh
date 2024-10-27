#!/bin/sh

# Define source and target directories
SOURCE_DIR="/wp-app"
TARGET_DIR="../files/wp-app"

# Check if the source directory exists
if [ -d "$SOURCE_DIR" ]; then
    # Ensure target directory structure exists
    mkdir -p "$TARGET_DIR"

    # Move the entire wp-app directory to the target location
    echo "Moving $SOURCE_DIR to $TARGET_DIR..."
    mv "$SOURCE_DIR"/* "$TARGET_DIR/"
    
    echo "Move complete. All contents from wp-app have been moved to $TARGET_DIR."
else
    echo "Source directory $SOURCE_DIR does not exist. Skipping move."
fi
