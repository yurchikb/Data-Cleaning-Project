Data-Cleaning-Project
=====================

Project for Coursera Course: Getting and Cleaning Data

This file describes how the data for this project were collected and manipulated. Only changes to the data is described here.  A full description of the raw data is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones and in Readme file in the zip depository https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

STUDY DESIGN
============
The raw data and data descriptions for this project were automatically downloaded and unzipped by the script run_analysis.R from the link https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip into working directory referred to as './'.

The description of the raw data can be found in the unzipped files:

- './README.txt'

- './features_info.txt': Shows information about the variables used on the feature vector.

- './features.txt': List of all features.

- './activity_labels.txt': Links the class labels with their activity name.

The raw train and test results were read from two identically formatted files: './train/X_train.txt' and '/test/X_test.txt". Each file contains 561 variables for different aspects of acceleration and velocity measured during the experiment involving 30 subjects engaged in 6 activities. Variable names for columns for both train and test data files can be found in file './features.txt' with description of variables in './features_info.txt'. 

Activity number for each experiment (i.e., a line/row in X_train.txt and X_test.txt files) was obtained from './train/y_train.txt' and './test/y_test.txt' respectively. Data range is from 1 to 6. 
Subject number for each experiment was read from './train/subject_train.txt' and './test/subject-test.txt' respectively. Data range is from 1 to 30.


Code Book
============

For the description of the raw input data variables and their units refer to the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones and to the Readme file in the zip depository https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

There are 2 features and 66 variables (68 columns total) in the output tidy file tidy_file.txt. The names for features and variables are presented below

colnames(tidy_df)

 [1] "Activity"                      "Subject"                       "Time-BodyAcc-mean-X"          
 [4] "Time-BodyAcc-mean-Y"           "Time-BodyAcc-mean-Z"           "Time-BodyAcc-std-X"           
 [7] "Time-BodyAcc-std-Y"            "Time-BodyAcc-std-Z"            "Time-GravityAcc-mean-X"       
[10] "Time-GravityAcc-mean-Y"        "Time-GravityAcc-mean-Z"        "Time-GravityAcc-std-X"        
[13] "Time-GravityAcc-std-Y"         "Time-GravityAcc-std-Z"         "Time-BodyAccJerk-mean-X"      
[16] "Time-BodyAccJerk-mean-Y"       "Time-BodyAccJerk-mean-Z"       "Time-BodyAccJerk-std-X"       
[19] "Time-BodyAccJerk-std-Y"        "Time-BodyAccJerk-std-Z"        "Time-BodyGyro-mean-X"         
[22] "Time-BodyGyro-mean-Y"          "Time-BodyGyro-mean-Z"          "Time-BodyGyro-std-X"          
[25] "Time-BodyGyro-std-Y"           "Time-BodyGyro-std-Z"           "Time-BodyGyroJerk-mean-X"     
[28] "Time-BodyGyroJerk-mean-Y"      "Time-BodyGyroJerk-mean-Z"      "Time-BodyGyroJerk-std-X"      
[31] "Time-BodyGyroJerk-std-Y"       "Time-BodyGyroJerk-std-Z"       "Time-BodyAccMag-mean"         
[34] "Time-BodyAccMag-std"           "Time-GravityAccMag-mean"       "Time-GravityAccMag-std"       
[37] "Time-BodyAccJerkMag-mean"      "Time-BodyAccJerkMag-std"       "Time-BodyGyroMag-mean"        
[40] "Time-BodyGyroMag-std"          "Time-BodyGyroJerkMag-mean"     "Time-BodyGyroJerkMag-std"     
[43] "Freq-BodyAcc-mean-X"           "Freq-BodyAcc-mean-Y"           "Freq-BodyAcc-mean-Z"          
[46] "Freq-BodyAcc-std-X"            "Freq-BodyAcc-std-Y"            "Freq-BodyAcc-std-Z"           
[49] "Freq-BodyAccJerk-mean-X"       "Freq-BodyAccJerk-mean-Y"       "Freq-BodyAccJerk-mean-Z"      
[52] "Freq-BodyAccJerk-std-X"        "Freq-BodyAccJerk-std-Y"        "Freq-BodyAccJerk-std-Z"       
[55] "Freq-BodyGyro-mean-X"          "Freq-BodyGyro-mean-Y"          "Freq-BodyGyro-mean-Z"         
[58] "Freq-BodyGyro-std-X"           "Freq-BodyGyro-std-Y"           "Freq-BodyGyro-std-Z"          
[61] "Freq-BodyAccMag-mean"          "Freq-BodyAccMag-std"           "Freq-BodyBodyAccJerkMag-mean" 
[64] "Freq-BodyBodyAccJerkMag-std"   "Freq-BodyBodyGyroMag-mean"     "Freq-BodyBodyGyroMag-std"     
[67] "Freq-BodyBodyGyroJerkMag-mean" "Freq-BodyBodyGyroJerkMag-std" 

