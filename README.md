# GettingAndSharingDataCourseProject
Coursera - Data Science Specialization - Course 3 - Getting and Cleaning Data - Course Project

##Note: for script to run correctly the folder 'UCI HAR Dataset' must be in your R working directory
##Required packages: 'tidyverse'

The script 'run_analysis.r' will do the following:
1. read in the raw data from the .txt files
2. convert the resulting dataframes to 'tibbles' to work in the 'tidyverse' (see: "http://r4ds.had.co.nz/tibbles.html")
3. add 'activity' and subject' columns from the 'Y' and 'subject' sets after renaming the columns of the 'Y' and 'subject' sets 'activitynum' and 'subject' respectively
4. combine the 'x' training set and the 'x' test set into one set
5. add 'activity' and 'subject' to 'features' to facilitate merging the 'features' in as column/variable names for the main set
6. clean up the 'features' so they don't include reserved characters (ie. '()', '-')
7. Modify duplicate 'features' to be unique so they can be used as column names
8. use the updated 'features' list to set the column/variable names of the data set
7. isolate and extract columns containing means or standard deviations
8. move 'activity' and 'subject' columns to front of the order for visibility
9. create a lookup table assigning descriptive names to activities using 'activity_labels.txt
10. join lookup table with main dataset to apply descriptive names to activities
11. move 'activity' column to the front for visibility
12. rename variables to be more intuitive
13. create second, independent tidy data set with average of each variable for each activity and each subject

Data is now tidy meaning:
- only one variable per column
- only one observation per row
- column names are clear to understand (assuming you are familiar with the study/subject matter :) )

Original data available here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
