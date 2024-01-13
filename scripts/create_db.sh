#!/bin/bash

# Define the database name
DB_NAME="flyway_demo.db"

# Check if the database already exists
if [ -d "../database/$" ]; then
    echo "Database Directory already exists."
else
    # Create a new SQLite database
    mkdir ../database
    echo "Database Directory created."
fi

if [ -f "$DB_NAME" ]; then
    echo "Database ../database/$DB_NAME already exists."
else
    # Create a new SQLite database
    sqlite3 ../database/$DB_NAME "PRAGMA journal_mode=WAL;"
    echo "Database $DB_NAME created."
fi

