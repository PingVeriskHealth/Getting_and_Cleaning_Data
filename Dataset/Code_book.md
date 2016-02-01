---
title: "Code_book"
output: html_document
---


#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names.

names(Data)<-gsub("^t", "Time", names(Data))  # instead of t, we are now using Time
names(Data)<-gsub("^f", "Frequency", names(Data))  # instead of leading f, we are now using Frequency
names(Data)<-gsub("Acc", "Accelerometer", names(Data))  # instead of Acc, we are now using Accelerometer
names(Data)<-gsub("Gyro", "Gyroscope", names(Data))  # instead of Gyro, we are now using Gyroscope
names(Data)<-gsub("Mag", "Magnitude", names(Data))  # instead of Mag, we are now using Magnitude
names(Data)<-gsub("BodyBody", "Body", names(Data))  # we also simple the title BodyBody to Body


