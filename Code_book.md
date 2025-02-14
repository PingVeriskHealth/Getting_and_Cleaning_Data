# Code Book for final dataset
This code book is created to walk you through data frames tidy.data. 

### Subjects
Subjects are the 30 vulenteers that we obtained the data from, and each of them were assigned a numeric number

### Activities

Activities includes six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).  

The means were calculated with the mean() function after grouping the data by subject and activity.

### Variables
[1] "TimeBodyAccelerometer-mean()-X"                
 [2] "TimeBodyAccelerometer-mean()-Y"                
 [3] "TimeBodyAccelerometer-mean()-Z"                
 [4] "TimeBodyAccelerometer-std()-X"                 
 [5] "TimeBodyAccelerometer-std()-Y"                 
 [6] "TimeBodyAccelerometer-std()-Z"                 
 [7] "TimeGravityAccelerometer-mean()-X"             
 [8] "TimeGravityAccelerometer-mean()-Y"             
 [9] "TimeGravityAccelerometer-mean()-Z"             
[10] "TimeGravityAccelerometer-std()-X"              
[11] "TimeGravityAccelerometer-std()-Y"              
[12] "TimeGravityAccelerometer-std()-Z"              
[13] "TimeBodyAccelerometerJerk-mean()-X"            
[14] "TimeBodyAccelerometerJerk-mean()-Y"            
[15] "TimeBodyAccelerometerJerk-mean()-Z"            
[16] "TimeBodyAccelerometerJerk-std()-X"             
[17] "TimeBodyAccelerometerJerk-std()-Y"             
[18] "TimeBodyAccelerometerJerk-std()-Z"             
[19] "TimeBodyGyroscope-mean()-X"                    
[20] "TimeBodyGyroscope-mean()-Y"                    
[21] "TimeBodyGyroscope-mean()-Z"                    
[22] "TimeBodyGyroscope-std()-X"                     
[23] "TimeBodyGyroscope-std()-Y"                     
[24] "TimeBodyGyroscope-std()-Z"                     
[25] "TimeBodyGyroscopeJerk-mean()-X"                
[26] "TimeBodyGyroscopeJerk-mean()-Y"                
[27] "TimeBodyGyroscopeJerk-mean()-Z"                
[28] "TimeBodyGyroscopeJerk-std()-X"                 
[29] "TimeBodyGyroscopeJerk-std()-Y"                 
[30] "TimeBodyGyroscopeJerk-std()-Z"                 
[31] "TimeBodyAccelerometerMagnitude-mean()"         
[32] "TimeBodyAccelerometerMagnitude-std()"          
[33] "TimeGravityAccelerometerMagnitude-mean()"      
[34] "TimeGravityAccelerometerMagnitude-std()"       
[35] "TimeBodyAccelerometerJerkMagnitude-mean()"     
[36] "TimeBodyAccelerometerJerkMagnitude-std()"      
[37] "TimeBodyGyroscopeMagnitude-mean()"             
[38] "TimeBodyGyroscopeMagnitude-std()"              
[39] "TimeBodyGyroscopeJerkMagnitude-mean()"         
[40] "TimeBodyGyroscopeJerkMagnitude-std()"          
[41] "FrequencyBodyAccelerometer-mean()-X"           
[42] "FrequencyBodyAccelerometer-mean()-Y"           
[43] "FrequencyBodyAccelerometer-mean()-Z"           
[44] "FrequencyBodyAccelerometer-std()-X"            
[45] "FrequencyBodyAccelerometer-std()-Y"            
[46] "FrequencyBodyAccelerometer-std()-Z"            
[47] "FrequencyBodyAccelerometerJerk-mean()-X"       
[48] "FrequencyBodyAccelerometerJerk-mean()-Y"       
[49] "FrequencyBodyAccelerometerJerk-mean()-Z"       
[50] "FrequencyBodyAccelerometerJerk-std()-X"        
[51] "FrequencyBodyAccelerometerJerk-std()-Y"        
[52] "FrequencyBodyAccelerometerJerk-std()-Z"        
[53] "FrequencyBodyGyroscope-mean()-X"               
[54] "FrequencyBodyGyroscope-mean()-Y"               
[55] "FrequencyBodyGyroscope-mean()-Z"               
[56] "FrequencyBodyGyroscope-std()-X"                
[57] "FrequencyBodyGyroscope-std()-Y"                
[58] "FrequencyBodyGyroscope-std()-Z"                
[59] "FrequencyBodyAccelerometerMagnitude-mean()"    
[60] "FrequencyBodyAccelerometerMagnitude-std()"     
[61] "FrequencyBodyAccelerometerJerkMagnitude-mean()"
[62] "FrequencyBodyAccelerometerJerkMagnitude-std()" 
[63] "FrequencyBodyGyroscopeMagnitude-mean()"        
[64] "FrequencyBodyGyroscopeMagnitude-std()"         
[65] "FrequencyBodyGyroscopeJerkMagnitude-mean()"    
[66] "FrequencyBodyGyroscopeJerkMagnitude-std()"     

### Here is all the transforms I did to get to the clean dataset

* Extracts only the measurements on the mean and standard deviation for each measurement.
subFeaturesNames<-dataFeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", dataFeaturesNames$V2)]
* names(dataSubject)<-c("subject")  -- pulled all subject column from datasubject.txt file, and remane it "Subject"
* names(dataActivity)<- c("activity")  --pulled all activity description data from dataset Dataactivity.txt, and rename the column "activity"
* names(Data)<-gsub("^t", "Time", names(Data))  -- Rename any columns that start with "t" to Time
* names(Data)<-gsub("^f", "Frequency", names(Data))  -- Rename any columns that start with "f" to Frequency
* names(Data)<-gsub("Acc", "Accelerometer", names(Data))  -- Rename any columns that contains with "Acc" to "Accelerometer"
* names(Data)<-gsub("Gyro", "Gyroscope", names(Data))   -- Rename any columns that contains with "Gyro" to "Gyroscrope"
* names(Data)<-gsub("Mag", "Magnitude", names(Data))   --Rename any columns that contains "Mag" to "Magnitude"
* names(Data)<-gsub("BodyBody", "Body", names(Data))   -- Rename any columns that contains "Bodybody" to one single "Body"


