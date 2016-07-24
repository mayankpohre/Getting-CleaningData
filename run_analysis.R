## Load and reshape data for analysis; then print a calculated dataset

## Tidy Part a
  
# Get feature names and subset to only those features of mean or std measures
  feature.names <- read.table("UCI HAR Dataset/features.txt")  
  desired.features <- grep("std|mean", feature.names$V2)
  
## Tidy Part b
# Get the train and test feature sets and subset only the desired features
train.features <- read.table("UCI HAR Dataset/train/X_train.txt")
desired.train.features <- train.features[,desired.features]
test.features <- read.table("UCI HAR Dataset/test/X_test.txt")
desired.test.features <- test.features[,desired.features]
    
## Tidy Part c
# Combine the two datasets into 1

total.features <- rbind(desired.train.features, desired.test.features)
      
## Tidy Part d
# Attach column names to features

colnames(total.features) <- feature.names[desired.features, 2]
        
## Tidy Part e
# Read and combine the train and test activity codes

train.activities <- read.table("UCI HAR Dataset/train/y_train.txt")
test.activities <- read.table("UCI HAR Dataset/test/y_test.txt")
total.activities <- rbind(train.activities, test.activities)

## Tidy Part f
# Get activity labels and attach to activity codes

activity.labels <- read.table("UCI HAR Dataset/activity_labels.txt")
total.activities$activity <- factor(total.activities$V1, levels = activity.labels$V1, labels = activity.labels$V2)
            
## Tidy Part g
# Get and combine the train and test subject ids

train.subjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
test.subjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
total.subjects <- rbind(train.subjects, test.subjects)
              
## Tidy Part h
# Combine and name subjects and activity names
subjects.and.activities <- cbind(total.subjects, total.activities$activity)
colnames(subjects.and.activities) <- c("subject.id", "activity")

## Tidy Part i
# Combine with measures of interest for finished desired data frame

activity.frame <- cbind(subjects.and.activities, total.features)

# Compute New Result
# From the set produced for analysis, compute and report means of 
# all measures, grouped by subject_id and by activity.

 result.frame <- aggregate(activity.frame[,3:81], by = list(activity.frame$subject.id, activity.frame$activity), FUN = mean)
 colnames(result.frame)[1:2] <- c("subject.id", "activity")
 write.table(result.frame, file="mean_measures.txt", row.names = FALSE)