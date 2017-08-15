---
title: "Codebook Assignment: Getting and Cleaning Data Course Project"
author: "Ivo Willemsen"
date: "August 12, 2017"
output: html_document
---
version: 1.0

## getting_cleaning_data_dataset.csv

This dataset is the main dataset and it lists observations on the level of type, activity and subject. These are the variables in the dataset:

|variable                       | unit     | description                                         |      
|-------------------------------|----------| ----------------------------------------------------|  
|type                           | chr      | the type of the observation: {train, test}          |      
|activity                       | chr      | the activity {WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING}|  
|subject                        | int      | the id of the subject                               |  
|tBodyAcc-mean-X                | num      | raw value from either test or train original dataset|      
|tBodyAcc-mean-Y                | num      | raw value from either test or train original dataset|      
|tBodyAcc-mean-Z                | num      | raw value from either test or train original dataset|
|tBodyAcc-std-X                 | num      | raw value from either test or train original dataset|
|tBodyAcc-std-Y                 | num      | raw value from either test or train original dataset|
|tBodyAcc-std-Z                 | num      | raw value from either test or train original dataset|
|tGravityAcc-mean-X             | num      | raw value from either test or train original dataset|
|tGravityAcc-mean-Y             | num      | raw value from either test or train original dataset|
|tGravityAcc-mean-Z             | num      | raw value from either test or train original dataset|
|tGravityAcc-std-X              | num      | raw value from either test or train original dataset|
|tGravityAcc-std-Y              | num      | raw value from either test or train original dataset|
|tGravityAcc-std-Z              | num      | raw value from either test or train original dataset|
|tBodyAccJerk-mean-X            | num      | raw value from either test or train original dataset|
|tBodyAccJerk-mean-Y            | num      | raw value from either test or train original dataset|
|tBodyAccJerk-mean-Z            | num      | raw value from either test or train original dataset|
|tBodyAccJerk-std-X             | num      | raw value from either test or train original dataset|
|tBodyAccJerk-std-Y             | num      | raw value from either test or train original dataset|
|tBodyAccJerk-std-Z             | num      | raw value from either test or train original dataset|
|tBodyGyro-mean-X               | num      | raw value from either test or train original dataset|
|tBodyGyro-mean-Y               | num      | raw value from either test or train original dataset|
|tBodyGyro-mean-Z               | num      | raw value from either test or train original dataset|
|tBodyGyro-std-X                | num      | raw value from either test or train original dataset|
|tBodyGyro-std-Y                | num      | raw value from either test or train original dataset|
|tBodyGyro-std-Z                | num      | raw value from either test or train original dataset|
|tBodyGyroJerk-mean-X           | num      | raw value from either test or train original dataset|
|tBodyGyroJerk-mean-Y           | num      | raw value from either test or train original dataset|
|tBodyGyroJerk-mean-Z           | num      | raw value from either test or train original dataset|
|tBodyGyroJerk-std-X            | num      | raw value from either test or train original dataset|
|tBodyGyroJerk-std-Y            | num      | raw value from either test or train original dataset|
|tBodyGyroJerk-std-Z            | num      | raw value from either test or train original dataset|
|tBodyAccMag-mean               | num      | raw value from either test or train original dataset|
|tBodyAccMag-std                | num      | raw value from either test or train original dataset|
|tGravityAccMag-mean            | num      | raw value from either test or train original dataset|
|tGravityAccMag-std             | num      | raw value from either test or train original dataset|
|tBodyAccJerkMag-mean           | num      | raw value from either test or train original dataset|
|tBodyAccJerkMag-std            | num      | raw value from either test or train original dataset|
|tBodyGyroMag-mean              | num      | raw value from either test or train original dataset|
|tBodyGyroMag-std               | num      | raw value from either test or train original dataset|
|tBodyGyroJerkMag-mean          | num      | raw value from either test or train original dataset|
|tBodyGyroJerkMag-std           | num      | raw value from either test or train original dataset|
|fBodyAcc-mean-X                | num      | raw value from either test or train original dataset|
|fBodyAcc-mean-Y                | num      | raw value from either test or train original dataset|
|fBodyAcc-mean-Z                | num      | raw value from either test or train original dataset|
|fBodyAcc-std-X                 | num      | raw value from either test or train original dataset|
|fBodyAcc-std-Y                 | num      | raw value from either test or train original dataset|
|fBodyAcc-std-Z                 | num      | raw value from either test or train original dataset|
|fBodyAcc-meanFreq-X            | num      | raw value from either test or train original dataset|
|fBodyAcc-meanFreq-Y            | num      | raw value from either test or train original dataset|
|fBodyAcc-meanFreq-Z            | num      | raw value from either test or train original dataset|
|fBodyAccJerk-mean-X            | num      | raw value from either test or train original dataset|
|fBodyAccJerk-mean-Y            | num      | raw value from either test or train original dataset|
|fBodyAccJerk-mean-Z            | num      | raw value from either test or train original dataset|
|fBodyAccJerk-std-X             | num      | raw value from either test or train original dataset|
|fBodyAccJerk-std-Y             | num      | raw value from either test or train original dataset|
|fBodyAccJerk-std-Z             | num      | raw value from either test or train original dataset|
|fBodyAccJerk-meanFreq-X        | num      | raw value from either test or train original dataset|
|fBodyAccJerk-meanFreq-Y        | num      | raw value from either test or train original dataset|
|fBodyAccJerk-meanFreq-Z        | num      | raw value from either test or train original dataset|
|fBodyGyro-mean-X               | num      | raw value from either test or train original dataset|
|fBodyGyro-mean-Y               | num      | raw value from either test or train original dataset|
|fBodyGyro-mean-Z               | num      | raw value from either test or train original dataset|
|fBodyGyro-std-X                | num      | raw value from either test or train original dataset|
|fBodyGyro-std-Y                | num      | raw value from either test or train original dataset|
|fBodyGyro-std-Z                | num      | raw value from either test or train original dataset|
|fBodyGyro-meanFreq-X           | num      | raw value from either test or train original dataset|
|fBodyGyro-meanFreq-Y           | num      | raw value from either test or train original dataset|
|fBodyGyro-meanFreq-Z           | num      | raw value from either test or train original dataset|
|fBodyAccMag-mean               | num      | raw value from either test or train original dataset|
|fBodyAccMag-std                | num      | raw value from either test or train original dataset|
|fBodyAccMag-meanFreq           | num      | raw value from either test or train original dataset|
|fBodyBodyAccJerkMag-mean       | num      | raw value from either test or train original dataset|
|fBodyBodyAccJerkMag-std        | num      | raw value from either test or train original dataset|
|fBodyBodyAccJerkMag-meanFreq   | num      | raw value from either test or train original dataset|
|fBodyBodyGyroMag-mean          | num      | raw value from either test or train original dataset|
|fBodyBodyGyroMag-std           | num      | raw value from either test or train original dataset|
|fBodyBodyGyroMag-meanFreq      | num      | raw value from either test or train original dataset|
|fBodyBodyGyroJerkMag-mean      | num      | raw value from either test or train original dataset|
|fBodyBodyGyroJerkMag-std       | num      | raw value from either test or train original dataset|
|fBodyBodyGyroJerkMag-meanFreq  | num      | raw value from either test or train original dataset| 

