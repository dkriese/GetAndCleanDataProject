---
title: Coursera project using data from: "Human Activity Recognition Using Smartphones Dataset Codebook"
author: "Diana Kriese"
date: "Apr 23, 2015"
output:
  html_document:
    keep_md: yes
---
 
## Project Description
Coursera Getting and Cleaning Data project using a publicly available dataset
 
##Study design and data processing
 
###Collection of the raw data
This data was obtained at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
 
###Notes on the original (raw) data 
From the original dataset README.txt:
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws
 
##Creating the tidy datafile
 
###Guide to create the tidy data file
1. download the data
2. place the run_analysis.R script in the same directory as the unzipped folder of the downloaded data
3. install dplyr and tidyr packages
4. run the script (type run_analysis.R in command line R)
 
###Cleaning of the data
The cleaning script reads in the training data set, the testing dataset, appends the test set to the training set, and then subsets by selecting only the columns that incude "mean" or "std" in the column name. Then it transforms the feature columns into two columns, feature and measurement. Columns are prepended to identify the subject tested (numerically) and activity being tested. The activity codes are replaced with activity names. The final set summarized the data by subjectid and activity and includes the calculated average and standard deviation for each feature. [http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.names]()
 
##Description of the variables in the tiny_data.txt file
General description of the file including:
 - Dimensions of the dataset - 14220 X 5
 - Summary of the data
 - Variables present in the dataset - subjectid, activity, feature, average, standarddev
 
(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)
 
###subjectid
This is a numeric id that maps to one of the 30 subjects in the test.
 
###activity
This is the string description of the activity the subjects were taking part in when the measurement was taken. Unique values are: walking, walkingupstairs, walkingdownstairs, sitting, standing, and laying

###feature
An underscore delimitted character string identifying the signal vector recorded. Features are normalized and bounded within [-1,1]. The descriptors include:
 - t/f for time or Fast Fourier Transform (FFT)
 - body for body linear acceleration or angular velocity
 - gravity for the gravitational acceleration
 - acc/gyro indicates acceleration or gyro movement
 - mag is short for magnitude
 - xyz to indication direction in the X, Y, or Z plane
 - jerk 
 - mean
 - std for standard deviation

###average
The average or mean value of the recorded feature for the associated subject and activity, normalized and bounded within [-1,1].

###standarddev
The standard deviation of the recorded feature for the associated subject and activity, normalized and bounded within [-1,1].


##Sources
License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


