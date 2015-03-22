---
title: "Getting and Cleaning Data Project"
author: "Yuan Chen"
date: "March 22, 2015"
output: pdf_document
---
This is a README document explaining  how all of the scripts work and how they are connected.  

-First, setting the working directory.
```{r}
setwd("/Users/yuanchen/Documents/getting and cleaning data/Project/UCI HAR Dataset")
```

- Merging the training and the test sets to create one data set
1.Merging the X set:
```{r}
training <- read.table("train/X_train.txt")
testing <- read.table("test/X_test.txt")
data <- rbind(training, testing)
```

And then set the column names of data:
```{r}
name <- read.table("features.txt")
names(data) <- name[,2]
```

2. Merging the y label:
```{r}
name <- read.table("features.txt")
names(data) <- name[,2]
ytrain <- read.table("train/Y_train.txt")
ytest <- read.table("test/Y_test.txt")
y <- rbind(ytrain,ytest)
```

3.Read the activities corresponding to the labels:
```{r}
activity <- read.table("activity_labels.txt")
```

4. Merging the subject:
```{r}
subject.train <- read.table("train/subject_train.txt")
subject.test <- read.table("test/subject_test.txt")
subject <- rbind(subject.train,subject.test)
names(subject) <- "subject"
```

-Extracting only the measurements on the mean and standard deviation for each measurement
Here I simply refered to the discussion board and got the help:
```{r}
meanstd <- data[,grep("mean|std",names(data))]
```

Then add the label and subject columns to the dataset:
```{r}
df <- cbind(meanstd, y,subject)
```

- Uses descriptive activity names to name the activities in the data set:
Here I think the problem is to ask me to replace numerical labels with descriptive labels

```{r}
df <- mutate(df,activity=factor(V1,labels=activity[,2]))
df <- df[,-80]
```

- Appropriately labels the data set with descriptive variable names
I simply replaced the abbreviations with the whole words since I think the features are already very easy to read.

```{r}
names(df) <- gsub("Acc", "Accelerometer",names(df))
names(df) <- gsub("Gyro", "Gyroscope",names(df))
names(df) <- gsub("Mag", "Magnitute",names(df))
names(df) <- gsub("BodyBody", "Body",names(df))
```

- 5.From the data set in step 4, creating a second, independent tidy data set with the average of each variable for each activity and each subject
First, I group the dataset:
```{r}
library(dplyr)
df <- mutate(df, subject=factor(subject))
groupdata <- group_by(df, activity,subject)
```
And getting the answer is just a simple step:
```{r}
mean <- summarise_each(groupdata, funs(mean))
```
