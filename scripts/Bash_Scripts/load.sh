#!/bin/bash

#Load scripts
#save the tranformed data into a variable
transformed_data="/c/Users/Bluechip/Documents/cde/Assignment/git_linux_assignment/Transformed/2023_year_finance.csv"

#remove gold directory to avoid error
rm -r /c/Users/Bluechip/Documents/cde/Assignment/git_linux_assignment/Gold

#load into  a directory gold
mkdir /c/Users/Bluechip/Documents/cde/Assignment/git_linux_assignment/Gold && cd /c/Users/Bluechip/Documents/cde/Assignment/git_linux_assignment/Gold
awk '{print}' $transformed_data >  2023_year_finance_final.csv
[ -f 2023_year_finance_final.csv ] && echo "Loading Completed Final Data Loaded into Gold"
