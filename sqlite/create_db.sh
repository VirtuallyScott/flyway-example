#!/bin/bash

# Define the database name
DB_NAME="flyway_demo.db"

# Check if the database already exists
if [ -f "$DB_NAME" ]; then
    echo "Database ./$DB_NAME already exists."
else
    # Create a new SQLite database
    sqlite3 ./$DB_NAME "PRAGMA journal_mode=WAL;"
    echo "Database $DB_NAME created."
fi
