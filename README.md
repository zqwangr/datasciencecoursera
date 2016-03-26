Getting and Cleaning Data Course Assignment
Companies like FitBit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked are collected from the accelerometers from the Samsung Galaxy S smartphone.
A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The data is available at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
The R script called run_analysis.R that does the following.
1.	Merges the training and the test sets to create one data set.
2.	Extracts only the measurements on the mean and standard deviation for each measurement.
3.	Uses descriptive activity names to name the activities in the data set
4.	Appropriately labels the data set with descriptive variable names.
5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Assumption that the zip file available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip is downloaded and extracted in working Directory.
Load Libraries Used
data.table and dplyr
Read Supporting Metadata
The supporting metadata in this data are the name of the features and the name of the activities. They are loaded into variables featureNames andactivityLabels.
Format training and test data sets
Both training and test data sets are split up into subject, activity and features. They are present in three different files.
Read training data
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
activityTrain <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)
featuresTrain <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
Read test data
subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
activityTest <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)
featuresTest <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
Merge the training and the test sets to create one data set
combine the respective data in training and test data sets corresponding to subject, activity and features. 
Naming the columns
The columns in the features data set can be named from the metadata.
Merge the data
The data in features, activity and subject are merged and the complete data is now stored in completeData.
Extracts only the measurements on the mean and standard deviation for each measurement
Extract the column indices that have either mean or std in them.
Add activity and subject columns to the list.
Create extractedData with the selected columns in requiredColumns. 

Uses descriptive activity names to name the activities in the data set
The activity field in extractedData is originally of numeric type, change its type to character so that it can accept activity names. The activity names are taken from metadata activityLabels.
Appropriately labels the data set with descriptive variable names
 The following acronyms are be replaced:
•	  Acc can be replaced with Accelerometer
•	Gyro can be replaced with Gyroscope
•	BodyBody can be replaced with Body
•	Mag can be replaced with Magnitude
•	Character f can be replaced with Frequency
•	Character t can be replaced with Time
From the data set in last step, creates a second, independent tidy data set with the average of each variable for each activity and each subject


