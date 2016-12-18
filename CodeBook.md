---
title: Getting and Cleaning Data Course Project Code Book
author: Steve Ruttenberg
date: 12/17/2016
output:
  html_document:
    keep_md: yes
---

## Project Description
The purpose of this project is to demonstrate ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

The data used in the project represent data collected from the accelerometers from the Samsung Galaxy S smartphone.

##Study design and data processing

###Collection of the raw data
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

###Notes on the original (raw) data 
Original study and data:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

##Creating the tidy datafile

###Guide to create the tidy data file
1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement.
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names.
5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

###Cleaning of the data
Short, high-level description of what the cleaning script does. [link to the readme document that describes the code in greater detail]()
1. Download the data
2. Merge 'Train' and 'Test' sets together with 'Activity' and 'Subject' sets.
3. Add column/variable names to merged data set from 'Feature Info' set
4. Isolate and extract columns containing means or standard deviations
5. Create lookup table to add activity code descriptions to data set
6. Reorder columns to bring 'Subject' and 'Activity' columns to front of order
7. Rename variables to be more intuitive
8. Create a second, independent tidy data set with the average of each variable for each activity and each subject
9. Rename columns/variables to note that they are average values

##Description of the variables in the gettingandcleaningdatacourseproject.txt file
General description of the file:
 - Dimensions of the dataset: 180 x 82
 - File size: 269924Bytes
 - Summary of the data: Data includes average values of each variable for each activity and each subject from the aggregated and merged original data
 
 ##Variables present in the dataset
 [1] "subject" - Number assigned to test subject
 levels: 1:30
 [2] "activity" - Description of activity being performed during time interval
 levels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING                                                  
 [3] "activitynum" - Coding of activity being performed during time interval
 levels: 1:6
 [4] "AveragetimeBodyAccelerationmeanXaxis" - Average of the mean of body linear acceleration along the X-axis derived in time
 [5] "AveragetimeBodyAccelerationmeanYaxis" - Average of the mean of body linear acceleration along the Y-axis derived in time
 [6] "AveragetimeBodyAccelerationmeanZaxis" - Average of the mean of body linear acceleration along the Z-axis derived in time
 [7] "AveragetimeGravityAccelerationmeanXaxis" - Average of the mean of acceleration due to gravity along the X-axis derived in time
 [8] "AveragetimeGravityAccelerationmeanYaxis" - Average of the mean of acceleration due to gravity along the Y-axis derived in time
 [9] "AveragetimeGravityAccelerationmeanZaxis" - Average of the mean of acceleration due to gravity along the Z-axis derived in time
