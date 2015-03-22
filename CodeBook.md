Getting and Cleaning Data - Course Project
Date: 03/22/2015

DATA

The data was retrieved from the following server on (3/21/2015):

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

A description of the data can be found at the following internet address:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


TRANSFORMATIONS

1) The data was downloaded from the aformentioned server to a local drive
2) The following data files were read into R: features, activity_labels, x_test, 
	y_test, subject_test, x_train, y_train, subject_train
3) New data frames were created that interpret the data linked activity_IDs into 
	activity_labels
4) Descriptive variable/column names were provided for all data frames including 
	the subject_IDs, activity_labels, activity_IDs, and measurement data
5) The test and train measurement data are merged with their respective subject_IDs, 
	activity_labels, and activity_IDs
6) The test and train data are merged into a new data frame called "total_data"
7) Each variable/column name in total_data is searched for partial matches 
	with the character strings "mean" or "std" and added to a list if not
8) Those variables/columns are removed from the data to produce a tidy data set
9) A mean of all remaining measurements is calculated for each combination of 
	test subject (subject_ID) and activity performed (activity_label)
10) This data is sorted and stored in a new data frame called "mean_data"
11) "mean_data" is exported as a txt file to a local repo


VARIABLES

subject_ID	2
	Test Subject ID number
1	.Test subject #1
2	.Test subject #2
3	.Test subject #3
4	.Test subject #4
5	.Test subject #5
6	.Test subject #6
7	.Test subject #7
8	.Test subject #8
9	.Test subject #9
10	.Test subject #10
11	.Test subject #11
12	.Test subject #12
13	.Test subject #13
14	.Test subject #14
15	.Test subject #15
16	.Test subject #16
17	.Test subject #17
18	.Test subject #18
19	.Test subject #19
20	.Test subject #20
21	.Test subject #21
22	.Test subject #22
23	.Test subject #23
24	.Test subject #24
25	.Test subject #25
26	.Test subject #26
27	.Test subject #27
28	.Test subject #28
29	.Test subject #29
30	.Test subject #30

activity_label	text
	Name of the activity being performed by the test subject during data collection
		LAYING				.Subject is laying horizontal to the ground
		SITTING				.Subject is sitting
		STANDING			.Subject is standing
		WALKING			.Subject is walking
		WALKING_DOWNSTAIRS	.Subject is walking down a set of stairs
		WALKING_UPSTAIRS		.Subject is walking up a set of stairs

tBodyAcc-mean()-X	9
	Mean time domain body acceleration signal in the X direction
	-1..1

tBodyAcc-mean()-Y	9
	Mean time domain body acceleration signal in the Y direction
	-1..1

tBodyAcc-mean()-Z	9
	Mean time domain body acceleration signal in the Z direction
	-1..1

tBodyAcc-std()-X	9
	Standard deviation of time domain body acceleration signal in the X direction
	-1..1

tBodyAcc-std()-Y	9
	Standard deviation of time domain body acceleration signal in the Y direction
	-1..1

tBodyAcc-std()-Z	9
	Standard deviation of time domain body acceleration signal in the Z direction
	-1..1

tGravityAcc-mean()-X	9
	Mean time domain gravity acceleration signal in the X direction
	-1..1

tGravityAcc-mean()-Y	9
	Mean time domain gravity acceleration signal in the Y direction
	-1..1

tGravityAcc-mean()-Z	9
	Mean time domain gravity acceleration signal in the Z direction
	-1..1

tGravityAcc-std()-X	9
	Standard deviation of time domain gravity acceleration signal in the X direction
	-1..1

tGravityAcc-std()-Y	9
	Standard deviation of time domain gravity acceleration signal in the Y direction
	-1..1

tGravityAcc-std()-Z	9
	Standard deviation of time domain gravity acceleration signal in the Z direction
	-1..1

tBodyAccJerk-mean()-X	9
	Mean time domain body jerk signal in the X direction
	-1..1

