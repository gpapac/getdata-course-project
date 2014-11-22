# Code Book for "Getting and Cleaning Data" course project Data Sets

The initial data for this data sets comes from the "Human Activity Recognition Using Smartphones Dataset (Version 1.0)" (activityrecognition@smartlab.ws, www.smartlab.ws)

These data represent data collected from the accelerometers from the Samsung Galaxy S smartphone
A full description is available at the following site: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

##Initial Data Set Information:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

##Description of the transformed datasets:
Each of the final_data and final_mean_data data frames have 81 variables.

The steps that were followed to create these data sets are the following:
1. The training and the test sets were merged to create one data set.
2. The data set was labeled with descriptive variable names. 
3. From this data set only the measurements on the mean and standard deviation for each measurement were kept. 
4. The measurements data set was combined with the 2 additional data sets containing the relevant activity ids and subject ids.
5. Descriptive activity names were used to name the activities in the data set
6. From the data set in the previous step, a second independent tidy data set was created, with the average of each variable for each activity and each subject.

The first 2 variables in both data sets are:
* activity_label: (factor) the label of the relevant activity. Values (and corresponding activity id): WALKING (1), WALKING_UPSTAIRS (2), WALKING_DOWNSTAIRS (3), SITTING (4), STANDING (5), LAYING (6)
* subject_id: (int) the id of the subject. Values: 1-30 corresponding to the id of each of the 30 volunteers that took part in the experiments.

The rest 79 of the variables are the mean and standard deviation of various measurements collected during the experiments for each activity and volunteer (only the mean and standard deviation of the measurements were required for this course project).
The **final_mean_data** contains the average of each variable for each activity and each subject.

These measurements come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

The list of these variables (as described above) are the following:
* tBodyAcc-mean-X
* tBodyAcc-mean-Y
* tBodyAcc-mean-Z
* tBodyAcc-std-X
* tBodyAcc-std-Y 
* tBodyAcc-std-Z
* tGravityAcc-mean-X 
* tGravityAcc-mean-Y
* tGravityAcc-mean-Z 
* tGravityAcc-std-X
* tGravityAcc-std-Y 
* tGravityAcc-std-Z
* tBodyAccJerk-mean-X 
* tBodyAccJerk-mean-Y
* tBodyAccJerk-mean-Z 
* tBodyAccJerk-std-X
* tBodyAccJerk-std-Y 
* tBodyAccJerk-std-Z
* tBodyGyro-mean-X 
* tBodyGyro-mean-Y
* tBodyGyro-mean-Z 
* tBodyGyro-std-X
* tBodyGyro-std-Y
* tBodyGyro-std-Z
* tBodyGyroJerk-mean-X
* tBodyGyroJerk-mean-Y
* tBodyGyroJerk-mean-Z
* tBodyGyroJerk-std-X
* tBodyGyroJerk-std-Y 
* tBodyGyroJerk-std-Z
* tBodyAccMag-mean 
* tBodyAccMag-std
* tGravityAccMag-mean 
* tGravityAccMag-std
* tBodyAccJerkMag-mean
* tBodyAccJerkMag-std
* tBodyGyroMag-mean 
* tBodyGyroMag-std
* tBodyGyroJerkMag-mean 
* tBodyGyroJerkMag-std
* fBodyAcc-mean-X
* fBodyAcc-mean-Y
* fBodyAcc-mean-Z
* fBodyAcc-std-X
* fBodyAcc-std-Y 
* fBodyAcc-std-Z
* fBodyAcc-meanFreq-X 
* fBodyAcc-meanFreq-Y
* fBodyAcc-meanFreq-Z 
* fBodyAccJerk-mean-X
* fBodyAccJerk-mean-Y 
* fBodyAccJerk-mean-Z
* fBodyAccJerk-std-X 
* fBodyAccJerk-std-Y
* fBodyAccJerk-std-Z 
* fBodyAccJerk-meanFreq-X
* fBodyAccJerk-meanFreq-Y 
* fBodyAccJerk-meanFreq-Z
* fBodyGyro-mean-X 
* fBodyGyro-mean-Y
* fBodyGyro-mean-Z 
* fBodyGyro-std-X
* fBodyGyro-std-Y
* fBodyGyro-std-Z
* fBodyGyro-meanFreq-X
* fBodyGyro-meanFreq-Y
* fBodyGyro-meanFreq-Z
* fBodyAccMag-mean
* fBodyAccMag-std
* fBodyAccMag-meanFreq
* fBodyBodyAccJerkMag-mean 
* fBodyBodyAccJerkMag-std
* fBodyBodyAccJerkMag-meanFreq 
* fBodyBodyGyroMag-mean
* fBodyBodyGyroMag-std
* fBodyBodyGyroMag-meanFreq
* fBodyBodyGyroJerkMag-mean 
* fBodyBodyGyroJerkMag-std
* fBodyBodyGyroJerkMag-meanFreq

