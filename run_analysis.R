library(dplyr)
library(data.table)

train <- read.table("./train/X_train.txt")
test <- read.table("./test/X_test.txt")
merged_data <- tbl_df(rbind(train,test))

train_activity <- read.table("./train/y_train.txt")
test_activity <- read.table("./test/y_test.txt")
merged_activity_dt <- data.table(rbind(train_activity,test_activity))
setnames(merged_activity_dt,"V1","activities")

train_subjects <- read.table("./train/subject_train.txt")
test_subjects <- read.table("./test/subject_test.txt")
merged_subjects_dt <- data.table(rbind(train_subjects,test_subjects))
setnames(merged_subjects_dt,"V1","subjects")


features <- read.table("features.txt",colClasses=c("numeric","character"))
names(features) <- c("index","measurement")
col_names <- features$measurement

names(merged_data) <- col_names

filtered_data <- select(merged_data,matches("-mean()"),matches("-std()"),-matches("-meanFreq"))

untidy_names_filtered_data <- names(filtered_data)
untidy_names_filtered_data <- gsub("tBody","time_Body",untidy_names_filtered_data)
untidy_names_filtered_data <- gsub("tGravity","time_Gravity",untidy_names_filtered_data)
untidy_names_filtered_data <- gsub("fBody","freq_Body",untidy_names_filtered_data)
untidy_names_filtered_data <- gsub("-","_",untidy_names_filtered_data,fixed=T)
untidy_names_filtered_data <- gsub("BodyBody","Body",untidy_names_filtered_data,fixed=T)
tidy_names_filtered_data <- gsub("()","",untidy_names_filtered_data,fixed=T)
colnames(filtered_data) <- as.character(tidy_names_filtered_data)


filtered_data_dt <- data.table(filtered_data)

merged_activity_dt[,activities := as.character(activities)] [activities == "1", activities := "walking"]
merged_activity_dt[,activities := as.character(activities)] [activities == "2", activities := "walking_upstairs"]
merged_activity_dt[,activities := as.character(activities)] [activities == "3", activities := "walking_downstairs"]
merged_activity_dt[,activities := as.character(activities)] [activities == "4", activities := "sitting"]
merged_activity_dt[,activities := as.character(activities)] [activities == "5", activities := "standing"]
merged_activity_dt[,activities := as.character(activities)] [activities == "6", activities := "laying"]


tidy_data <- cbind(filtered_data_dt,merged_activity_dt,merged_subjects_dt)
tidy_data$activities <- as.factor(tidy_data$activities)
tidy_data$subjects <- as.factor(tidy_data$subjects)

tidy_data_grouped <- group_by(tidy_data,activities,subjects)
tidy_results <- summarise_each(tidy_data_grouped,funs(mean))

write.table(tidy_results,file="./tidy_results.txt",quote = F,row.names = F)
