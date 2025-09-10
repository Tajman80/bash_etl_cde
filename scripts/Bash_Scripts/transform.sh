#!/bin/bash
echo "Transformation started"
staged_data="/c/Users/Bluechip/Documents/cde/Assignment/git_linux_assignment/raw/annual-enterprise-survey-2023-financial-year-provisional.csv"

#rename column Variable_code to variable_code
sed -i '1s/Variable_code/variable_code/' $staged_data

#remove Transformed directory to avoid duplicate
rm -r /c/Users/Bluechip/Documents/cde/Assignment/git_linux_assignment/Transformed

#write columns year, Value, Units, variable_code into file named 2023_year_finance.csv
awk '{FS="," ; OFS="," ; print $1,$9,$5,$6}' $staged_data > 2023_year_finance.csv


#move to a folder Transformed
mkdir /c/Users/Bluechip/Documents/cde/Assignment/git_linux_assignment/Transformed
mv 2023_year_finance.csv /c/Users/Bluechip/Documents/cde/Assignment/git_linux_assignment/Transformed
cd /c/Users/Bluechip/Documents/cde/Assignment/git_linux_assignment/Transformed
[ -f 2023_year_finance.csv ] && echo "File Transformed and saved into Transformed directory"
