#!/bin/bash

# MySQL database credentials
DB_USER="root"
DB_PASSWORD="root"

# Backup directory
BACKUP_DIR="./backup1/"

# Get the list of databases
DATABASES=$(mysql -u "$DB_USER" -p"$DB_PASSWORD" -e "SHOW DATABASES;")
# | grep -Ev "(Database|information_schema|performance_schema|mysql)")

# Generate a timestamp
TIMESTAMP=$(date +"%Y%m%d%H%M%S")

# Loop through each database and perform the backup
for DB_NAME in $DATABASES; do
  # Backup file name
  BACKUP_FILE="${BACKUP_DIR}/${DB_NAME}_${TIMESTAMP}.sql"

  # Perform the database backup
  mysqldump -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" > "$BACKUP_FILE"

  # Check if the backup was successful
  if [ $? -eq 0 ]; then
    echo "Database backup created successfully for $DB_NAME: $BACKUP_FILE"
  else
    echo "Error creating database backup for $DB_NAME"
  fi
done
