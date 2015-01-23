# R script for analyzing data collected from the accelerometers from the Samsung Galaxy S smartphone

A full description of the data is available at the site:
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]
The script is called run_analysis.R: it gets the raw data derived from the measurements and organizes it into a more tidy, human-readable table tidy_results.txt.
The first part of the script is responsible for reading the data and merging the train and test datasets in a dataset.
``` R
train <- read.table("./train/X_train.txt")
test <- read.table("./test/X_test.txt")
merged_data <- tbl_df(rbind(train,test))
```
Similarly, the script reads tha activities carried out by the subjects enrolled in the study and the identity code specific for each subject and merges this information with the previous table. In this way, a reader can identify in a glance the subject and the kind of physical activity that corresponds to the accelerometer data.
The original table does not contain column headers to identify the measurements. Those are read from another file, cleaned up and merged to the table:
```R
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
```
