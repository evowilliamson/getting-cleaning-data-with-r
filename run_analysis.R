library(dplyr)
library(gsubfn)

## Requirements:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names.
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable 
##    for each activity and each subject.

read_dataset<-function(type, headers, activities) {
    ## Read the dataset
    x<-read.table(paste0("./", type, "/X_", type, ".txt"), header=FALSE)
    ## Add the variable that indicates the type of set
    x[, "type"] <- c(type)
    ## Read the file that contains the references to the activity labels
    activity_references<-read.table(paste0("./", type, "/y_", type, ".txt"), header=FALSE)
    colnames(activity_references)<-"activity_id"
    ## Merge the activities and activity_references and only keep the label column and store in vector
    ## This is requirement bullet no. 3
    activity_labels<-as.vector(inner_join(activity_references, activities, by=c("activity_id"))[, 2])
    ## Add the activity labels to the dataset as the last column
    x[, "activity"] <- as.vector(activity_labels)
    ## Read the file that contains the subjects
    subjects<-read.table(paste0("./", type, "/subject_", type, ".txt"), header=FALSE)
    ## Add the subjects to the dataset as the last colunmn
    x[, "subject"] <- as.vector(subjects)
    ## Add the column headers, requirement bullet no. 4
    colnames(x)<-headers
    ## only keep the mean and std column names, and also the type, activity and subject, requirement bullet no. 2
    mean_std_columns_names<- colnames(x)[grepl("mean|std|type|activity|subject", colnames(x))]
    x<-x[mean_std_columns_names]
    x<-select(x, type, activity, subject, everything())
    x
}

## Read the features from the file
features<-read.table("features.txt", header=FALSE, sep=" ")
## Add a column name to the headers that indicate the type (i.e. train or test)
headers<-c(as.vector(features[,2]), "type", "activity", "subject")
## Remove the parentheses and commas from the names of the variable mean and std variable names
headers<-unlist(lapply(headers, function(x) gsubfn(".", list(")"="", "("="", ","=""), x)))
## Read the activity labels from the file
activities<-read.table("activity_labels.txt", header=FALSE, sep=" ")
colnames(activities)<-c("activity_id", "activity_label")
## Get the train data frame
train_dataframe<-read_dataset("train", headers, activities)
## Get the test dataset
test_dataframe<-read_dataset("test", headers, activities) 
## Vertically merge the two datasets into a new dataset, requirement bullet no. 1
raw_dataframe<-rbind(train_dataframe, test_dataframe)
## Write dataset to file
write.table(raw_dataframe, "./getting_cleaning_data_dataset.csv", quote=FALSE, row.names=FALSE, col.names=FALSE)

## Do group-by activity and subject
averages<-subset(raw_dataframe, select=-type) %>%
    group_by(activity, subject) %>%
    summarise_all(funs(mean))
## Write dataset to file
write.table(averages, "./getting_cleaning_data_averages.csv", quote=FALSE, row.names=FALSE, col.names=FALSE)
