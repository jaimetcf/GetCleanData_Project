extract_mean_and_std <- function(data_set)
{
  # Finds columns with means and std deviations
  has_mean <- grep("mean()", names(data_set), fixed=TRUE,value=FALSE);
  has_std <- grep("std()", names(data_set), fixed=TRUE,value=FALSE);
  
  # Creates an ordered vector with the indexes 1, 2 and the indexes
  # of the columns of data set which has either a mean or an std
  has_means_and_stds <- c(1,2,has_mean,has_std);
  has_means_and_stds <- sort(has_means_and_stds);
  
  # Returns a subset of data_set, which has only the columns that
  # hava a mean or a standard deviation value, plus columns 1 and 2
  return(data_set[has_means_and_stds]); 
}