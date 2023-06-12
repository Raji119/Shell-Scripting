#!/bin/bash

# MySQL database credentials
DB_USER="root"
DB_PASSWORD="root"
DB_NAME="emp"

# Backup directory
BACKUP_DIR="./backup"

# Generate a timestamp for the backup file
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
BACKUP_FILE="${BACKUP_DIR}/${DB_NAME}_${TIMESTAMP}.sql"

# Perform the database backup
mysqldump -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" > "$BACKUP_FILE"

# Check if the backup was successful
if [ $? -eq 0 ]; then
  echo "Database backup created successfully: $BACKUP_FILE"
else
  echo "Error creating database backup"
fi
