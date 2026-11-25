#!/bin/bash

# Author: Komal Sharda
# Roll Number: 2601730304
# Folder Backup Script

# Check whether folder argument is provided
if [ -z "$1" ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

SOURCE="$1"

# Check whether source folder exists
if [ ! -d "$SOURCE" ]; then
    echo "Error: Folder does not exist."
    exit 1
fi

# Create backup directory
BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"
mkdir -p "$BACKUP_DIR"

# Generate timestamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Create archive
BACKUP_FILE="$BACKUP_DIR/backup_${TIMESTAMP}.tar.gz"

if tar -czf "$BACKUP_FILE" -C "$(dirname "$SOURCE")" "$(basename "$SOURCE")"; then
    SIZE=$(du -h "$BACKUP_FILE" | cut -f1)

    echo "Backup created successfully!"
    echo "File: $BACKUP_FILE"
    echo "Size: $SIZE"

    echo "$(date): SUCCESS - $BACKUP_FILE ($SIZE)" >> "$BACKUP_DIR/backup.log"
else
    echo "Error: Backup failed."
    echo "$(date): FAILED - $SOURCE" >> "$BACKUP_DIR/backup.log"
    exit 1
fi
