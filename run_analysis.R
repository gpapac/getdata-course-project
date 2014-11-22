
## Script for "Getting and Cleaning Data Course" Project

# We load the activity labels and set the names of the 2 variables
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
names(activity_labels)<-c("activity_id", "activity_label")

# we load the names of the variables of the test and training data
var_names <- read.table("./UCI HAR Dataset/features.txt")
# remove the parentheses from the variable names
var_names$V2 <- gsub("\\(\\)", "", var_names$V2)

# We load the training data
train_data <- read.table("./UCI HAR Dataset/train/X_train.txt")

# We load the test data
test_data <- read.table("./UCI HAR Dataset/test/X_test.txt")

# We merge the 2 data sets
all_data<-rbind(train_data, test_data)
rm(train_data)
rm(test_data)

# We name the variables of the test and train data, using the variable names loaded before
names(all_data) <- var_names$V2

# We only keep the variables corresponding to the mean and standard deviation of the measurements
mean_std_data <- all_data[,grepl("-mean", names(all_data)) | grepl("-std", names(all_data))]
rm(all_data)

# We load the files containing the activity id and subject id for each observation of the training and test data respectively
train_activities <- read.table("./UCI HAR Dataset/train/y_train.txt")
train_subjects <- read.table("./UCI HAR Dataset/train/subject_train.txt")

test_activities <- read.table("./UCI HAR Dataset/test/y_test.txt")
test_subjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# We merge the 2 "activities" and the 2 "subjects" data sets
all_activities<-rbind(train_activities, test_activities)
all_subjects<-rbind(train_subjects, test_subjects)

# We combine the activities, subject and measurement data sets for both the 
act_subj_data<-cbind(all_activities, all_subjects, mean_std_data)

# We name the 2 first columns of the data frame
names(act_subj_data)[1]<-"activity_id"
names(act_subj_data)[2]<-"subject_id"

# We add the activity labels to the data to produce the final data set
final_data<-merge(activity_labels, act_subj_data)

# From the above data set, we create a new one containing the average of each variable for each activity and each subject.
mean_data <- aggregate(final_data[,4:82], by=list(final_data$activity_id, final_data$subject_id), FUN="mean")

# We remove activity_id from the final data (we only keep activity_label)
final_data <- subset( final_data, select = -activity_id )

# We name the 2 first columns of the above data frame
names(mean_data)[1]<-"activity_id"
names(mean_data)[2]<-"subject_id"

# We add the activity labels to the data to produce the final summary data set
final_mean_data<-merge(activity_labels, mean_data)
# We remove activity_id from the final data (we only keep activity_label)
final_mean_data <- subset( final_mean_data, select = -activity_id )

# We write the result to a file
write.table(final_mean_data, file="./final_mean_data.txt", row.name=FALSE) 
