#!/bin/sh

TARGET_WP_DIR="/var/www/html"

# Clear contents of the WordPress directory (persistent volume)
echo "Clearing contents of $TARGET_WP_DIR..."
rm -rf "${TARGET_WP_DIR:?}"/*

# Copy fresh files from wp-app
echo "Copying files from wp-app to WordPress directory..."
cp -r /wp-app/* "$TARGET_WP_DIR/"

echo "WordPress directory reset complete."
