#--------------------------------------------------------------------------------------------------------------
#Project: To demonstrate the ability to collect, work with, and clean a data set.
#Goal: To prepare tidy data that can be used for later analysis
#by DG
#--------------------------------------------------------------------------------------------------------------

#Initialization and data preparation:
#Requirement: Install "stringi" and "reshape2" packages
folder <- 'UCI HAR Dataset'
filename <- 'getdata_dataset.zip'
#download file
download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip',filename)
#unzip file
unzip(filename)

#1. Merges the training and the test sets to create one data set:
#Get training data --> from corresponding txt
trsubjects <- read.table(file.path(folder, 'train', 'subject_train.txt'))
tractivities <- read.table(file.path(folder, 'train', 'y_train.txt'))
trdata <- read.table(file.path(folder, 'train', 'X_train.txt'))
#Get test data --> from corresponding txt
testsubjects <- read.table(file.path(folder, 'test', 'subject_test.txt'))  
testactivities <- read.table(file.path(folder, 'test', 'y_test.txt'))
testdata <- read.table(file.path(folder, 'test', 'X_test.txt'))
#Merge training and test data:
dataSub <- rbind(trsubjects, testsubjects)
dataAct <- rbind(tractivities, testactivities)
dataDat <- rbind(trdata, testdata)
#Merging all data:
allData <- cbind(dataSub, dataAct, dataDat)

#2.	Extracts only the measurements on the mean and standard deviation for each measurement:
#Get list of features
features <- read.table(file.path(folder, 'features.txt'))
#Extract required features (mean and standard deviation)
required <- features[grep('-(mean|std)\\(\\)', features[, 2 ]), 2]
allData <- allData[,c(1, 2, required)]

#3.	Uses descriptive activity names to name the activities in the data set:
#Read names in activity labels
activities <- read.table(file.path(folder, 'activity_labels.txt'))
#Update activity labels 
allData[, 2] <- activities[allData[,2], 2]

#4.	Appropriately label the data set with descriptive variable names:
#Assigning appropiate labels 'subject' and 'activity'
colnames(allData) <- c('subject','activity', as.character(required))
allData[, 2] <- as.character(allData[, 2])

#5 From the data set in step 4, creates a second, independent tidy data set with the average of each 
#variable for each activity and each subject:
#---------------------------------------------------------------------------------------------------
#Melted data --> combination of subject and activities
melted <- melt(allData, id = c('subject', 'activity'))
#Cast --> getting the mean value
fmean <- dcast(melted, subject + activity ~ variable, mean)
#Print out data to a file
write.table(fmean, file=file.path("tidy.txt"), row.names = FALSE, quote = FALSE)
