## run_analysis.R

An R script to read in data from several files in a publicly available dataset, merge the training and testing data, gather the variables into a feature column, and produce mean and standard deviation calculations on the features by subject and activity.

A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Installation
Install dplyr and tidyr packages (uncomment line 10 if needed).

Then unzip the raw dataset in the same directory as run_analysis.R

Run the script


read in the data with 
df <- read.table("summarized_df.txt",header=TRUE)

