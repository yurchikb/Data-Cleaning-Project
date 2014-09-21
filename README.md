Data-Cleaning-Project
=====================

Project for Coursera Course: Getting and Cleaning Data

This depository contains the R-script stored as run_analysis.R file and the script output stored in tidy_file.txt.

RAW INPUT DATA
===========
One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The input data for this project represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

OUTPUT FILE
============

The output file contains data in the tidy format. Refer to https://github.com/jtleek/datasharing for more details of tidy data format. The output files contains 66 average measurements for each permutation of 30 people (subjects) performing 6 activities (walking, walking upstairs, walking downstairs, sitting, standing, laying). Hence the output file contains 180 columns (30*6) and 68 columns (2+66). First two columns contain every combination of activity and subject participated in the experiment (a completely crossed design). The rest of columns (columns 3-68) contain averages of the measurements for the various variables for the given activity&subject combination. Sixty six variables are selected from the 561 variables in the original variables in the INPUT DATA. Only variables measuring means and standard deviations were selected and their names were slightly changed as described in the code book (refer to the file CodeBook.md in this depository).

> dim(tidy_df)
[1] 180  68

> tidy_df[1:10,1:5]
*    Activity Subject Time-BodyAcc-mean-X Time-BodyAcc-mean-Y Time-BodyAcc-mean-Z
*    LAYING       1           0.2215982         -0.04051395          -0.1132036
*    LAYING       2           0.2813734         -0.01815874          -0.1072456
*    LAYING       3           0.2755169         -0.01895568          -0.1013005
*    LAYING       4           0.2635592         -0.01500318          -0.1106882
*    LAYING       5           0.2783343         -0.01830421          -0.1079376
*    LAYING       6           0.2486565         -0.01025292          -0.1331196
*    LAYING       7           0.2501767         -0.02044115          -0.1013610
*    LAYING       8           0.2612543         -0.02122817          -0.1022454
*    LAYING       9           0.2591955         -0.02052682          -0.1075497
*   LAYING      10           0.2802306         -0.02429448          -0.1171686



The output file is tidy because it satisfies the following tidy file criterias:

1. Each variable you measure should be in one column
  -There is a separate column for each of the 66 selected variables
2. Each different observation of that variable should be in a different row
  -The mean value of the variable for each selected variable for a given activity&subject combination stored in a different row

R-Script Processing Summary
============================
The following is the summary of the five processing steps. For more details refer to the script run_analysis.R.

Step 0. Downloads and unzips the raw input data file
  - Download the zip file with raw input data via the link  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
  - Unzips the file, read and process raw input data, and write results in the output file tidy_file.txt (part of this depository).
Step 1. Merges the training and the test sets to create one data set.
  - Read training measurements from ?????, test measurements from ???? and merge them together in ???? data frame.
Step 2. Extracts only the measurements on the mean and standard deviation for each measurement.
  - Extracts only columns in ????? that have names containing mean() and std() and put results into ??????
Step 3. Uses descriptive activity names to name the activities in the data set
  - Attaches activity number ??? and subject number ???? to ???? frame. Replaces zctivity numbers with activity names ?????
Step 4. Appropriately labels the data set with descriptive variable names.
  - Enhances variable names by removing parenthesis, replacing leading "f" with "Freq-" and leading "t" with "Time-".
Step 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  - Uses ???? to create narrow form 
  - Uses ???? to calculate means and tranform to tidy format
  - Writes results into tidy_df.txt
  