Activity feature represents activity that subject performed in a given experiment. Six possible values for this feature are "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING" and "LAYING".
Subject feature represents the subject engaged in a given experiment. Data range in from 1 to 30 (30 people participated in the study).

The 66 variables in the output file is a subset of the 561 variables in the input data. Only mean and standard deviation variables for each measurement were extracted. Extracted measurements were, then, averaged for each combination of activity and subject. All variable names in the output tidy file were modified to better reflect underlying measurements (the units were not changed and stayed the same as for respective input variables). The following name changes took place

- Parenthesis were removed
- Leading "f" was replaced with "Freq-"
- Leading "t" was replaced with "Time-"

For example, variable name "tBodyAcc-mean()-X" in input data was transformed to  variable name "Time-BodyAcc-mean-X" in output file.

The following is the list of 66 initial names of input variables followed by the list of the 66 modified names of output variables.


The list of variable names in raw input data are
> selected_feature_names

 [1] "tBodyAcc-mean()-X"           "tBodyAcc-mean()-Y"           "tBodyAcc-mean()-Z"          
 [4] "tBodyAcc-std()-X"            "tBodyAcc-std()-Y"            "tBodyAcc-std()-Z"           
 [7] "tGravityAcc-mean()-X"        "tGravityAcc-mean()-Y"        "tGravityAcc-mean()-Z"       
[10] "tGravityAcc-std()-X"         "tGravityAcc-std()-Y"         "tGravityAcc-std()-Z"        
[13] "tBodyAccJerk-mean()-X"       "tBodyAccJerk-mean()-Y"       "tBodyAccJerk-mean()-Z"      
[16] "tBodyAccJerk-std()-X"        "tBodyAccJerk-std()-Y"        "tBodyAccJerk-std()-Z"       
[19] "tBodyGyro-mean()-X"          "tBodyGyro-mean()-Y"          "tBodyGyro-mean()-Z"         
[22] "tBodyGyro-std()-X"           "tBodyGyro-std()-Y"           "tBodyGyro-std()-Z"          
[25] "tBodyGyroJerk-mean()-X"      "tBodyGyroJerk-mean()-Y"      "tBodyGyroJerk-mean()-Z"     
[28] "tBodyGyroJerk-std()-X"       "tBodyGyroJerk-std()-Y"       "tBodyGyroJerk-std()-Z"      
[31] "tBodyAccMag-mean()"          "tBodyAccMag-std()"           "tGravityAccMag-mean()"      
[34] "tGravityAccMag-std()"        "tBodyAccJerkMag-mean()"      "tBodyAccJerkMag-std()"      
[37] "tBodyGyroMag-mean()"         "tBodyGyroMag-std()"          "tBodyGyroJerkMag-mean()"    
[40] "tBodyGyroJerkMag-std()"      "fBodyAcc-mean()-X"           "fBodyAcc-mean()-Y"          
[43] "fBodyAcc-mean()-Z"           "fBodyAcc-std()-X"            "fBodyAcc-std()-Y"           
[46] "fBodyAcc-std()-Z"            "fBodyAccJerk-mean()-X"       "fBodyAccJerk-mean()-Y"      
[49] "fBodyAccJerk-mean()-Z"       "fBodyAccJerk-std()-X"        "fBodyAccJerk-std()-Y"       
[52] "fBodyAccJerk-std()-Z"        "fBodyGyro-mean()-X"          "fBodyGyro-mean()-Y"         
[55] "fBodyGyro-mean()-Z"          "fBodyGyro-std()-X"           "fBodyGyro-std()-Y"          
[58] "fBodyGyro-std()-Z"           "fBodyAccMag-mean()"          "fBodyAccMag-std()"          
[61] "fBodyBodyAccJerkMag-mean()"  "fBodyBodyAccJerkMag-std()"   "fBodyBodyGyroMag-mean()"    
[64] "fBodyBodyGyroMag-std()"      "fBodyBodyGyroJerkMag-mean()" "fBodyBodyGyroJerkMag-std()" 

