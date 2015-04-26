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
This data was obtained at: 
 
###Notes on the original (raw) data 
From the original dataset README.txt:

 
##Creating the tidy datafile
 
###Guide to create the tidy data file
Description on how to create the tidy data file (1. download the data, ...)/
 
###Cleaning of the data
The cleaning script reads in the training data set, the testing dataset, appends the test set to the training set, and then subsets by selecting only the columns that incude "mean" or "std" in the column name. It also adds columns to identify the subject tested (numerically) and activity being tested. [http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.names]()
 
##Description of the variables in the tiny_data.txt file
General description of the file including:
 - Dimensions of the dataset - 14220 X 5
 - Summary of the data
 - Variables present in the dataset
 
(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)
 
###subjectid
This is a numeric id that maps to one of the 30 subjects in the test.
 
Some information on the variable including:
 - Class of the variable
 - Unique values/levels of the variable
 - Unit of measurement (if no unit of measurement list this as well)
 - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels). 
 
(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)
 
####Notes on variable 1:
If available, some additional notes on the variable not covered elsewehere. If no notes are present leave this section out.

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


