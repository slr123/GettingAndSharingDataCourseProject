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

##Summary of Variables
 subject       activity          activitynum  AveragetimeBodyAccelerationmeanXaxis
 Min.   : 1.0   Length:180         Min.   :1.0   Min.   :0.2216                      
 1st Qu.: 8.0   Class :character   1st Qu.:2.0   1st Qu.:0.2712                      
 Median :15.5   Mode  :character   Median :3.5   Median :0.2770                      
 Mean   :15.5                      Mean   :3.5   Mean   :0.2743                      
 3rd Qu.:23.0                      3rd Qu.:5.0   3rd Qu.:0.2800                      
 Max.   :30.0                      Max.   :6.0   Max.   :0.3015                      
 AveragetimeBodyAccelerationmeanYaxis AveragetimeBodyAccelerationmeanZaxis
 Min.   :-0.040514                    Min.   :-0.15251                    
 1st Qu.:-0.020022                    1st Qu.:-0.11207                    
 Median :-0.017262                    Median :-0.10819                    
 Mean   :-0.017876                    Mean   :-0.10916                    
 3rd Qu.:-0.014936                    3rd Qu.:-0.10443                    
 Max.   :-0.001308                    Max.   :-0.07538                    
 AveragetimeGravityAccelerationmeanXaxis AveragetimeGravityAccelerationmeanYaxis
 Min.   :-0.6800                         Min.   :-0.47989                       
 1st Qu.: 0.8376                         1st Qu.:-0.23319                       
 Median : 0.9208                         Median :-0.12782                       
 Mean   : 0.6975                         Mean   :-0.01621                       
 3rd Qu.: 0.9425                         3rd Qu.: 0.08773                       
 Max.   : 0.9745                         Max.   : 0.95659                       
 AveragetimeGravityAccelerationmeanZaxis AveragetimeBodyAccelerationJerkmeanXaxis
 Min.   :-0.49509                        Min.   :0.04269                         
 1st Qu.:-0.11726                        1st Qu.:0.07396                         
 Median : 0.02384                        Median :0.07640                         
 Mean   : 0.07413                        Mean   :0.07947                         
 3rd Qu.: 0.14946                        3rd Qu.:0.08330                         
 Max.   : 0.95787                        Max.   :0.13019                         
 AveragetimeBodyAccelerationJerkmeanYaxis AveragetimeBodyAccelerationJerkmeanZaxis
 Min.   :-0.0386872                       Min.   :-0.067458                       
 1st Qu.: 0.0004664                       1st Qu.:-0.010601                       
 Median : 0.0094698                       Median :-0.003861                       
 Mean   : 0.0075652                       Mean   :-0.004953                       
 3rd Qu.: 0.0134008                       3rd Qu.: 0.001958                       
 Max.   : 0.0568186                       Max.   : 0.038053                       
 AveragetimeBodyGyromeanXaxis AveragetimeBodyGyromeanYaxis AveragetimeBodyGyromeanZaxis
 Min.   :-0.20578             Min.   :-0.20421             Min.   :-0.07245            
 1st Qu.:-0.04712             1st Qu.:-0.08955             1st Qu.: 0.07475            
 Median :-0.02871             Median :-0.07318             Median : 0.08512            
 Mean   :-0.03244             Mean   :-0.07426             Mean   : 0.08744            
 3rd Qu.:-0.01676             3rd Qu.:-0.06113             3rd Qu.: 0.10177            
 Max.   : 0.19270             Max.   : 0.02747             Max.   : 0.17910            
 AveragetimeBodyGyroJerkmeanXaxis AveragetimeBodyGyroJerkmeanYaxis AveragetimeBodyGyroJerkmeanZaxis
 Min.   :-0.15721                 Min.   :-0.07681                 Min.   :-0.092500               
 1st Qu.:-0.10322                 1st Qu.:-0.04552                 1st Qu.:-0.061725               
 Median :-0.09868                 Median :-0.04112                 Median :-0.053430               
 Mean   :-0.09606                 Mean   :-0.04269                 Mean   :-0.054802               
 3rd Qu.:-0.09110                 3rd Qu.:-0.03842                 3rd Qu.:-0.048985               
 Max.   :-0.02209                 Max.   :-0.01320                 Max.   :-0.006941               
 AveragetimeBodyAccelerationMagnetudemean AveragetimeGravityAccelerationMagnetudemean
 Min.   :-0.9865                          Min.   :-0.9865                            
 1st Qu.:-0.9573                          1st Qu.:-0.9573                            
 Median :-0.4829                          Median :-0.4829                            
 Mean   :-0.4973                          Mean   :-0.4973                            
 3rd Qu.:-0.0919                          3rd Qu.:-0.0919                            
 Max.   : 0.6446                          Max.   : 0.6446                            
 AveragetimeBodyAccelerationJerkMagnetudemean AveragetimeBodyGyroMagnetudemean
 Min.   :-0.9928                              Min.   :-0.9807                 
 1st Qu.:-0.9807                              1st Qu.:-0.9461                 
 Median :-0.8168                              Median :-0.6551                 
 Mean   :-0.6079                              Mean   :-0.5652                 
 3rd Qu.:-0.2456                              3rd Qu.:-0.2159                 
 Max.   : 0.4345                              Max.   : 0.4180                 
 AveragetimeBodyGyroJerkMagnetudemean AverageFFTBodyAccelerationmeanXaxis
 Min.   :-0.99732                     Min.   :-0.9952                    
 1st Qu.:-0.98515                     1st Qu.:-0.9787                    
 Median :-0.86479                     Median :-0.7691                    
 Mean   :-0.73637                     Mean   :-0.5758                    
 3rd Qu.:-0.51186                     3rd Qu.:-0.2174                    
 Max.   : 0.08758                     Max.   : 0.5370                    
 AverageFFTBodyAccelerationmeanYaxis AverageFFTBodyAccelerationmeanZaxis
 Min.   :-0.98903                    Min.   :-0.9895                    
 1st Qu.:-0.95361                    1st Qu.:-0.9619                    
 Median :-0.59498                    Median :-0.7236                    
 Mean   :-0.48873                    Mean   :-0.6297                    
 3rd Qu.:-0.06341                    3rd Qu.:-0.3183                    
 Max.   : 0.52419                    Max.   : 0.2807                    
 AverageFFTBodyAccelerationmeanFreqXaxis AverageFFTBodyAccelerationmeanFreqYaxis
 Min.   :-0.63591                        Min.   :-0.379518                      
 1st Qu.:-0.39165                        1st Qu.:-0.081314                      
 Median :-0.25731                        Median : 0.007855                      
 Mean   :-0.23227                        Mean   : 0.011529                      
 3rd Qu.:-0.06105                        3rd Qu.: 0.086281                      
 Max.   : 0.15912                        Max.   : 0.466528                      
 AverageFFTBodyAccelerationmeanFreqZaxis AverageFFTBodyAccelerationJerkmeanXaxis
 Min.   :-0.52011                        Min.   :-0.9946                        
 1st Qu.:-0.03629                        1st Qu.:-0.9828                        
 Median : 0.06582                        Median :-0.8126                        
 Mean   : 0.04372                        Mean   :-0.6139                        
 3rd Qu.: 0.17542                        3rd Qu.:-0.2820                        
 Max.   : 0.40253                        Max.   : 0.4743                        
 AverageFFTBodyAccelerationJerkmeanYaxis AverageFFTBodyAccelerationJerkmeanZaxis
 Min.   :-0.9894                         Min.   :-0.9920                        
 1st Qu.:-0.9725                         1st Qu.:-0.9796                        
 Median :-0.7817                         Median :-0.8707                        
 Mean   :-0.5882                         Mean   :-0.7144                        
 3rd Qu.:-0.1963                         3rd Qu.:-0.4697                        
 Max.   : 0.2767                         Max.   : 0.1578                        
 AverageFFTBodyAccelerationJerkmeanFreqXaxis AverageFFTBodyAccelerationJerkmeanFreqYaxis
 Min.   :-0.57604                            Min.   :-0.60197                           
 1st Qu.:-0.28966                            1st Qu.:-0.39751                           
 Median :-0.06091                            Median :-0.23209                           
 Mean   :-0.06910                            Mean   :-0.22810                           
 3rd Qu.: 0.17660                            3rd Qu.:-0.04721                           
 Max.   : 0.33145                            Max.   : 0.19568                           
 AverageFFTBodyAccelerationJerkmeanFreqZaxis AverageFFTBodyGyromeanXaxis AverageFFTBodyGyromeanYaxis
 Min.   :-0.62756                            Min.   :-0.9931             Min.   :-0.9940            
 1st Qu.:-0.30867                            1st Qu.:-0.9697             1st Qu.:-0.9700            
 Median :-0.09187                            Median :-0.7300             Median :-0.8141            
 Mean   :-0.13760                            Mean   :-0.6367             Mean   :-0.6767            
 3rd Qu.: 0.03858                            3rd Qu.:-0.3387             3rd Qu.:-0.4458            
 Max.   : 0.23011                            Max.   : 0.4750             Max.   : 0.3288            
 AverageFFTBodyGyromeanZaxis AverageFFTBodyGyromeanFreqXaxis AverageFFTBodyGyromeanFreqYaxis
 Min.   :-0.9860             Min.   :-0.395770               Min.   :-0.66681               
 1st Qu.:-0.9624             1st Qu.:-0.213363               1st Qu.:-0.29433               
 Median :-0.7909             Median :-0.115527               Median :-0.15794               
 Mean   :-0.6044             Mean   :-0.104551               Mean   :-0.16741               
 3rd Qu.:-0.2635             3rd Qu.: 0.002655               3rd Qu.:-0.04269               
 Max.   : 0.4924             Max.   : 0.249209               Max.   : 0.27314               
 AverageFFTBodyGyromeanFreqZaxis AverageFFTBodyAccelerationMagnetudemean
 Min.   :-0.50749                Min.   :-0.9868                        
 1st Qu.:-0.15481                1st Qu.:-0.9560                        
 Median :-0.05081                Median :-0.6703                        
 Mean   :-0.05718                Mean   :-0.5365                        
 3rd Qu.: 0.04152                3rd Qu.:-0.1622                        
 Max.   : 0.37707                Max.   : 0.5866                        
 AverageFFTBodyAccelerationMagnetudemeanFreq AverageFFTBodyBodyAccelerationJerkMagnetudemean
 Min.   :-0.31234                            Min.   :-0.9940                                
 1st Qu.:-0.01475                            1st Qu.:-0.9770                                
 Median : 0.08132                            Median :-0.7940                                
 Mean   : 0.07613                            Mean   :-0.5756                                
 3rd Qu.: 0.17436                            3rd Qu.:-0.1872                                
 Max.   : 0.43585                            Max.   : 0.5384                                
 AverageFFTBodyBodyAccelerationJerkMagnetudemeanFreq AverageFFTBodyBodyGyroMagnetudemean
 Min.   :-0.12521                                    Min.   :-0.9865                    
 1st Qu.: 0.04527                                    1st Qu.:-0.9616                    
 Median : 0.17198                                    Median :-0.7657                    
 Mean   : 0.16255                                    Mean   :-0.6671                    
 3rd Qu.: 0.27593                                    3rd Qu.:-0.4087                    
 Max.   : 0.48809                                    Max.   : 0.2040                    
 AverageFFTBodyBodyGyroMagnetudemeanFreq AverageFFTBodyBodyGyroJerkMagnetudemean
 Min.   :-0.45664                        Min.   :-0.9976                        
 1st Qu.:-0.16951                        1st Qu.:-0.9813                        
 Median :-0.05352                        Median :-0.8779                        
 Mean   :-0.03603                        Mean   :-0.7564                        
 3rd Qu.: 0.08228                        3rd Qu.:-0.5831                        
 Max.   : 0.40952                        Max.   : 0.1466                        
 AverageFFTBodyBodyGyroJerkMagnetudemeanFreq AveragetimeBodyAccelerationStandardDeviationXaxis
 Min.   :-0.18292                            Min.   :-0.9961                                  
 1st Qu.: 0.05423                            1st Qu.:-0.9799                                  
 Median : 0.11156                            Median :-0.7526                                  
 Mean   : 0.12592                            Mean   :-0.5577                                  
 3rd Qu.: 0.20805                            3rd Qu.:-0.1984                                  
 Max.   : 0.42630                            Max.   : 0.6269                                  
 AveragetimeBodyAccelerationStandardDeviationYaxis AveragetimeBodyAccelerationStandardDeviationZaxis
 Min.   :-0.99024                                  Min.   :-0.9877                                  
 1st Qu.:-0.94205                                  1st Qu.:-0.9498                                  
 Median :-0.50897                                  Median :-0.6518                                  
 Mean   :-0.46046                                  Mean   :-0.5756                                  
 3rd Qu.:-0.03077                                  3rd Qu.:-0.2306                                  
 Max.   : 0.61694                                  Max.   : 0.6090                                  
 AveragetimeGravityAccelerationStandardDeviationXaxis AveragetimeGravityAccelerationStandardDeviationYaxis
 Min.   :-0.9968                                      Min.   :-0.9942                                     
 1st Qu.:-0.9825                                      1st Qu.:-0.9711                                     
 Median :-0.9695                                      Median :-0.9590                                     
 Mean   :-0.9638                                      Mean   :-0.9524                                     
 3rd Qu.:-0.9509                                      3rd Qu.:-0.9370                                     
 Max.   :-0.8296                                      Max.   :-0.6436                                     
 AveragetimeGravityAccelerationStandardDeviationZaxis
 Min.   :-0.9910                                     
 1st Qu.:-0.9605                                     
 Median :-0.9450                                     
 Mean   :-0.9364                                     
 3rd Qu.:-0.9180                                     
 Max.   :-0.6102                                     
 AveragetimeBodyAccelerationJerkStandardDeviationXaxis
 Min.   :-0.9946                                      
 1st Qu.:-0.9832                                      
 Median :-0.8104                                      
 Mean   :-0.5949                                      
 3rd Qu.:-0.2233                                      
 Max.   : 0.5443                                      
 AveragetimeBodyAccelerationJerkStandardDeviationYaxis
 Min.   :-0.9895                                      
 1st Qu.:-0.9724                                      
 Median :-0.7756                                      
 Mean   :-0.5654                                      
 3rd Qu.:-0.1483                                      
 Max.   : 0.3553                                      
 AveragetimeBodyAccelerationJerkStandardDeviationZaxis AveragetimeBodyGyroStandardDeviationXaxis
 Min.   :-0.99329                                      Min.   :-0.9943                          
 1st Qu.:-0.98266                                      1st Qu.:-0.9735                          
 Median :-0.88366                                      Median :-0.7890                          
 Mean   :-0.73596                                      Mean   :-0.6916                          
 3rd Qu.:-0.51212                                      3rd Qu.:-0.4414                          
 Max.   : 0.03102                                      Max.   : 0.2677                          
 AveragetimeBodyGyroStandardDeviationYaxis AveragetimeBodyGyroStandardDeviationZaxis
 Min.   :-0.9942                           Min.   :-0.9855                          
 1st Qu.:-0.9629                           1st Qu.:-0.9609                          
 Median :-0.8017                           Median :-0.8010                          
 Mean   :-0.6533                           Mean   :-0.6164                          
 3rd Qu.:-0.4196                           3rd Qu.:-0.3106                          
 Max.   : 0.4765                           Max.   : 0.5649                          
 AveragetimeBodyGyroJerkStandardDeviationXaxis AveragetimeBodyGyroJerkStandardDeviationYaxis
 Min.   :-0.9965                               Min.   :-0.9971                              
 1st Qu.:-0.9800                               1st Qu.:-0.9832                              
 Median :-0.8396                               Median :-0.8942                              
 Mean   :-0.7036                               Mean   :-0.7636                              
 3rd Qu.:-0.4629                               3rd Qu.:-0.5861                              
 Max.   : 0.1791                               Max.   : 0.2959                              
 AveragetimeBodyGyroJerkStandardDeviationZaxis AveragetimeBodyAccelerationMagnetudeStandardDeviation
 Min.   :-0.9954                               Min.   :-0.9865                                      
 1st Qu.:-0.9848                               1st Qu.:-0.9430                                      
 Median :-0.8610                               Median :-0.6074                                      
 Mean   :-0.7096                               Mean   :-0.5439                                      
 3rd Qu.:-0.4741                               3rd Qu.:-0.2090                                      
 Max.   : 0.1932                               Max.   : 0.4284                                      
 AveragetimeGravityAccelerationMagnetudeStandardDeviation
 Min.   :-0.9865                                         
 1st Qu.:-0.9430                                         
 Median :-0.6074                                         
 Mean   :-0.5439                                         
 3rd Qu.:-0.2090                                         
 Max.   : 0.4284                                         
 AveragetimeBodyAccelerationJerkMagnetudeStandardDeviation AveragetimeBodyGyroMagnetudeStandardDeviation
 Min.   :-0.9946                                           Min.   :-0.9814                              
 1st Qu.:-0.9765                                           1st Qu.:-0.9476                              
 Median :-0.8014                                           Median :-0.7420                              
 Mean   :-0.5842                                           Mean   :-0.6304                              
 3rd Qu.:-0.2173                                           3rd Qu.:-0.3602                              
 Max.   : 0.4506                                           Max.   : 0.3000                              
 AveragetimeBodyGyroJerkMagnetudeStandardDeviation AverageFFTBodyAccelerationStandardDeviationXaxis
 Min.   :-0.9977                                   Min.   :-0.9966                                 
 1st Qu.:-0.9805                                   1st Qu.:-0.9820                                 
 Median :-0.8809                                   Median :-0.7470                                 
 Mean   :-0.7550                                   Mean   :-0.5522                                 
 3rd Qu.:-0.5767                                   3rd Qu.:-0.1966                                 
 Max.   : 0.2502                                   Max.   : 0.6585                                 
 AverageFFTBodyAccelerationStandardDeviationYaxis AverageFFTBodyAccelerationStandardDeviationZaxis
 Min.   :-0.99068                                 Min.   :-0.9872                                 
 1st Qu.:-0.94042                                 1st Qu.:-0.9459                                 
 Median :-0.51338                                 Median :-0.6441                                 
 Mean   :-0.48148                                 Mean   :-0.5824                                 
 3rd Qu.:-0.07913                                 3rd Qu.:-0.2655                                 
 Max.   : 0.56019                                 Max.   : 0.6871                                 
 AverageFFTBodyAccelerationJerkStandardDeviationXaxis AverageFFTBodyAccelerationJerkStandardDeviationYaxis
 Min.   :-0.9951                                      Min.   :-0.9905                                     
 1st Qu.:-0.9847                                      1st Qu.:-0.9737                                     
 Median :-0.8254                                      Median :-0.7852                                     
 Mean   :-0.6121                                      Mean   :-0.5707                                     
 3rd Qu.:-0.2475                                      3rd Qu.:-0.1685                                     
 Max.   : 0.4768                                      Max.   : 0.3498                                     
 AverageFFTBodyAccelerationJerkStandardDeviationZaxis AverageFFTBodyGyroStandardDeviationXaxis
 Min.   :-0.993108                                    Min.   :-0.9947                         
 1st Qu.:-0.983747                                    1st Qu.:-0.9750                         
 Median :-0.895121                                    Median :-0.8086                         
 Mean   :-0.756489                                    Mean   :-0.7110                         
 3rd Qu.:-0.543787                                    3rd Qu.:-0.4813                         
 Max.   :-0.006236                                    Max.   : 0.1966                         
 AverageFFTBodyGyroStandardDeviationYaxis AverageFFTBodyGyroStandardDeviationZaxis
 Min.   :-0.9944                          Min.   :-0.9867                         
 1st Qu.:-0.9602                          1st Qu.:-0.9643                         
 Median :-0.7964                          Median :-0.8224                         
 Mean   :-0.6454                          Mean   :-0.6577                         
 3rd Qu.:-0.4154                          3rd Qu.:-0.3916                         
 Max.   : 0.6462                          Max.   : 0.5225                         
 AverageFFTBodyAccelerationMagnetudeStandardDeviation
 Min.   :-0.9876                                     
 1st Qu.:-0.9452                                     
 Median :-0.6513                                     
 Mean   :-0.6210                                     
 3rd Qu.:-0.3654                                     
 Max.   : 0.1787                                     
 AverageFFTBodyBodyAccelerationJerkMagnetudeStandardDeviation
 Min.   :-0.9944                                             
 1st Qu.:-0.9752                                             
 Median :-0.8126                                             
 Mean   :-0.5992                                             
 3rd Qu.:-0.2668                                             
 Max.   : 0.3163                                             
 AverageFFTBodyBodyGyroMagnetudeStandardDeviation AverageFFTBodyBodyGyroJerkMagnetudeStandardDeviation
 Min.   :-0.9815                                  Min.   :-0.9976                                     
 1st Qu.:-0.9488                                  1st Qu.:-0.9802                                     
 Median :-0.7727                                  Median :-0.8941                                     
 Mean   :-0.6723                                  Mean   :-0.7715                                     
 3rd Qu.:-0.4277                                  3rd Qu.:-0.6081                                     
 Max.   : 0.2367                                  Max.   : 0.2878
 
##Sources
'R for Data Science' - Garrett Grolemund, Hadley Wickham (Whttp://r4ds.had.co.nz/tibbles.html)
'Getting and Cleaning the Assignment' - David Hood (https://thoughtfulbloke.wordpress.com/2015/09/09/)
Code Book template - Joris Schut (https://gist.github.com/JorisSchut/dbc1fc0402f28cad9b41)
