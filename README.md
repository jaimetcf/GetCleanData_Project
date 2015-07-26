This file explains how the run_analysis.R script works and how it is related to the other scrips present in this repo.

To run the run_analysis.R script, the file "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
must have been downloaded and unziped in your working directory, what will create a folder named: "UCI HAR Dataset" with
the correct sub-folders and files expected by run_analysis.R.

After unziping the file, just type:

source("run_analysis.R")

and, then type:

run_analysis

The script will source all the other necessary functions, and run them in the correct order to merge, filter and summarize 
original data, according to the project specifications.

The run_analysis.R script will source and execute the following functions:

merge_sets.R                   -> Reads the files in the "UCI HAR Dataset" folder and merges the training and the test 
                                  sets found there to create a single data set

extract_mean_and_std.R         -> Receives the merged data set as parameter and extracts from it only the measurements on                                     the mean and standard deviation for each measurement. Returns a new data set with the                                       extracted measurements

name_activities.R -> Receives the merged data set as parameter and associates the activity names found in the                                    "activity_labels.txt" file to the activities in the merged data set, according to each respective                            activity number. Returns the updated data set.

averages_per_subject_and_activity.R -> Receives the merged data set as parameter and creates a second data set, independent tidy data set with the average of each variable for each activity and each subject. Returns the new data set with
the summarized data.

Finally, run_analysis.R creates the file "tidy_data.txt" with the data set received from the function "averages_per_subject_and_activity.R".

This file will be rewritten every time run_analysis.R is run.


