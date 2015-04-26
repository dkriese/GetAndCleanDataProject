# Getting and Cleaning Data Project

# You should create one R script called run_analysis.R that does the following. 
# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement. 
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names. 
# From the data set in step 4, creates a second, independent tidy data set with the average 
# of each variable for each activity and each subject.
#install.packages(c("dplyr","tidyr"))
library(dplyr)
library(tidyr)

wd <- getwd()
setwd(wd)
features <- read.table("UCI_HAR_Dataset/features.txt")
selectedFeatures <- features$V1[grep("mean()|std()",features$V2)]

trainf <- read.table("UCI_HAR_Dataset/train/X_train.txt")
testf <- read.table("UCI_HAR_Dataset/test/X_test.txt")
fullset <- rbind(trainf,testf)
reducedset <- select(fullset, selectedFeatures)

# get column vector of selected features (e.g. contain mean or std)
tmp <- features[selectedFeatures,]$V2
# prepend upper case characters with an underscore
#tmp <- gsub("[[:upper:] ]", "_[:upper:]", tmp)
# remove all non-alphanumeric characters
tmp <- gsub("[^[:alnum:] ]", "", tmp)
tmp <- gsub("mean","Mean", tmp)
tmp <- gsub("std", "Std", tmp)

names(reducedset) <- tmp
# create and merge dataset_type column
# train_vector <- rep("train",each=length(trainf))
# test_vector <- rep("test",each=length(testf))
# full_type <- rbind(train_vector, test_vector)

# merge subjects column
train_subjects <- read.table("UCI_HAR_Dataset/train/subject_train.txt")
test_subjects <- read.table("UCI_HAR_Dataset/test/subject_test.txt")
full_subjects <- rbind(train_subjects, test_subjects)

# merge activities column
train_activities <- read.table("UCI_HAR_Dataset/train/y_train.txt")
test_activities <- read.table("UCI_HAR_Dataset/test/y_test.txt")
full_activities <- rbind(train_activities, test_activities)

activity_labels <- read.table("UCI_HAR_Dataset/activity_labels.txt")

final_wide <- cbind(full_subjects, full_activities, reducedset)

names(final_wide)[1] <- "subjectid"
names(final_wide)[2] <- "activity"

#final_long <- final_wide %>% gather(feature, measurement, tBodyAccMeanX:fBodyBodyGyroJerkMagMeanFreq)
final_long <- final_wide %>% gather(feature, measurement, tBodyAccMeanX:fBodyBodyGyroJerkMagMeanFreq)
# change activity numbers to lower case activity names
final_long$activity <- tolower(activity_labels$V2[final_long$activity])
# separate feature names with an underscore to be split out in the separate step
final_long$feature <- tolower(gsub("([A-Z])","\\_\\1",final_long$feature))

# try to normalize feature column with separate
# seplongdf <- final_long %>% separate(feature, c("transformtype","entity","action","statistic","direction"),
#                                    sep = "_", extra = "merge")
# not trying this after all because of comments in course forum

# get summarized dataset
# summarized_df <- seplongdf %>% group_by(subject_id, activity, feature) %>% summarise(average=mean(measurement),standarddev=sd(measurement))
summarized_df <- final_long %>% group_by(subjectid, activity, feature) %>% summarise(average=mean(measurement),standarddev=sd(measurement))
# print(summarized_df)
write.table(summarized_df,file="summarized_df.txt",row.names=FALSE, quote=FALSE)
# df <- read.table("summarized_df.txt",header=TRUE)