tBodyAccJerk-mean()-Y	9
	Mean time domain body jerk signal in the Y direction
	-1..1

tBodyAccJerk-mean()-Z	9
	Mean time domain body jerk signal in the Z direction
	-1..1

tBodyAccJerk-std()-X	9
	Standard deviation of time domain body jerk signal in the X direction
	-1..1

tBodyAccJerk-std()-Y	9
	Standard deviation of time domain body jerk signal in the Y direction
	-1..1

tBodyAccJerk-std()-Z	9
	Standard deviation of time domain body jerk signal in the Z direction
	-1..1

tBodyGyro-mean()-X	9
	Mean time domain body gyroscope signal in the X direction
	-1..1

tBodyGyro-mean()-Y	9
	Mean time domain body gyroscope signal in the Y direction
	-1..1

tBodyGyro-mean()-Z	9
	Mean time domain body gyroscope signal in the z direction
	-1..1

tBodyGyro-std()-X	9
	Standard deviation of time domain body gyroscope signal in the x direction
	-1..1

tBodyGyro-std()-Y	9
	Standard deviation of time domain body gyroscope signal in the y direction
	-1..1

tBodyGyro-std()-Z	9
	Standard deviation of time domain body gyroscope signal in the z direction
	-1..1

tBodyGyroJerk-mean()-X	9
	Mean time domain body gyroscope jerk in the x direction
	-1..1

tBodyGyroJerk-mean()-Y	9
	Mean time domain body gyroscope jerk in the y direction
	-1..1

tBodyGyroJerk-mean()-Z	9
	Mean time domain body gyroscope jerk in the z direction
	-1..1

tBodyGyroJerk-std()-X	9
	Standard deviation of time domain body gyroscope jerk in the x direction
	-1..1

tBodyGyroJerk-std()-Y	9
	Standard deviation of time domain body gyroscope jerk in the y direction
	-1..1

tBodyGyroJerk-std()-Z	9
	Standard deviation of time domain body gyroscope jerk in the z direction
	-1..1

tBodyAccMag-mean()	9
	Mean time domain body acceleration magnitude
	-1..1

tBodyAccMag-std()	9
	Standard deviation of time domain body acceleration magnitude
	-1..1

tGravityAccMag-mean()		9
	Mean time domain gravity acceleration magnitude
	-1..1

tGravityAccMag-std()	9
	Standard deviation of time domain gravity acceleration magnitude
	-1..1

tBodyAccJerkMag-mean()	9
	Mean time domain body acceleration jerk magnitude
	-1..1

tBodyAccJerkMag-std()	9
	Standard deviation of time domain body acceleration jerk magnitude
	-1..1

tBodyGyroMag-mean()	9
	Mean time domain body gyroscope magnitude
	-1..1

tBodyGyroMag-std()	9
	Standard deviation of time domain body gyroscope magnitude
	-1..1

tBodyGyroJerkMag-mean()	9
	Mean time domain body gyroscope jerk magnitude
	-1..1

tBodyGyroJerkMag-std()	9
	Standard deviation of time domain body gyroscope jerk magnitude
	-1..1

















fBodyAcc-mean()-X	9
	Mean frequency domain body acceleration signal in the X direction
	-1..1

fBodyAcc-mean()-Y	9
	Mean frequency domain body acceleration signal in the Y direction
	-1..1

fBodyAcc-mean()-Z	9
	Mean frequency domain body acceleration signal in the Z direction
	-1..1

fBodyAcc-std()-X	9
	Standard deviation of frequency domain body acceleration signal in the X direction
	-1..1

fBodyAcc-std()-Y	9
	Standard deviation of frequency domain body acceleration signal in the Y direction
	-1..1

fBodyAcc-std()-Z	9
	Standard deviation of frequency domain body acceleration signal in the Z direction
	-1..1

fBodyAcc-meanFreq()-X		9
	Frequency domain body acceleration mean frequency in the x direction
	-1..1

fBodyAcc-meanFreq()-Y		9
	Frequency domain body acceleration mean frequency in the y direction
	-1..1

