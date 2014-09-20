##### STEP 0: Reading and Unzipping files

# installing R.utils
#install.packages("R.utils")

# downloading and unzipping file with raw data
library(R.utils)
library(reshape2)
setwd("C:/Users/Yury/Desktop/Coursera Homework")
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url,"./fuci_har_dataset.zip")
unzip("./fuci_har_dataset.zip")

#reading train & test files with raw data
shr_dir<-"./UCI HAR Dataset/"
train_dir<-"./UCI HAR Dataset/train/"
test_dir<-"./UCI HAR Dataset/test/"
train_data<-read.table(paste(train_dir,"X_train.txt",sep=""))
test_data<-read.table(paste(test_dir,"X_test.txt",sep=""))

##### STEP 1: Merging the training and the test data sets to create one data set

#merging train and test data together
merged_data<-rbind(train_data,test_data)

##### STEP 2: Extract only the measurements on the mean and standard deviation for each measurement.

feature_names<-read.table(paste(shr_dir,"features.txt",sep=""))[,2]
selected_columns<-grep("std\\(|mean\\(",feature_names)
selected_data<-merged_data[,selected_columns]
selected_feature_names<-as.character(feature_names[selected_columns])

##### STEP 3: Uses descriptive activity names to name the activities in the data set

#add subject & activity names columns to the left

subject_col<-rbind(read.table(paste(train_dir,"subject_train.txt",sep="")),
                   read.table(paste(test_dir,"subject_test.txt",sep="")))
actv_col<-rbind(read.table(paste(train_dir,"y_train.txt",sep="")),
                read.table(paste(test_dir,"y_test.txt",sep="")))
selected_data<-cbind(actv_col,subject_col,selected_data)

colnames(selected_data)<-c("Activity","Subject",selected_feature_names)

actv_names_table<-read.table(paste(shr_dir,"activity_labels.txt",sep=""))

selected_data<-merge(actv_names_table,selected_data,by.x="V1",by.y="Activity")[,-1]

##### STEP 4: Appropriately Labels the data set with descriptive variable names
# Removing parenthesis, adding Time and Freq 

colnames(selected_data)<-sub("\\(\\)","",colnames(selected_data))
colnames(selected_data)<-sub("^f","Freq-",colnames(selected_data))
colnames(selected_data)<-sub("^t","Time-",colnames(selected_data))
colnames(selected_data)[1]<-"Activity"
 
##### STEP 5: From the data set in step 4, creates a second, independent tidy data set
##### with the average of each variable for each activity and each subject

melted_data<-melt(selected_data,id=c("Activity","Subject"))
tidy_df<-dcast(melted_data,Activity+Subject ~ variable,mean)
write.table(tidy_df,"./tidy_file.txt",row.names=F)

#END
