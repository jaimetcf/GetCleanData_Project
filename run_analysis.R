source("merge_sets.R");
source("extract_mean_and_std.R");
source("name_activities.R");
source("averages_per_subject_and_activity.R");


har_data <- merge_sets();
mean_std_data <- extract_mean_and_std(har_data);
mean_std_data <- name_activities(mean_std_data);
tidy_data <- averages_per_subject_and_activity(mean_std_data);

write.table(tidy_data, "tidy_data.txt", row.names=FALSE);
