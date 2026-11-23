#!/bin/bash

PROJECT_DIR="$HOME/devops-project"
BACKUP_DIR="$HOME/devops-backups"

mkdir -p "$BACKUP_DIR"

DATE=$(date +%Y-%m-%d_%H-%M-%S)

BACKUP_FILE="$BACKUP_DIR/devops-project-$DATE.tar.gz"

tar -czf "$BACKUP_FILE" -C "$HOME" devops-project

if [ $? -eq 0 ]; then
    echo "Backup completed successfully!"
    echo "Backup location: $BACKUP_FILE"
else
    echo "Backup failed!"
    exit 1
fi

