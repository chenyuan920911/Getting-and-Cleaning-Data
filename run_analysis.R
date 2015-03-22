#1.Merges the training and the test sets to create one data set
setwd("./Documents/getting and cleaning data/project/UCI HAR Dataset")
training <- read.table("train/X_train.txt")
testing <- read.table("test/X_test.txt")
data <- rbind(training, testing)
name <- read.table("features.txt")
names(data) <- name[,2]
ytrain <- read.table("train/Y_train.txt")
ytest <- read.table("test/Y_test.txt")
y <- rbind(ytrain,ytest)
activity <- read.table("activity_labels.txt")
subject.train <- read.table("train/subject_train.txt")
subject.test <- read.table("test/subject_test.txt")
subject <- rbind(subject.train,subject.test)
names(subject) <- "subject"

#2.Extracts only the measurements on the mean and standard deviation 
#for each measurement. 
meanstd <- data[,grep("mean|std",names(data))]
df <- cbind(meanstd, y,subject)

#3.Uses descriptive activity names to name the activities in the data set

df <- mutate(df,activity=factor(V1,labels=activity[,2]))
df <- df[,-80]
#4.Appropriately labels the data set with descriptive variable names
names(df) <- gsub("Acc", "Accelerometer",names(df))
names(df) <- gsub("Gyro", "Gyroscope",names(df))
names(df) <- gsub("Mag", "Magnitute",names(df))
names(df) <- gsub("BodyBody", "Body",names(df))

#5.From the data set in step 4, creates a second, independent tidy 
#data set with the average of each variable for each activity and each subject.

library(dplyr)
df <- mutate(df, subject=factor(subject))
groupdata <- group_by(df, activity,subject)
mean <- summarise_each(groupdata, funs(mean))
#There is another way, but it generates two datatables:
library(data.table)
DT_sub <- data.table(df[,-81])
DT_act <- data.table(df[,-80])
mean_subject <- DT_sub[, lapply(.SD, mean), by = subject]
mean_activity <- DT_act[,lapply(.SD, mean), by = activity]

