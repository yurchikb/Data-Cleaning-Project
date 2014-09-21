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

The raw train and test results were read from two identically formatted files: './train/X_train.txt' and '/test/X_test.txt". Each file contains 561 variables for different aspects of acceleration and velocity measured during the experiment involving 30 subjects and 6 activities. Variable names for both train and test data files can be found in file './features.txt' with description of variables in './features_info.txt'. 

Activity number for each experiment (i.e., a raw in X_train.txt or X_test.txt files) can be found in './train/y_train.txt' and './test/y_test.txt' respectively. Data range is from 1 to 6. 
Subject number for each experiment can be found in './train/subject_train.txt' and './test/subject-test.txt' respectively. Data range is from 1 to 30.


Code Book
============

For the description of the raw input data variables and their units refer to the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones and to the Readme file in the zip depository https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The names of the 66 input data variables containing "mean()" and "std()" were modified for the output file to describe the underlining data better (although units stayed the same). 
