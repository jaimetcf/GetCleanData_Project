###################################################################
# Replaces activity numbers in data_set "Activity" column into the
# respective activity names read from "activity_labels.txt" file
# Returns the data set with the updated column
###################################################################

name_activities <- function(data_set)
{
  # Reads activities names from "activity_labels.txt" file
  activities <- read.table("UCI HAR Dataset/activity_labels.txt");
  
  # Gets the number of activities
  nactivities <- nrow(activities);
  
  # Replaces activity number into activity name
  for(i in 1:nactivities)
  {
    data_set$Activity <- gsub(activities[i,1],
                              activities[i,2],
                              data_set$Activity
                            );
  }
  
  # Returns the original data_set updated
  return(data_set);
}
