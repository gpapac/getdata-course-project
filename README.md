# Getting and Cleaning Data Course project
==========================================

Repository for submitting the project for the course: "Getting and Cleaning Data"

This repository contains the script **run_analysis.R** that loads and transforms the data supplied for this course.

In order for the script to work, a directory named: "UCI HAR Dataset" must exist in the same path as the script, containing all the data downloaded from the URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The script does the following:
1. Initially it loads the activity labels and the names of the variables of the test and training data sets
2. It merges the training and the test data sets to create one data set (using the rbind command).
3. It labels the data set with descriptive variable names (using the variables names loaded from the file: features.txt). 
4. From this data set it keeps only the measurements on the mean and standard deviation for each measurement (the valiables containing either "-mean" or "-std" in their names). 
5. It combines the measurements data set with the 2 additional data sets containing the relevant activity ids and subject ids (using the cbind command).
6. It adds the descriptive activity names to the data set
7. From the data set in the previous step, it creates a second independent tidy data set, with the average of each variable for each activity and each subject.

I have chosen the wide form of the data and not the long one.