**NOTE: The first row in the dataset contains the header names of the columns**

## getting_cleaning_data_averages.csv

This dataset contains the averages for all the mean and std values from the previous dataset, **grouped by activity and subject**.

These are the variables in the dataset:

|variable                      | unit   | description                                                  | 
|------------------------------|--------|--------------------------------------------------------------|
|activity                      | chr    | the activity {WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING}|
|subject                       | chr    | the id of the subject                                        | 
|tBodyAcc-mean-X               | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyAcc-mean-Y               | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyAcc-mean-Z               | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyAcc-std-X                | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyAcc-std-Y                | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyAcc-std-Z                | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tGravityAcc-mean-X            | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tGravityAcc-mean-Y            | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tGravityAcc-mean-Z            | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tGravityAcc-std-X             | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tGravityAcc-std-Y             | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tGravityAcc-std-Z             | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyAccJerk-mean-X           | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyAccJerk-mean-Y           | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyAccJerk-mean-Z           | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyAccJerk-std-X            | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyAccJerk-std-Y            | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyAccJerk-std-Z            | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyGyro-mean-X              | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyGyro-mean-Y              | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyGyro-mean-Z              | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyGyro-std-X               | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyGyro-std-Y               | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyGyro-std-Z               | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyGyroJerk-mean-X          | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyGyroJerk-mean-Y          | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyGyroJerk-mean-Z          | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyGyroJerk-std-X           | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyGyroJerk-std-Y           | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyGyroJerk-std-Z           | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyAccMag-mean              | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyAccMag-std               | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tGravityAccMag-mean           | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tGravityAccMag-std            | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyAccJerkMag-mean          | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyAccJerkMag-std           | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyGyroMag-mean             | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyGyroMag-std              | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyGyroJerkMag-mean         | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|tBodyGyroJerkMag-std          | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyAcc-mean-X               | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyAcc-mean-Y               | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyAcc-mean-Z               | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyAcc-std-X                | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyAcc-std-Y                | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyAcc-std-Z                | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyAcc-meanFreq-X           | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyAcc-meanFreq-Y           | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyAcc-meanFreq-Z           | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyAccJerk-mean-X           | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyAccJerk-mean-Y           | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyAccJerk-mean-Z           | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyAccJerk-std-X            | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyAccJerk-std-Y            | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyAccJerk-std-Z            | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyAccJerk-meanFreq-X       | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyAccJerk-meanFreq-Y       | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyAccJerk-meanFreq-Z       | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyGyro-mean-X              | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyGyro-mean-Y              | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyGyro-mean-Z              | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyGyro-std-X               | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyGyro-std-Y               | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyGyro-std-Z               | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyGyro-meanFreq-X          | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyGyro-meanFreq-Y          | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyGyro-meanFreq-Z          | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyAccMag-mean              | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyAccMag-std               | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyAccMag-meanFreq          | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyBodyAccJerkMag-mean      | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyBodyAccJerkMag-std       | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyBodyAccJerkMag-meanFreq  | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyBodyGyroMag-mean         | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyBodyGyroMag-std          | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyBodyGyroMag-meanFreq     | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyBodyGyroJerkMag-mean     | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyBodyGyroJerkMag-std      | num    | average value from dataset getting_cleaning_data_dataset.csv |   
|fBodyBodyGyroJerkMag-meanFreq | num    | average value from dataset getting_cleaning_data_datasenumsv |

**NOTE: The first row in the dataset contains the header names of the columns**



