


Decription of Data
==================
The data is described in the feature_info.txt this describes values in the original datasets.  In our case the only variables of interest were values containing means and standard deviations (std).  I continued to use the abbreviation of std as it is well known

The data was contained in two separate directories.  
UCI HAR Dataset/test
UCI HAR Dataset/train 
The column variables in these data files were identical and the "test" files was appended to the train files.
* y_test.txt was appeneded to y_train.txt
* x_test.txt was appended to X_train.txt
* subject_test.txt was appended to subject_train.txt


Data Ancestry

From features_info.txt we selected the means and std.  I did not include the any of the meanFreq values as these did not have corresponding std values.

Also the angle() calculations used mean values but the angle calculations were not included in the new dataset.  The new dataset is called:  feature_std_mean_sort_subject_activity.txt

As the name implies the dataset includes values for the std and mean of feature sorted first by subject and then activity.  

The field names of the dataset were changed to eliminate abbreviations except the std was kept for standard deviation as this is a well accepted abbreviation.  The all special characters were removed from the names,  all names we changed to lower case.  Below is a table of the field names from the original definition and the new names that are used in  summarised_features_mean.txt and feature_std_mean_sort_subject_activity.txt.

|features_info.txt	| feature_std_mean_sort_subject_activity.txt |
| ----------------- | ------------------------------------------ |
| 1 tBodyAcc-mean()-X	|	timebodyaccelerationmeanx |
| 2 tBodyAcc-mean()-Y	|	timebodyaccelerationmeany |
| 3 tBodyAcc-mean()-Z	|	timebodyaccelerationmeanz |
| 4 tBodyAcc-std()-X	|		timebodyaccelerationstdx |
| 5 tBodyAcc-std()-Y	|		timebodyaccelerationstdy |
| 6 tBodyAcc-std()-Z	|		timebodyaccelerationstdz |
| 41 tGravityAcc-mean()-X	|	timegravityaccelerationmeanx |
| 42 tGravityAcc-mean()-Y	|	timegravityaccelerationmeany |
| 43 tGravityAcc-mean()-Z	|	timegravityaccelerationmeanz |
| 44 tGravityAcc-std()-X	|	timegravityaccelerationstdx |
| 45 tGravityAcc-std()-Y	|	timegravityaccelerationstdy |
| 46 tGravityAcc-std()-Z	|	timegravityaccelerationstdz |
| 81 tBodyAccJerk-mean()-X	|	timebodyaccelerationjerkmeanx |
| 82 tBodyAccJerk-mean()-Y	|	timebodyaccelerationjerkmeany |
| 83 tBodyAccJerk-mean()-Z	|	timebodyaccelerationjerkmeanz |
| 84 tBodyAccJerk-std()-X	| 	timebodyaccelerationjerkstdx |
| 85 tBodyAccJerk-std()-Y	|	timebodyaccelerationjerkstdy |
| 86 tBodyAccJerk-std()-Z	|	timebodyaccelerationjerkstdz |
| 121 tBodyGyro-mean()-X	|	timebodygyroscopemeanx |
| 122 tBodyGyro-mean()-Y	|	timebodygyroscopemeany |
| 123 tBodyGyro-mean()-Z	|	timebodygyroscopemeanz |
| 124 tBodyGyro-std()-X	|	timebodygyroscopestdx |
| 125 tBodyGyro-std()-Y	|	timebodygyroscopestdy |
| 126 tBodyGyro-std()-Z	|	timebodygyroscopestdz |
| 161 tBodyGyroJerk-mean()-X	|	timebodygyroscopejerkmeanx |
| 162 tBodyGyroJerk-mean()-Y	|	timebodygyroscopejerkmeany |
| 163 tBodyGyroJerk-mean()-Z	|	timebodygyroscopejerkmeanz |
|164 tBodyGyroJerk-std()-X	|	timebodygyroscopejerkstdx |
| 165 tBodyGyroJerk-std()-Y	|	timebodygyroscopejerkstdy |
| 166 tBodyGyroJerk-std()-Z	|	timebodygyroscopejerkstdz |
| 201 tBodyAccMag-mean()	|	timebodyaccelerationmagnitudemean |
| 202 tBodyAccMag-std()	| timebodyaccelerationmagnitudestd |
| 214 tGravityAccMag-mean()	|	timegravityaccelerationmagnitudemean |
| 215 tGravityAccMag-std()	|	timegravityaccelerationmagnitudestd |
| 227 tBodyAccJerkMag-mean()	|	timebodyaccelerationjerkmagnitudemean |
| 228 tBodyAccJerkMag-std()	|	timebodyaccelerationjerkmagnitudestd |
| 240 tBodyGyroMag-mean()	|	timebodygyroscopemagnitudemean |
| 241 tBodyGyroMag-std()	|	timebodygyroscopemagnitudestd |
| 253 tBodyGyroJerkMag-mean()	|	timebodygyroscopejerkmagnitudemean |
| 254 tBodyGyroJerkMag-std()	|	timebodygyroscopejerkmagnitudestd |
| 266 fBodyAcc-mean()-X	|	freqencybodyaccelerationmeanx |
| 267 fBodyAcc-mean()-Y	|	freqencybodyaccelerationmeany |
| 268 fBodyAcc-mean()-Z	|	freqencybodyaccelerationmeanz |
| 269 fBodyAcc-std()-X	|	freqencybodyaccelerationstdx |
| 270 fBodyAcc-std()-Y	|	freqencybodyaccelerationstdy |
| 271 fBodyAcc-std()-Z	|	freqencybodyaccelerationstdz |
| 345 fBodyAccJerk-mean()-X	|	freqencybodyaccelerationjerkmeanx |
| 346 fBodyAccJerk-mean()-Y	|	freqencybodyaccelerationjerkmeany |
| 347 fBodyAccJerk-mean()-Z	|	freqencybodyaccelerationjerkmeanz |
| 348 fBodyAccJerk-std()-X	|	freqencybodyaccelerationjerkstdx |
| 349 fBodyAccJerk-std()-Y	|	freqencybodyaccelerationjerkstdy  |
| 350 fBodyAccJerk-std()-Z	|	freqencybodyaccelerationjerkstdz |
| 424 fBodyGyro-mean()-X	|	freqencybodygyroscopemeanx |
| 425 fBodyGyro-mean()-Y	|	freqencybodygyroscopemeany |
| 426 fBodyGyro-mean()-Z	|	freqencybodygyroscopemeanz |
| 427 fBodyGyro-std()-X	|	freqencybodygyroscopestdx |
| 428 fBodyGyro-std()-Y	|	freqencybodygyroscopestdy |
| 429 fBodyGyro-std()-Z	|	freqencybodygyroscopestdz |
| 503 fBodyAccMag-mean()	|	freqencybodyaccelerationmagnitudemean |
| 504 fBodyAccMag-std()	|	freqencybodyaccelerationmagnitudestd |
| 516 fBodyBodyAccJerkMag-mean()	|	freqencybodybodyaccelerationjerkmagnitudemean |
| 517 fBodyBodyAccJerkMag-std()	|	freqencybodybodyaccelerationjerkmagnitudestd |
| 529 fBodyBodyGyroMag-mean()	|	freqencybodybodygyroscopemagnitudemean |
| 530 fBodyBodyGyroMag-std()	|	freqencybodybodygyroscopemagnitudestd |
| 542 fBodyBodyGyroJerkMag-mean()	|	freqencybodybodygyroscopejerkmagnitudemean |
| 543 fBodyBodyGyroJerkMag-std()	|	freqencybodybodygyroscopejerkmagnitudestd |

Information from the features_info.txt 
======================================
Feature Section repeated here for convenience
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

* Other values from X_train.txt and X_test.txt feature values are not included in the feature_std_mean_sort_activity_subject.txt or the summarised_features_mean.txt files



Data Order
==========
The data in the feature_std_mean_sort_activity_subject.txt is ordered by subject and then by activity.

Activity Type
=============
The type of user activity that occured while the measurement was being taken.
The valid activity names are:
* 1 WALKING
* 2 WALKING_UPSTAIRS
* 3 WALKING_DOWNSTAIRS
* 4 SITTING
* 5 STANDING
* 6 LAYING
Note: the original activity ids precede the activity name above.

Column Variable Names
=====================
When you look at the variable names you will notice that many times the name varies only in the last letters of x,y,z.  These 3 values correspond to x, y, z directions read from the accelerometer or gyroscope.  These values should be thought of as a group.

- The frequency prefix (f in original data) refers to measure in the frequency domain.
- The time prefix (t in orginal data) refers to times a measure was taken.  These measures were captured at a constant rate of 50 Hz (50 measures per second)