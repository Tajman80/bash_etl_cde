#!/bin/bash

#script to move a csv and json files

# goto the source folder where the files will be moved from
cd /c/Users/Bluechip/Documents/cde/Assignment/git_linux_assignment/file_to_moved
echo $PWD

#move all json and csv files to json_and_csv
mv *.{json,csv} /c/Users/Bluechip/Documents/cde/Assignment/git_linux_assignment/json_and_csv

echo "file moved successfully"