fBodyAcc-meanFreq()-Z		9
	Frequency domain body acceleration mean frequency in the z direction
	-1..1

fBodyAccJerk-mean()-X		9
	Frequency domain body acceleration mean jerk in the x direction
	-1..1

fBodyAccJerk-mean()-Y		9
	Frequency domain body acceleration mean jerk in the y direction
	-1..1

fBodyAccJerk-mean()-Z		9
	Frequency domain body acceleration mean jerk in the z direction
	-1..1

fBodyAccJerk-std()-X		9
	Standard deviation of frequency domain body acceleration jerk in the x direction
	-1..1

fBodyAccJerk-std()-Y		9
	Standard deviation of frequency domain body acceleration jerk in the y direction
	-1..1

fBodyAccJerk-std()-Z		9
	Standard deviation of frequency domain body acceleration jerk in the z direction
	-1..1

fBodyAccJerk-meanFreq()-X	9
	Mean frequency of frequency domain body acceleration jerk in the x direction
	-1..1

fBodyAccJerk-meanFreq()-Y	9
	Mean frequency of frequency domain body acceleration jerk in the y direction
	-1..1

fBodyAccJerk-meanFreq()-Z	9
	Mean frequency of frequency domain body acceleration jerk in the z direction
	-1..1

fBodyGyro-mean()-X	9
	Mean frequency domain body gyroscope signal in the x direction
	-1..1

fBodyGyro-mean()-Y	9
	Mean frequency domain body gyroscope signal in the y direction
	-1..1

fBodyGyro-mean()-Z	9
	Mean frequency domain body gyroscope signal in the z direction
	-1..1

fBodyGyro-std()-X	9
	Standard deviation of frequency domain body gyroscope signal in the x direction
	-1..1

fBodyGyro-std()-Y	9
	Standard deviation of frequency domain body gyroscope signal in the y direction
	-1..1

fBodyGyro-std()-Z	9
	Standard deviation of frequency domain body gyroscope signal in the z direction
	-1..1

fBodyGyro-meanFreq()-X	9
	Mean frequency of frequency domain body gyroscope signal in the x direction
	-1..1

fBodyGyro-meanFreq()-Y	9
	Mean frequency of frequency domain body gyroscope signal in the y direction
	-1..1

fBodyGyro-meanFreq()-Z	9
	Mean frequency of frequency domain body gyroscope signal in the z direction
	-1..1

fBodyAccMag-mean()	9
	Mean frequency domain body acceleration magnitude
	-1..1

fBodyAccMag-std()	9
	Standard deviation of frequency domain body acceleration magnitude
	-1..1

fBodyAccMag-meanFreq()	9
	Mean frequency of frequency domain body acceleration magnitude
	-1..1

fBodyBodyAccJerkMag-mean()	9
	Mean frequency domain body acceleration jerk magnitude
	-1..1

fBodyBodyAccJerkMag-std()	9
	Standard deviation of frequency domain body acceleration jerk magnitude
	-1..1

fBodyBodyAccJerkMag-meanFreq()	9
	Mean frequency of frequency domain body acceleration jerk magnitude
	-1..1

fBodyBodyGyroMag-mean()	9
	Mean frequency domain body gyroscope signal magnitude
	-1..1

fBodyBodyGyroMag-std()	9
	Standard deviation of frequency domain body gyroscope signal magnitude
	-1..1

fBodyBodyGyroMag-meanFreq()	9
	Mean frequency of frequency domain body gyroscope signal magnitude
	-1..1

fBodyBodyGyroJerkMag-mean()		9
	Mean frequency domain body gyroscope signal jerk magnitude
	-1..1

fBodyBodyGyroJerkMag-std()	9
	Standard deviation of frequency domain body gyroscope signal jerk magnitude
	-1..1

fBodyBodyGyroJerkMag-meanFreq()	9
	Mean frequency of frequency domain body gyroscope signal jerk magnitude
	-1..1
