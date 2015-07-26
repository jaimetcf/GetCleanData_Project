###################################################################
# 1- Merges the training and the test sets to create one data set.#
###################################################################
merge_sets <- function()
{
  # Reads feature names from "features.txt" file
  features <- read.table("UCI HAR Dataset/features.txt");

#################### Reads train set information ##################
  # Reads feature vectors from "X_train.txt" file
  X_train <- read.table("UCI HAR Dataset/train/X_train.txt");

  # Attaches feature names into X_train data table
  names(X_train) <- features[,2];

  # Reads activity numbers (1-6) from "y_train.txt" file.
  # This file informs the activity associated with each
  # feature vector present in the file "X_train.txt"
  y_train <- read.table("UCI HAR Dataset/train/y_train.txt");

  # Reads subject numbers (1-30) from "subject_train.txt" file.
  # This file informs the subject associated with each
  # feature vector present in the file "X_train.txt"
  subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt");

  # Merges subject, activity and feature vector information in a 
  # single data.frame
  train_data <- cbind(subject_train,y_train,X_train);


##################### Reads test set information ##################
  # Reads feature vectors from "X_test.txt" file
  X_test <- read.table("UCI HAR Dataset/test/X_test.txt");

  # Attaches feature names into X_test data table
  names(X_test) <- features[,2];

  # Reads activity numbers (1-6) from "y_test.txt" file.
  # This file informs the activity associated with each
  # feature vector present in the file "X_test.txt"
  y_test <- read.table("UCI HAR Dataset/test/y_test.txt");

  # Reads subject numbers (1-30) from "subject_test.txt" file.
  # This file informs the subject associated with each
  # feature vector present in the file "X_test.txt"
  subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt");

  # Merges subject, activity and feature vector information in a 
  # single data.frame
  test_data <- cbind(subject_test,y_test,X_test);


######## Merges train and test sets into a single data set ########
  # merges train and test sets
  har_data <- rbind(train_data,test_data);
  
  # Assigns names to the 1st and 2nd column of the result data frame
  names(har_data)[1] <- "Subject";
  names(har_data)[2] <- "Activity";

  return(har_data);  # Returns the result data frame
}







