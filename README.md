---
title: "README Assignment: Getting and Cleaning Data Course Project"
author: "Ivo Willemsen"
date: "August 12, 2017"
output: html_document
---
version: 1.0

## Experiment

This assignment was based on an experiment and full information regarding this experiment can be retrieved from here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. The data for the experiment can be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. 

The aforementioned zip file contains all the documents and dataset that are of interest for the experiment. This assignment was based on that set of documentation and data. The original documentation and datasets were not touched by the assignment, **the assignment will only add to the original experiment in the form of extra scripts, datasets, codebook and README markdown document (this document).**

## Assignment requirements

The assignment encompassed the processing of the original datasets that are contained in the above mentioned references. The requirements for this assignment were the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Artifacts

The result of this assignments are the following artifacts:

1. The getting_cleaning_data_README.md file (this file)
2. The getting_cleaning_data_codebook.md file that contains that describes the requested datasets
3. The script getting_cleaning_data.R that takes as input the datasets described in the **Experiment** and generates two extra datasets, being the **getting_cleaning_data_datasets.csv** and **getting_cleaning_data_averages.csv**. These datasets are described in the next bullet
4. Dataset getting_cleaning_data_dataset.csv: mean and std variables of original X_train.txt and X_test.txt. Newly introduced variables are the type (train or test), the activity label and the subject
5. Dataset getting_cleaning_data_averages.csv. Contains the mean and std variables of the original X_train.txt and X_test.txt and these variables are grouped by the subject and the activity and averages are calculated for these variables

## Script

The script getting_cleaning_data.R contains the code that reads the original datasets and generates the required enriched datasets, being **getting_cleaning_data_dataset.csv** and **getting_cleaning_data_averages.csv**.

### Dependent libraries

The script **getting_cleaning_data.R** uses the libraries dplyr and gsubfn. These libraries can be installed the following way:
* install.packages('dplyr')
* install.packages('gsubfn')

These packages must be installed before the script getting_cleaning_data.R can be run successfully

### Design of the script

The script can be divided in the following steps, which can be considered the design of the code:

#### Main script

1. Read the features from the file. The file features.txt contains the 561 variables for which data has been collected. This file is read into the R environment and is used to serve as the column headers of the future two datasets 
2. Add a column name to the headers that indicate the type (i.e. train or test). The type of the original dataset is being added to the column headers
3. Remove the parentheses and commas from the names of the variable mean and std variable names. The original column headers contains parentheses and commas. In order to avoid further problems during processing, these characters are removed from the column headers and replaced by the empty string
4. Read the activity labels from the file. The file activity_labels.txt is read into the R environment and kept in the data frame activities. The data frame contains two variables: the activity id and the activity label. The activity id is used later to join with the data in the y_<train|test>.txt in order to find the correct activity label that must be used to show the activity
5. Get the train dataset. This method reads the train dataset (X_train.txt) into the R environment (data frame). It uses the function **read_dataset** in order to perform this task
6. Get the test dataset. This method reads the train dataset (X_test.txt) into the R environment (data frame). It uses the function **read_dataset** in order to perform this task
7. Vertically merge the two data frames into a new data frame. The data frames that were produced in step 5 and 6 are vertically merged and a new data frame
8. Write dataframe to file. The data frame that was produced in step 7 is serialized to disk in the form of a .csv file, named **getting_cleaning_data_dataset.csv**
9. Do a group-by activity and subject. A new data frame is created that contains averages of all variables in the raw data frame, grouped by activity and subject
10. Write the data frame to file. The data frame that was created in step 9 is written to the file **getting_cleaning_data_averages.csv**

#### Function read_dataset

The funcition read_dataset was created in order to reduce code duplication because the read_dataset function is called twice to load both the test data and the train data. This function performs the following steps:

1. Read the dataset. Read the dataset into a data frame, being either the X_train.txt or the X_test.txt dataset, depending on the type parameter that is being passed
2. Add the variable that indicates the type of set. The type of the dataset is appended to the data frame that was constructed in step 1
3. Read the file that contains the references to the activity labels. The file that contains the references (ids) to the activity labels is being read into a data frame activity_references. The name of this file is either y_test.txt or y_train.txt, depending on the type that was passed to the function
4. Merge the activities and activity_references and only keep the label column and store in vector activity_labels
6. Add the activity labels to the dataset as the last column
6. Read the file that contains the subjects. For every observation in the X_<train|test>.txt file, there is an matching subject. These subjects are loaded into the data frame subjects to be merged later in the data frame that contains the observations (x)
7. Add the subjects to the dataset as the last colunmn
8. Add the column headers to the data frame x
9. Only keep the mean and std column names, and also the type, activity and subject
10. Return the data frame x that contains the tidied variables

## How to prepare the generation

In order to run the script, the following steps have to be performed:

1. Download all the files that are contains in the Github location (https://github.com/ivowillemsen/GettingCleaningData.git) into a local directory. Let's name this **local_directory**
2. Download the zip file that contains the original datasets: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
3. Extract the files that are contained in this zip file into the directory **local_directory**. Make sure that the files are not contained in the subdirectory "UCI HAR Dataset"
4. Start RStudio or an R-console session
5. Set the working directory to the directory that was used in step 3: setwd(**local_directory**)
6. Source the script getting_cleaning_data.R: source('getting_cleaning_data.R')
7. The script will perform the operations that are described in **Design of the script** above
8. Two datasets will have been generated: **getting_cleaning_data_dataset.csv** and **getting_cleaning_data_averages.csv** in the working directory **local_directory**

