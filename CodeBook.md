This Code Book describes the variables, data and transformations performed to clean up the data

Identifiers:

- Subject - ID of the test subject
- Activity - Type of activity performed

Activity Labels:

- WALKING (1): subject walking during the test
- WALKING_UPSTAIRS (2): subject walking up a staircase during the test
- WALKING_DOWNSTAIRS (3): subject walking down a staircase during the test
- SITTING (4): subject sitting during the test
- STANDING (5): subject standing during the test
- LAYING (6): subject laying down during the test

Measurements (time domain, prefixed by t; and frequency domain, prefixed by f):

- Mean: Mean
- Std: Standard deviation
- Acc: Acceleration (mean and standard deviation) in x, y, and z direction
- GravityAcc: Gravity acceleration (mean and standard deviation) in x, y, and z direction
- Gyro: Angular velocity (mean and standard deviation) in x, y, and z direction
- Mag: Magnitude
- Freq: Frequency


    tBodyAccMeanX
    
    tBodyAccMeanY
    
    tBodyAccMeanZ
    
    tBodyAccStdX
    
    tBodyAccStdY
    
    tBodyAccStdZ
    
    tGravityAccMeanX
    
    tGravityAccMeanY
    
    tGravityAccMeanZ
    
    tGravityAccStdX
    
    tGravityAccStdY
    
    tGravityAccStdZ
    
    tBodyAccJerkMeanX
    
    tBodyAccJerkMeanY
    
    tBodyAccJerkMeanZ
    
    tBodyAccJerkStdX
    
    tBodyAccJerkStdY
    
    tBodyAccJerkStdZ
    
    tBodyGyroMeanX
    
    tBodyGyroMeanY
    
    tBodyGyroMeanZ
    
    tBodyGyroStdX
    
    tBodyGyroStdY
    
    tBodyGyroStdZ
    
    tBodyGyroJerkMeanX
    
    tBodyGyroJerkMeanY
    
    tBodyGyroJerkMeanZ
    
    tBodyGyroJerkStdX
    
    tBodyGyroJerkStdY
    
    tBodyGyroJerkStdZ
    
    tBodyAccMagMean
    
    tBodyAccMagStd
    
    tGravityAccMagMean
    
    tGravityAccMagStd
    
    tBodyAccJerkMagMean
    
    tBodyAccJerkMagStd
    
    tBodyGyroMagMean
    
    tBodyGyroMagStd
    
    tBodyGyroJerkMagMean
    
    tBodyGyroJerkMagStd
    
    fBodyAccMeanX
    
    fBodyAccMeanY
    
    fBodyAccMeanZ
    
    fBodyAccStdX
    
    fBodyAccStdY
    
    fBodyAccStdZ
    
    fBodyAccMeanFreqX
    
    fBodyAccMeanFreqY
    
    fBodyAccMeanFreqZ
    
    fBodyAccJerkMeanX
    
    fBodyAccJerkMeanY
    
    fBodyAccJerkMeanZ
    
    fBodyAccJerkStdX
    
    fBodyAccJerkStdY
    
    fBodyAccJerkStdZ
    
    fBodyAccJerkMeanFreqX
    
    fBodyAccJerkMeanFreqY
    
    fBodyAccJerkMeanFreqZ
    
    fBodyGyroMeanX
    
    fBodyGyroMeanY
    
    fBodyGyroMeanZ
    
    fBodyGyroStdX
    
    fBodyGyroStdY
    
    fBodyGyroStdZ
    
    fBodyGyroMeanFreqX
    
    fBodyGyroMeanFreqY
    
    fBodyGyroMeanFreqZ
    
    fBodyAccMagMean
    
    fBodyAccMagStd
    
    fBodyAccMagMeanFreq
    
    fBodyBodyAccJerkMagMean
    
    fBodyBodyAccJerkMagStd
    
    fBodyBodyAccJerkMagMeanFreq
    
    fBodyBodyGyroMagMean
    
    fBodyBodyGyroMagStd
    
    fBodyBodyGyroMagMeanFreq
    
    fBodyBodyGyroJerkMagMean
    
    fBodyBodyGyroJerkMagStd
    
    fBodyBodyGyroJerkMagMeanFreq
    
Transformations:
1. Training and test sets were merged to create one data set
2. Mean and standard deviation were extracted for each measurements
3. Identifiers were included (subject and activity)
4. Final data set was created with the mean of each variable for each subject / activity and exported to tidy.txt

