#!/bin/bash
#CDE git and Linux Assignment

#Author: Sulyman Taiye Ahmed

echo "Hello CDE Bootcampers!! Extraction of data in progress"
#Extract Script

rm -r /c/Users/Bluechip/Documents/cde/Assignment/git_linux_assignment/raw

mkdir /c/Users/Bluechip/Documents/cde/Assignment/git_linux_assignment/raw && cd /c/Users/Bluechip/Documents/cde/Assignment/git_linux_assignment/raw


export url="https://www.stats.govt.nz/assets/Uploads/Annual-enterprise-survey/Annual-enterprise-survey-2023-financial-year-provisional/Download-data/annual-enterprise-survey-2023-financial-year-provisional.csv"

curl -O $url
echo $PWD
[ -f annual-enterprise-survey-2023-financial-year-provisional.csv ] && echo "Extraction is successful"
