#!/bin/sh

# Define source and target directories
SOURCE_DIR="/wp_app"
TARGET_DIR="/wordpress-content"

# Ensure target directory structure exists
mkdir -p "$TARGET_DIR"

# Copy the standard WordPress files into the target directory
echo "Copying standard WordPress files to $TARGET_DIR..."
cp -r /usr/src/wordpress/* "$TARGET_DIR/"

# Copy the contents of wp_app to the target directory, overwriting as necessary
if [ -d "$SOURCE_DIR" ]; then
    echo "Copying custom files from $SOURCE_DIR to $TARGET_DIR..."
    cp -r "$SOURCE_DIR"/* "$TARGET_DIR/"
else
    echo "No custom files to copy."
fi

# Adjust ownership and permissions
echo "Setting correct ownership and permissions..."
chown -R www-data:www-data "$TARGET_DIR"
find "$TARGET_DIR" -type d -exec chmod 755 {} \;
find "$TARGET_DIR" -type f -exec chmod 644 {} \;

echo "Initialization complete. The volume now contains the merged WordPress files with correct permissions."
