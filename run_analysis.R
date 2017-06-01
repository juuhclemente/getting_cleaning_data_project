#Install Libraries and packages
library(dplyr)
library(data.table)
library(ggplot2)
library(lattice)
library(jpeg)
library(gsubfn)
```

# Import the data set
## Download zip file
temp <- tempfile()
download.file(
    "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
    temp)

unzip(temp)

# Merges the training and the test sets to create one data set.
## Read datasets

# Import test set, test names and test subjects files
test_set <- read.table("./UCI HAR Dataset/test/X_test.txt")
test_names <- read.table("./UCI HAR Dataset/test/y_test.txt")
test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Import train set, train names and train subjects files
train_set <- read.table("./UCI HAR Dataset/train/X_train.txt")
train_names <- read.table("./UCI HAR Dataset/train/y_train.txt")
train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# Import col names from dataset and activity label
features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")


## Merge training and test sets:
test_set <- cbind(test_subject, test_names, test_set)
train_set <- cbind(train_subject, train_names, train_set)
dataset <- rbind(test_set, train_set)

colnames(dataset) <- c("subject_id", "activity", features[,2])


# Extracts only the measurements on the mean and standard deviation for each measurement.

matches <- grepl("(mean\\(|std\\()", colnames(dataset))
untidyData <- cbind(dataset[1:2], dataset[matches])


# Uses descriptive activity names to name the activities in the data set

untidyData$activity <- activity_labels[untidyData$activity, 2]


# Appropriately labels the data set with descriptive variable names

# Average of each variable, for each activity and each subject
names(untidyData)<-gsub("std()", "sd", names(untidyData))
names(untidyData)<-gsub("mean()", "mean", names(untidyData))
names(untidyData)<-gsub("^t", "time", names(untidyData))
names(untidyData)<-gsub("^f", "freq", names(untidyData))
names(untidyData)<-gsub("Acc", "accelerometer", names(untidyData))
names(untidyData)<-gsub("Gyro", "gyroscope", names(untidyData))
names(untidyData)<-gsub("BodyBody", "Body", names(untidyData))
names(untidyData)<-gsub("-", "_", names(untidyData))


# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

tidyData<-aggregate(. ~activity + subject_id, untidyData, mean)


# Export the tidy dataset

write.table(tidyData, file = "./UCI HAR Dataset/tidyDataset.txt", row.name=FALSE)


