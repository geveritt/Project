Getting Data
============
Downloaded data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
unzipped into the file contained in "getdata-projectfiles-UCI HAR Dataset"

Running run_analysis.R
======================
* Requires libraries: dplyr, plyr
* Once you download the data and unzip it you need to setwd of R Studion to be located in the folder called:  
"UCI HAR Dataset"

Data Created
============
* run_analysis.R outputs 2 files:
feature_std_mean_sort_subject_activity.txt - the file containing the mean and std feature values sorted by subject and then activity.

* summarised_features_mean.txt - the file containing the summarised data of the mean for each of the feature value column (feature_std_mean_sort_subject_activity.txt) each set of mean values is grouped by subject and then activity.

Version of R and Platform used for  analysis
=====================================
platform       i386-w64-mingw32            
arch           i386                        
os             mingw32                     
system         i386, mingw32               
status                                     
major          3                           
minor          1.1                         
year           2014                        
month          07                          
day            10                          
svn rev        66115                       
language       R                           
version.string R version 3.1.1 (2014-07-10)
nickname       Sock it to Me               

Column Changes
==============
The subjects_train.txt and subjects_test.txt records correspond to the feature values in the x_train.txt and x_test.txt files on a by row basis.  To simplify analysis subject identifiers from the combined subjects data was added as a column of data to the combined x data. The subject column is the 1st column in feature_std_mean_sort_subject_activity.txt and summarised_features_mean.txt data files

The data in the y_train.txt and y_test.txt contained a code representing user activity while data was being collected.  The activity code was mapped to the activity name using the data in the activity_labels.text file.  Note if additional activities are added the activities vector in in run_analysis.R would need to be updated.  In the future the activities array should have been dynamically created using the activity_labels.txt file.  Replacing the code of activity with the name simplifies understanding and eliminates user looking up the code.  The activity column is the 2nd column in the feature_std_mean_sort_subject_activity.txt and summarised_features_mean.txt files.

Order of changes
================
Read Training Set
Read Test Set
Combine training set with test set
Change activity numbers to activity names
Add feature names as data set column names
Merge Subject, Activity Name, Feature Data
Filter columns and retain columns for subject, activity name, and feature data for mean and std
Simplify the column names
Sort by subject then activity
Write data file for features mean and std
Calculate group means of all mean and std column data
Write summarised data file 

Note about missing data:
------------------------
Currently run_analysis.R does not verify whether data is missing or not.  It should an approach of 
missing_train <-(is.na(y_train))
missing_train <-(is.na(x_train))
missing_train <-(is.na(subject_train))
and similarly for the test datasets.