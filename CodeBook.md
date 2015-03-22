---
title: "CodeBook"
author: "Yuan Chen"
date: "March 22, 2015"
output: html_document
---

###The information of the variables

 [1] "tBodyAccelerometer-mean()-X"               
 [2] "tBodyAccelerometer-mean()-Y"               
 [3] "tBodyAccelerometer-mean()-Z"               
 [4] "tBodyAccelerometer-std()-X"                
 [5] "tBodyAccelerometer-std()-Y"                
 [6] "tBodyAccelerometer-std()-Z"                
 [7] "tGravityAccelerometer-mean()-X"            
 [8] "tGravityAccelerometer-mean()-Y"            
 [9] "tGravityAccelerometer-mean()-Z"            
[10] "tGravityAccelerometer-std()-X"             
[11] "tGravityAccelerometer-std()-Y"             
[12] "tGravityAccelerometer-std()-Z"             
[13] "tBodyAccelerometerJerk-mean()-X"           
[14] "tBodyAccelerometerJerk-mean()-Y"           
[15] "tBodyAccelerometerJerk-mean()-Z"           
[16] "tBodyAccelerometerJerk-std()-X"            
[17] "tBodyAccelerometerJerk-std()-Y"            
[18] "tBodyAccelerometerJerk-std()-Z"            
[19] "tBodyGyroscope-mean()-X"                   
[20] "tBodyGyroscope-mean()-Y"                   
[21] "tBodyGyroscope-mean()-Z"                   
[22] "tBodyGyroscope-std()-X"                    
[23] "tBodyGyroscope-std()-Y"                    
[24] "tBodyGyroscope-std()-Z"                    
[25] "tBodyGyroscopeJerk-mean()-X"               
[26] "tBodyGyroscopeJerk-mean()-Y"               
[27] "tBodyGyroscopeJerk-mean()-Z"               
[28] "tBodyGyroscopeJerk-std()-X"                
[29] "tBodyGyroscopeJerk-std()-Y"                
[30] "tBodyGyroscopeJerk-std()-Z"                
[31] "tBodyAccelerometerMagnitute-mean()"        
[32] "tBodyAccelerometerMagnitute-std()"         
[33] "tGravityAccelerometerMagnitute-mean()"     
[34] "tGravityAccelerometerMagnitute-std()"      
[35] "tBodyAccelerometerJerkMagnitute-mean()"    
[36] "tBodyAccelerometerJerkMagnitute-std()"     
[37] "tBodyGyroscopeMagnitute-mean()"            
[38] "tBodyGyroscopeMagnitute-std()"             
[39] "tBodyGyroscopeJerkMagnitute-mean()"        
[40] "tBodyGyroscopeJerkMagnitute-std()"         
[41] "fBodyAccelerometer-mean()-X"               
[42] "fBodyAccelerometer-mean()-Y"               
[43] "fBodyAccelerometer-mean()-Z"               
[44] "fBodyAccelerometer-std()-X"                
[45] "fBodyAccelerometer-std()-Y"                
[46] "fBodyAccelerometer-std()-Z"                
[47] "fBodyAccelerometer-meanFreq()-X"           
[48] "fBodyAccelerometer-meanFreq()-Y"           
[49] "fBodyAccelerometer-meanFreq()-Z"           
[50] "fBodyAccelerometerJerk-mean()-X"           
[51] "fBodyAccelerometerJerk-mean()-Y"           
[52] "fBodyAccelerometerJerk-mean()-Z"           
[53] "fBodyAccelerometerJerk-std()-X"            
[54] "fBodyAccelerometerJerk-std()-Y"            
[55] "fBodyAccelerometerJerk-std()-Z"            
[56] "fBodyAccelerometerJerk-meanFreq()-X"       
[57] "fBodyAccelerometerJerk-meanFreq()-Y"       
[58] "fBodyAccelerometerJerk-meanFreq()-Z"       
[59] "fBodyGyroscope-mean()-X"                   
[60] "fBodyGyroscope-mean()-Y"                   
[61] "fBodyGyroscope-mean()-Z"                   
[62] "fBodyGyroscope-std()-X"                    
[63] "fBodyGyroscope-std()-Y"                    
[64] "fBodyGyroscope-std()-Z"                    
[65] "fBodyGyroscope-meanFreq()-X"               
[66] "fBodyGyroscope-meanFreq()-Y"               
[67] "fBodyGyroscope-meanFreq()-Z"               
[68] "fBodyAccelerometerMagnitute-mean()"        
[69] "fBodyAccelerometerMagnitute-std()"         
[70] "fBodyAccelerometerMagnitute-meanFreq()"    
[71] "fBodyAccelerometerJerkMagnitute-mean()"    
[72] "fBodyAccelerometerJerkMagnitute-std()"     
[73] "fBodyAccelerometerJerkMagnitute-meanFreq()"
[74] "fBodyGyroscopeMagnitute-mean()"            
[75] "fBodyGyroscopeMagnitute-std()"             
[76] "fBodyGyroscopeMagnitute-meanFreq()"        
[77] "fBodyGyroscopeJerkMagnitute-mean()"        
[78] "fBodyGyroscopeJerkMagnitute-std()"         
[79] "fBodyGyroscopeJerkMagnitute-meanFreq()"    
[80] "subject"                                   
[81] "activity" 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAccelerometer-XYZ and tGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccelerometerJerk-XYZ and tBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccelerationMagnitude, tGravityAccelerometerMagnitude, tBodyAccelerometerJerkMagntude, tBodyGyroscopeMagnitude, tBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAccelerometer-XYZ, fBodyAccelerometerJerk-XYZ, fBodyGyroscope-XYZ, fBodyAccelerometerJerkMagnitude, fBodyGyroscopeMagnitude, fBodyGyroscopeJerkMagnitude. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

### Summary Choice:
In the raw data, there are a bunch of summaries:

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

From these, I only chose the mean() and std() to describe the data.

### Experimental study:
One can easily notice that the subject and the activity variables are factor variables. So we can apply aggregation functions to the data grouped by them. 

I created a new dataset containing the average of each variable for each activity and each subject.
