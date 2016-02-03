# Getting_and_Cleaning_Data
This file is created for Final Project by Ping Shao, to walk 


### First is getting data and cleaning data, and steps I took are as follows

#### Getting Data
* Abtained data from the following website
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Read data into R, merged the training and the test sets to create one data sets for subjects, activity and features.
* Using combine column function to combine all subjects, activity and feature to one table

#### Clean the Data set
* name the subject column into "Subject", and activity column to "Activity"
* Rename the dataset Features, with that labels stored in "features.txt"
* Uses descriptive activity names to name the activities in the data set
* Renamed the data set with descriptive variable names.
* rename the activities into the activity labels:  (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
* Extracts only the measurements on the mean and standard deviation for each measurement.
* More data label cleaning up, Appropriately labels the data set with descriptive variable names.

#### Generate output tidy dataset
* Created an independent tidy data set with the average of each variable for each activity and each subject.

#### Pushed all changed into my repo, and in this folder you should have the following files:

* Data folder, which contains all the data downloaded for the project
and tidy dataset
* run_analysis.R is the script I used to get the tidy data set
* code_book, contains all variables in the new tidy dataset
* readme.md which explains what I did in the project.  (this file)

