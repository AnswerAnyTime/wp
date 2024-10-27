#!/bin/sh

# Define source and target directories
SOURCE_DIR="/wp_app"
TARGET_DIR="/wp_app2"

# Check if the source directory exists
if [ -d "$SOURCE_DIR" ]; then
    echo "Source directory $SOURCE_DIR exists."
    ls -la "$SOURCE_DIR"

    echo "Target directory $TARGET_DIR exists."
    ls -la "$TARGET_DIR"

    # Ensure target directory structure exists
    mkdir -p "$TARGET_DIR"

    # Copy the contents of wp_app to the target directory
    echo "Copying $SOURCE_DIR to $TARGET_DIR..."
    cp -r "$SOURCE_DIR"/* "$TARGET_DIR/"
    
    # Remove the original files
    # echo "Removing original files from $SOURCE_DIR..."
    # rm -rf "$SOURCE_DIR"/*

    echo "Move complete. All contents from wp_app have been copied to $TARGET_DIR and original source cleared."
else
    echo "Source directory $SOURCE_DIR does not exist. Skipping move."
fi
