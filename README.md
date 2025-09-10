#BASH ETL PROJECT

#Task 1
The Project begin with sourcing data from a url
the extract.sh was used to perform the extractions.
The transform.sh was used to transformed the data and saved as a csv
The load.sh was used to load to the final output and saved into the Gold folder as a csv file

#Task 2
The manager asked to schedule the etl to run on cron tab
which was scheduled using
command crontab -e
0 0 * * * ~/scripts/bash_scripts/extract.sh; ~/scripts/bash_scripts/transform.sh; ~/scripts/bash_scripts/load.sh

#Task 3
to move all csv and json file to another folder
the script move_json_csv.sh was used to achieve that

#Task 4
The data from csv are loaded into tables in the database posey
Tables were created on the database
then the script posey_scripts.sql was used to execute the task on the terminal

The Architecture Diagram

![ETL Architecture](https://github.com/user-attachments/assets/e5d5482e-0b1c-4c2a-b480-86406e8645ab)
