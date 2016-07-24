# Getting-CleaningData
# Getting and Cleaning Data, Peer Assessment Project
  
 -Peer Assessment Project for Coursera Course: Getting and Cleaning Data
## <u>How To Complete this task </u>
To repeat the work done in this project:

* 1. Download source data from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
* 2. Unzip to your working directory of R
* 3. Execute the script run_analysis.R from that directory.

## <u>Steps Performed</u>
The major portion  of the script involve loading the data provided from the source, and tidying this into a single data frame containing just the original data cells of interest, in the desired format.  Only the final major step computes a new result from the tidied data, writing out subject ids, activites, and mean of all measures of interest.
 
### Tidy Part a
Get feature names and subset to only those features of mean or std measures

### Tidy Part b
Get the train and test feature sets and subset only the desired features
 
### Tidy Part c 
Combine the two datasets into 1
 
### Tidy Part d
Attach column names to features
 
### Tidy Part e
Read and combine the train and test activity codes
 
### Tidy Part f
Get activity labels and attach to activity codes
 
### Tidy Part g
Get and combine the train and test subject ids
 
### Tidy Part h
Combine and name subjects and activity names
 
### Tidy Part i
Combine with measures of interest for finished desired data frame
 
### Compute New Result
From the set produced for analysis, compute and report means of all measures, grouped by subject_id and by activity.
