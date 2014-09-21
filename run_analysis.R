##run_analysis
## Getting and Cleaning Data Class
#library(dplyr)
#library(plyr)

#setwd("D:/Coursera/Getting and Cleaning Data/project/UCI HAR Dataset")

# Read Training Set
subject_train <- read.table("./train/subject_train.txt")
y_train <- read.table("./train/y_train.txt", colClasses=c("numeric"))
x_train <- read.table("./train/X_train.txt", header=FALSE, colClasses=c(rep("numeric", 561)))

# Read Test Set
subject_test <- read.table("./test/subject_test.txt")
y_test <- read.table("./test/y_test.txt", colClasses=c("numeric"))
x_test <- read.table("./test/X_test.txt", header=FALSE, colClasses=c(rep("numeric", 561)))

#Combine training set with test set
subject_combined <- rbind(subject_train, subject_test)

y_combined <- rbind(y_train, y_test)
x_combined <- rbind(x_train, x_test)


# Change activity numbers to activity names
activities <- c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")
y_combined[,1] <- activities[y_combined[,1]]

# Add feature names as data set column names
features <- read.table("./features.txt")

feature_names <- features[,2]
colnames(x_combined) <- features[,2]


# Merge Subject + ActivityType + Calc features
subject_activity_combined <- cbind(subject_combined, y_combined)
colnames(subject_activity_combined) <- c("subject", "activity")

subject_activity_measure <- cbind(subject_activity_combined, x_combined)

# Select only columns with std, mean in the name
# Eliminate columns for meanFreq and angle function using means
# Doing this gives use 33 mean and 33 std values
feature_std_mean <- select(subject_activity_measure, 
                           subject, 
                           activity, 
                           contains("std"), 
                           contains("mean"), 
                           -contains("angle"), 
                           -contains("meanFreq"))

# Tidy up the column names
# Remove special characters
# Remove the parens from the variable names
names(feature_std_mean) <- gsub("\\(\\)", "", names(feature_std_mean))

# Remove dashes from variable names
names(feature_std_mean) <- gsub("\\-", "", names(feature_std_mean))

#Expand abbreviations to words
# Change prefix t to time
names(feature_std_mean) <- gsub("^t", "time", names(feature_std_mean))

# Change prefix f to frequency
names(feature_std_mean) <- gsub("^f", "freqency", names(feature_std_mean))

# Change Acc t to acceleration
names(feature_std_mean) <- gsub("Acc", "acceleration", names(feature_std_mean))

# Change Mag t to magnitude
names(feature_std_mean) <- gsub("Mag", "magnitude", names(feature_std_mean))

# Change Mag t to magnitude
names(feature_std_mean) <- gsub("Gyro", "gyroscope", names(feature_std_mean))

# Lower case entire variable name
names(feature_std_mean) <- tolower(names(feature_std_mean))

#print(head(feature_std_mean,1))



#print("--------------------------------------")
#print("Summary Section")

# Sort values by subject and then by activity
feature_std_mean_sort_subject_activity <- arrange(feature_std_mean, subject, activity)


write.table(feature_std_mean_sort_subject_activity, file="feature_std_mean_sort_subject_activity.txt", row.name=FALSE)

# THIS SEEMS TO WORK
summarised_features_mean <-ddply(feature_std_mean_sort_activity_subject, .(subject,activity), numcolwise(mean))

# Seems crazy but put mean on the end of each colname to designate values are all mean values
names(summarised_features_mean)[3:68] <- gsub("$", "mean", names(summarised_features_mean)[3:68])

# Write file in working directory for means of std and means of values sorted by subjects and activities
write.table(summarised_features_mean, file="summarised_features_mean.txt", row.name=FALSE)

