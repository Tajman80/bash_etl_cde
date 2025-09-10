#!/bin/bash

#Database credentials
db_name="posey"
db_user="postgres"
db_password="postgres"


# Export the password to avoid prompts
export PGPASSWORD="$db_password"
#goto the directory raw
cd /c/Users/Bluechip/Documents/cde/Assignment/git_linux_assignment/parch_and_posey/raw_data

#iterate over the differnt files and tables

for f in *.csv; do

#remove .csv
table="${f%.csv}"

echo "loading $f into table $table..."

#file paths in the directory

filepath="C:/Users/Bluechip/documents/cde/Assignment/git_linux_assignment/parch_and_posey/raw_data/$f"
#Load data into PostreSQL using the \COPY Command
psql -U "$db_user" -d "$db_name" -c "\COPY $table FROM '$filepath' WITH CSV HEADER DELIMITER ','";
done;

echo "Data Loaded into PostgreSQL table web events"