The list of respective variable names in the output file tidy_file.txt are

> colnames(tidy_df)[-2:-1]

 [1] "Time-BodyAcc-mean-X"           "Time-BodyAcc-mean-Y"           "Time-BodyAcc-mean-Z"          
 [4] "Time-BodyAcc-std-X"            "Time-BodyAcc-std-Y"            "Time-BodyAcc-std-Z"           
 [7] "Time-GravityAcc-mean-X"        "Time-GravityAcc-mean-Y"        "Time-GravityAcc-mean-Z"       
[10] "Time-GravityAcc-std-X"         "Time-GravityAcc-std-Y"         "Time-GravityAcc-std-Z"        
[13] "Time-BodyAccJerk-mean-X"       "Time-BodyAccJerk-mean-Y"       "Time-BodyAccJerk-mean-Z"      
[16] "Time-BodyAccJerk-std-X"        "Time-BodyAccJerk-std-Y"        "Time-BodyAccJerk-std-Z"       
[19] "Time-BodyGyro-mean-X"          "Time-BodyGyro-mean-Y"          "Time-BodyGyro-mean-Z"         
[22] "Time-BodyGyro-std-X"           "Time-BodyGyro-std-Y"           "Time-BodyGyro-std-Z"          
[25] "Time-BodyGyroJerk-mean-X"      "Time-BodyGyroJerk-mean-Y"      "Time-BodyGyroJerk-mean-Z"     
[28] "Time-BodyGyroJerk-std-X"       "Time-BodyGyroJerk-std-Y"       "Time-BodyGyroJerk-std-Z"      
[31] "Time-BodyAccMag-mean"          "Time-BodyAccMag-std"           "Time-GravityAccMag-mean"      
[34] "Time-GravityAccMag-std"        "Time-BodyAccJerkMag-mean"      "Time-BodyAccJerkMag-std"      
[37] "Time-BodyGyroMag-mean"         "Time-BodyGyroMag-std"          "Time-BodyGyroJerkMag-mean"    
[40] "Time-BodyGyroJerkMag-std"      "Freq-BodyAcc-mean-X"           "Freq-BodyAcc-mean-Y"          
[43] "Freq-BodyAcc-mean-Z"           "Freq-BodyAcc-std-X"            "Freq-BodyAcc-std-Y"           
[46] "Freq-BodyAcc-std-Z"            "Freq-BodyAccJerk-mean-X"       "Freq-BodyAccJerk-mean-Y"      
[49] "Freq-BodyAccJerk-mean-Z"       "Freq-BodyAccJerk-std-X"        "Freq-BodyAccJerk-std-Y"       
[52] "Freq-BodyAccJerk-std-Z"        "Freq-BodyGyro-mean-X"          "Freq-BodyGyro-mean-Y"         
[55] "Freq-BodyGyro-mean-Z"          "Freq-BodyGyro-std-X"           "Freq-BodyGyro-std-Y"          
[58] "Freq-BodyGyro-std-Z"           "Freq-BodyAccMag-mean"          "Freq-BodyAccMag-std"          
[61] "Freq-BodyBodyAccJerkMag-mean"  "Freq-BodyBodyAccJerkMag-std"   "Freq-BodyBodyGyroMag-mean"    
[64] "Freq-BodyBodyGyroMag-std"      "Freq-BodyBodyGyroJerkMag-mean" "Freq-BodyBodyGyroJerkMag-std"
