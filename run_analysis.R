#Merges the training and the test sets to create one data set.
setwd("C:/Users/i55743/Desktop/Data_Science/Getting_and_Cleaning_Data/Final/Dataset")
path_file <- file.path("C:/Users/i55743/Desktop/Data_Science/Getting_and_Cleaning_Data/Final" , "Dataset")
files<-list.files(path_file, recursive=TRUE)


dataActivityTest  <- read.table(file.path(path_file, "test" , "Y_test.txt" ),header = FALSE)
dataActivityTrain <- read.table(file.path(path_file, "train", "Y_train.txt"),header = FALSE)

dataSubjectTrain <- read.table(file.path(path_file, "train", "subject_train.txt"),header = FALSE)
dataSubjectTest  <- read.table(file.path(path_file, "test" , "subject_test.txt"),header = FALSE)

dataFeaturesTest  <- read.table(file.path(path_file, "test" , "X_test.txt" ),header = FALSE)
dataFeaturesTrain <- read.table(file.path(path_file, "train", "X_train.txt"),header = FALSE)

dataSubject <- rbind(dataSubjectTrain, dataSubjectTest)
dataActivity<- rbind(dataActivityTrain, dataActivityTest)
dataFeatures<- rbind(dataFeaturesTrain, dataFeaturesTest)



names(dataSubject)<-c("subject")
names(dataActivity)<- c("activity")
dataFeaturesNames <- read.table(file.path(path_file, "features.txt"),head=FALSE)
names(dataFeatures)<- dataFeaturesNames$V2


Data <- cbind(dataFeatures, cbind(dataSubject, dataActivity))

# replace the activity numeric values with descriptive levels from the
# activity_labels.txt file
activities <- read.table(file.path(path_file,  "activity_labels.txt"),header = FALSE)
Data[,2] <- as.factor(Data[,2])
# A simple assignment works, as the levels function has the levels ordered
# in the same order as the activities table
levels(Data[,2]) <- activities[,2]
rm(activities)

#Extracts only the measurements on the mean and standard deviation for each measurement.

subFeaturesNames<-dataFeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", dataFeaturesNames$V2)]
selectedNames<-c(as.character(subFeaturesNames), "subject", "activity" )
Data<-subset(Data,select=selectedNames)

#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names.

names(Data)<-gsub("^t", "Time", names(Data))
names(Data)<-gsub("^f", "Frequency", names(Data))
names(Data)<-gsub("Acc", "Accelerometer", names(Data))
names(Data)<-gsub("Gyro", "Gyroscope", names(Data))
names(Data)<-gsub("Mag", "Magnitude", names(Data))
names(Data)<-gsub("BodyBody", "Body", names(Data))
names(Data)
#From the data set in step 4, creates a second, independent tidy data set with the average 
#of each variable for each activity and each subject.

library(dplyr)
run_analysis<- (Data%>%
                  group_by(subject,activity) %>%
                  summarise_each(funs( mean)))

write.table(run_analysis, file = "tidydata.txt",sep=" ",row.name=FALSE)