[10] "AveragetimeBodyAccelerationJerkmeanXaxis" - Average of the mean of Jerk signals along the X-axis derived in time                   
[11] "AveragetimeBodyAccelerationJerkmeanYaxis" - Average of the mean of Jerk signals along the Y-axis derived in time    
[12] "AveragetimeBodyAccelerationJerkmeanZaxis" - Average of the mean of Jerk signals along the Z-axis derived in time    
[13] "AveragetimeBodyGyromeanXaxis" - Average of the mean of angular velocity along the X-axis derived in time                
[14] "AveragetimeBodyGyromeanYaxis" - Average of the mean of angular velocity along the Y-axis derived in time 
[15] "AveragetimeBodyGyromeanZaxis" - Average of the mean of angular velocity along the Z-axis derived in time 
[16] "AveragetimeBodyGyroJerkmeanXaxis" - Average of the mean of Jerk signals along the X-axis derived in time                           
[17] "AveragetimeBodyGyroJerkmeanYaxis" - Average of the mean of Jerk signals along the Y-axis derived in time                           
[18] "AveragetimeBodyGyroJerkmeanZaxis" - Average of the mean of Jerk signals along the Z-axis derived in time                           
[19] "AveragetimeBodyAccelerationMagnetudemean" - Average of the mean of body acceleration magnetude derived in time         
[20] "AveragetimeGravityAccelerationMagnetudemean" - Average of the mean of acceleration do to gravity magnetude derived in time
[21] "AveragetimeBodyAccelerationJerkMagnetudemean" - Average of the mean of body Jerk acceleration magnetude derived in time
[22] "AveragetimeBodyGyroMagnetudemean"  - Average of the mean of angular velocity magnetude derived in time
[23] "AveragetimeBodyGyroJerkMagnetudemean" - Average of the mean of body Jerk magnetude derived in time
[24] "AverageFFTBodyAccelerationmeanXaxis" - Average of the mean of body linear acceleration along the X-axis Fast Fourier Transformed
[25] "AverageFFTBodyAccelerationmeanYaxis" - Average of the mean of body linear acceleration along the Y-axis Fast Fourier Transformed
[26] "AverageFFTBodyAccelerationmeanZaxis" - Average of the mean of body linear acceleration along the Z-axis Fast Fourier Transformed
[27] "AverageFFTBodyAccelerationmeanFrequencyXaxis" - Average of the mean frequency of body linear acceleration along the X-axis Fast Fourier Transformed
[28] "AverageFFTBodyAccelerationmeanFrequencyYaxis" - Average of the mean frequency of body linear acceleration along the Y-axis Fast Fourier Transformed
[29] "AverageFFTBodyAccelerationmeanFrequencyZaxis" - Average of the mean frequency of body linear acceleration along the Z-axis Fast Fourier Transformed
[30] "AverageFFTBodyAccelerationJerkmeanXaxis" - Average of the mean of Jerk signals along the X-axis Fast Fourier Transformed
[31] "AverageFFTBodyAccelerationJerkmeanYaxis" - Average of the mean of Jerk signals along the Y-axis Fast Fourier Transformed
[32] "AverageFFTBodyAccelerationJerkmeanZaxis" - Average of the mean of Jerk signals along the Z-axis Fast Fourier Transformed
[33] "AverageFFTBodyAccelerationJerkmeanFrequencyXaxis" - Average of the mean of Jerk signal frequency along the X-axis Fast Fourier Transformed
[34] "AverageFFTBodyAccelerationJerkmeanFrequencyYaxis" - Average of the mean of Jerk signal frequency along the Y-axis Fast Fourier Transformed
[35] "AverageFFTBodyAccelerationJerkmeanFrequencyZaxis" - Average of the mean of Jerk signal frequency along the Z-axis Fast Fourier Transformed
[36] "AverageFFTBodyGyromeanXaxis" - Average of the mean of angular velocity along the X-axis Fast Fourier Transformed 
[37] "AverageFFTBodyGyromeanYaxis" - Average of the mean of angular velocity along the Y-axis Fast Fourier Transformed 
[38] "AverageFFTBodyGyromeanZaxis" - Average of the mean of angular velocity along the Z-axis Fast Fourier Transformed 
[39] "AverageFFTBodyGyromeanFreqXaxis" - Average of the mean of angular velocity frequency along the X-axis Fast Fourier Transformed 
[40] "AverageFFTBodyGyromeanFreqYaxis" - Average of the mean of angular velocity frequency along the X-axis Fast Fourier Transformed 
[41] "AverageFFTBodyGyromeanFreqZaxis" - Average of the mean of angular velocity frequency along the X-axis Fast Fourier Transformed 
[42] "AverageFFTBodyAccelerationMagnetudemean" - Average of the mean of body acceleration magnetude Fast Fourier Transformed 
[43] "AverageFFTBodyAccelerationMagnetudemeanFreq" - Average of the mean of body acceleration frequency magnetude Fast Fourier Transformed 
[44] "AverageFFTBodyBodyAccelerationJerkMagnetudemean" - Average of the mean of body Jerk magnetude Fast Fourier Transformed 
[45] "AverageFFTBodyBodyAccelerationJerkMagnetudemeanFreq" - Average of the mean of body Jerk frequency magnetude Fast Fourier Transformed 
[46] "AverageFFTBodyBodyGyroMagnetudemean" - Average of the mean of angular velocity magnetude Fast Fourier Transformed
[47] "AverageFFTBodyBodyGyroMagnetudemeanFreq" - Average of the mean of angular velocity magnetude frequency Fast Fourier Transformed
[48] "AverageFFTBodyBodyGyroJerkMagnetudemean" - Average of the mean of body Jerk magnetude Fast Fourier Transformed
[49] "AverageFFTBodyBodyGyroJerkMagnetudemeanFreq" - Average of the mean frequency of body Jerk magnetude Fast Fourier Transformed
[50] "AveragetimeBodyAccelerationStandardDeviationXaxis" - Average of the standard deviation of body linear acceleration along the X-axis derived in time
[51] "AveragetimeBodyAccelerationStandardDeviationYaxis" - Average of the standard deviation of body linear acceleration along the Y-axis derived in time
[52] "AveragetimeBodyAccelerationStandardDeviationZaxis" - Average of the standard deviation of body linear acceleration along the Z-axis derived in time
[53] "AveragetimeGravityAccelerationStandardDeviationXaxis" - Average of the standard deviation of acceleration due to gravity along the X-axis derived in time
[54] "AveragetimeGravityAccelerationStandardDeviationYaxis" - Average of the standard deviation of acceleration due to gravity along the Y-axis derived in time
[55] "AveragetimeGravityAccelerationStandardDeviationZaxis" - Average of the standard deviation of acceleration due to gravity along the Z-axis derived in time
[56] "AveragetimeBodyAccelerationJerkStandardDeviationXaxis" - Average of the standard deviation of Jerk signals along the X-axis derived in time  
[57] "AveragetimeBodyAccelerationJerkStandardDeviationYaxis" - Average of the standard deviation of Jerk signals along the Y-axis derived in time  
[58] "AveragetimeBodyAccelerationJerkStandardDeviationZaxis" - Average of the standard deviation of Jerk signals along the Z-axis derived in time  
[59] "AveragetimeBodyGyroStandardDeviationXaxis" - Average of the standard deviation of angular velocity along the X-axis derived in time  
[60] "AveragetimeBodyGyroStandardDeviationYaxis" - Average of the standard deviation of angular velocity along the Y-axis derived in time  
[61] "AveragetimeBodyGyroStandardDeviationZaxis" - Average of the standard deviation of angular velocity along the Z-axis derived in time  
[62] "AveragetimeBodyGyroJerkStandardDeviationXaxis" - Average of the standard deviation of Jerk signals along the X-axis derived in time 
[63] "AveragetimeBodyGyroJerkStandardDeviationYaxis" - Average of the standard deviation of Jerk signals along the Y-axis derived in time 
[64] "AveragetimeBodyGyroJerkStandardDeviationZaxis" - Average of the standard deviation of Jerk signals along the Z-axis derived in time 
[65] "AveragetimeBodyAccelerationMagnetudeStandardDeviation" - Average of the standard deviation of body acceleration magnetude derived in time  
[66] "AveragetimeGravityAccelerationMagnetudeStandardDeviation" - Average of the standard deviation of acceleration due to gravity magnetude derived in time  
[67] "AveragetimeBodyAccelerationJerkMagnetudeStandardDeviation" - Average of the standard deviation of body acceleration Jerk signal magnetude derived in time  
[68] "AveragetimeBodyGyroMagnetudeStandardDeviation" - Average of the standard deviation of angular velocity magnetude derived in time
[69] "AveragetimeBodyGyroJerkMagnetudeStandardDeviation" - Average of the standard deviation of angular velocity Jerk magnetude derived in time
[70] "AverageFFTBodyAccelerationStandardDeviationXaxis" - Average of the standard deviation of body linear acceleration along the X-axis Fast Fourier Transformed
[71] "AverageFFTBodyAccelerationStandardDeviationYaxis" - Average of the standard deviation of body linear acceleration along the Y-axis Fast Fourier Transformed
[72] "AverageFFTBodyAccelerationStandardDeviationZaxis" - Average of the standard deviation of body linear acceleration along the Z-axis Fast Fourier Transformed
[73] "AverageFFTBodyAccelerationJerkStandardDeviationXaxis" - Average of the standard deviation of Jerk signals along the X-axis Fast Fourier Transformed
[74] "AverageFFTBodyAccelerationJerkStandardDeviationYaxis" - Average of the standard deviation of Jerk signals along the Y-axis Fast Fourier Transformed
[75] "AverageFFTBodyAccelerationJerkStandardDeviationZaxis" - Average of the standard deviation of Jerk signals along the Z-axis Fast Fourier Transformed
[76] "AverageFFTBodyGyroStandardDeviationXaxis" - Average of the standard deviation of angular velocity along the X-axis Fast Fourier Transformed 
[77] "AverageFFTBodyGyroStandardDeviationYaxis" - Average of the standard deviation of angular velocity along the Y-axis Fast Fourier Transformed 
[78] "AverageFFTBodyGyroStandardDeviationZaxis" - Average of the standard deviation of angular velocity along the Z-axis Fast Fourier Transformed 
[79] "AverageFFTBodyAccelerationMagnetudeStandardDeviation" - Average of the standard deviation of body acceleration magnetude Fast Fourier Transformed 
[80] "AverageFFTBodyBodyAccelerationJerkMagnetudeStandardDeviation" - Average of the standard deviation of body acceleration Jerk magnetude Fast Fourier Transformed
[81] "AverageFFTBodyBodyGyroMagnetudeStandardDeviation" - Average of the standard deviation of angular velocity magnetude Fast Fourier Transformed
[82] "AverageFFTBodyBodyGyroJerkMagnetudeStandardDeviation" - Average of the standard deviation of body Jerk magnetude Fast Fourier Transformed


##Sources
'R for Data Science' - Garrett Grolemund, Hadley Wickham (Whttp://r4ds.had.co.nz/tibbles.html)
'Getting and Cleaning the Assignment' - David Hood (https://thoughtfulbloke.wordpress.com/2015/09/09/)
Code Book template - Joris Schut (https://gist.github.com/JorisSchut/dbc1fc0402f28cad9b41)