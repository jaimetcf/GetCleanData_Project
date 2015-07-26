###################################################################
# Returns a data frame with the average of each column of dset
# (from column 3 to ncols) sumarized by columns Subject (column 1)
# and Activity (Column 2)
###################################################################

averages_per_subject_and_activity <- function(dset)
{
  # Gets number of columns of dset
  ncolumns <- ncol(dset);
  
  # Builds the data.frame "average_data" with the means
  average_data <- aggregate(dset[3:ncolumns], 
                            by = dset[c("Subject","Activity")], 
                            FUN=mean);
  
  # returns the summarized data set
  return(average_data);
}