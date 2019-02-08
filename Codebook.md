# Codebook
Getting and Cleaning Data Final Assignment

## Source Data

The source data was obtained from UCI, <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>.

The source data has been stored in the following variables, with no manipulation or formatting changes. See the readme at the source data website for a more detailed description of the contents:

|Variable|Class|Description|
|:------|:------|:------|
| features | Data Frame|561 Feature Names. Features are quantitative results (or averages,etc) for each observation |
| X_test | Data Frame|2947 Observations, broken up between each feature |
| y_test | Data Frame|A number representing the activity for each observation in the test group, where 1 = WALKING, 2 = WALKING UPSTAIRS, 3 = WALKING DOWNSTAIRS, 4 = SITTING, 5 = STANDING, 6 = LAYING |
| subject_test| Data Frame| The Subject (individual) corresponding to each observation in the test group |  

## Tidied Data

The feature names are added to the data to provide meaningful column names, and subject_test and y_test are given the column headers "Subjects" and "Labels" respectively.

The data is then aggregated into two three data frames, which are themselves tidy data as each row is an observation, each column is a variable, there is one variable per column, etc. Note that in this case we do **not** include another variable to differentiate each observation between test and train in the full data set, allData, as we do not need to make this distinction in the assignment. The full data set is converted to a tibble for easier analysis and further tidied to be used in analysis

allData was filtered so that only Mean and Standard Deviation variables are retained, with Subjects and Labels. These are given slightly more readable names (e.g. "Mean of tBodyAcc()X").

Descriptive activity names were given to the "Labels" variable, e.g. "Walking" instead of "1", as shown further below.

A summary of the three data sets are shown below:

|Variable|Class|Description|
|:------|:------|:------|
| testData | Data Frame| A data frame consisting of the Subjects, Labels and observations for the test group.  |
| trainData | Data Frame| A data frame consisting of the Subjects, Labels and observations for the train group. |
| allData | Tibble | A tibble consisting of the Subjects, Labels and observations for the test and train groups.  |

## Final Tidy Data Set: allData
A full breakdown of the variable names in the allData tibble is shown below
|Index|Variable|Possible Values
|:------|:------|:------|
| [1]|"Subjects"                                        |0-30|
| [2]|"Labels"                                          |"Walking",  "Walking Upstairs", "Walking Downstairs"="3", "Sitting", "Standing", "Laying"|
| [3]|"Mean of tBodyAcc()X"                             |Numeric between -1 and +1|
| [4]|"Mean of tBodyAcc()Y"                             |Numeric between -1 and +1|
| [5]|"Mean of tBodyAcc()Z"                             |Numeric between -1 and +1|
| [6]|"Standard Deviation of tBodyAcc()X"               |Numeric between -1 and +1|
| [7]|"Standard Deviation of tBodyAcc()Y"               |Numeric between -1 and +1|
| [8]|"Standard Deviation of tBodyAcc()Z"               |Numeric between -1 and +1|
| [9]|"Mean of tGravityAcc()X"                          |Numeric between -1 and +1|
|[10]|"Mean of tGravityAcc()Y"                          |Numeric between -1 and +1|
|[11]|"Mean of tGravityAcc()Z"                          |Numeric between -1 and +1|
|[12]|"Standard Deviation of tGravityAcc()X"            |Numeric between -1 and +1|
|[13]|"Standard Deviation of tGravityAcc()Y"            |Numeric between -1 and +1|
|[14]|"Standard Deviation of tGravityAcc()Z"            |Numeric between -1 and +1|
|[15]|"Mean of tBodyAccJerk()X"                         |Numeric between -1 and +1|
|[16]|"Mean of tBodyAccJerk()Y"                         |Numeric between -1 and +1|
|[17]|"Mean of tBodyAccJerk()Z"                         |Numeric between -1 and +1|
|[18]|"Standard Deviation of tBodyAccJerk()X"           |Numeric between -1 and +1|
|[19]|"Standard Deviation of tBodyAccJerk()Y"           |Numeric between -1 and +1|
|[20]|"Standard Deviation of tBodyAccJerk()Z"           |Numeric between -1 and +1|
|[21]|"Mean of tBodyGyro()X"                            |Numeric between -1 and +1|
|[22]|"Mean of tBodyGyro()Y"                            |Numeric between -1 and +1|
|[23]|"Mean of tBodyGyro()Z"                            |Numeric between -1 and +1|
|[24]|"Standard Deviation of tBodyGyro()X"              |Numeric between -1 and +1|
|[25]|"Standard Deviation of tBodyGyro()Y"              |Numeric between -1 and +1|
|[26]|"Standard Deviation of tBodyGyro()Z"              |Numeric between -1 and +1|
|[27]|"Mean of tBodyGyroJerk()X"                        |Numeric between -1 and +1|
|[28]|"Mean of tBodyGyroJerk()Y"                        |Numeric between -1 and +1|
|[29]|"Mean of tBodyGyroJerk()Z"                        |Numeric between -1 and +1|
|[30]|"Standard Deviation of tBodyGyroJerk()X"          |Numeric between -1 and +1|
|[31]|"Standard Deviation of tBodyGyroJerk()Y"          |Numeric between -1 and +1|
|[32]|"Standard Deviation of tBodyGyroJerk()Z"          |Numeric between -1 and +1|
|[33]|"Mean of tBodyAccMag()"                           |Numeric between -1 and +1|
|[34]|"Standard Deviation of tBodyAccMag()"             |Numeric between -1 and +1|
|[35]|"Mean of tGravityAccMag()"                        |Numeric between -1 and +1|
|[36]|"Standard Deviation of tGravityAccMag()"          |Numeric between -1 and +1|
|[37]|"Mean of tBodyAccJerkMag()"                       |Numeric between -1 and +1|
|[38]|"Standard Deviation of tBodyAccJerkMag()"         |Numeric between -1 and +1|
|[39]|"Mean of tBodyGyroMag()"                          |Numeric between -1 and +1|
|[40]|"Standard Deviation of tBodyGyroMag()"            |Numeric between -1 and +1|
|[41]|"Mean of tBodyGyroJerkMag()"                      |Numeric between -1 and +1|
|[42]|"Standard Deviation of tBodyGyroJerkMag()"        |Numeric between -1 and +1|
|[43]|"Mean of fBodyAcc()X"                             |Numeric between -1 and +1|
|[44]|"Mean of fBodyAcc()Y"                             |Numeric between -1 and +1|
|[45]|"Mean of fBodyAcc()Z"                             |Numeric between -1 and +1|
|[46]|"Standard Deviation of fBodyAcc()X"               |Numeric between -1 and +1|
|[47]|"Standard Deviation of fBodyAcc()Y"               |Numeric between -1 and +1|
|[48]|"Standard Deviation of fBodyAcc()Z"               |Numeric between -1 and +1|
|[49]|"Mean of Mean Frequency of fBodyAcc()X"           |Numeric between -1 and +1|
|[50]|"Mean of Mean Frequency of fBodyAcc()Y"           |Numeric between -1 and +1|
|[51]|"Mean of Mean Frequency of fBodyAcc()Z"           |Numeric between -1 and +1|
|[52]|"Mean of fBodyAccJerk()X"                         |Numeric between -1 and +1|
|[53]|"Mean of fBodyAccJerk()Y"                         |Numeric between -1 and +1|
|[54]|"Mean of fBodyAccJerk()Z"                         |Numeric between -1 and +1|
|[55]|"Standard Deviation of fBodyAccJerk()X"           |Numeric between -1 and +1|
|[56]|"Standard Deviation of fBodyAccJerk()Y"           |Numeric between -1 and +1|
|[57]|"Standard Deviation of fBodyAccJerk()Z"           |Numeric between -1 and +1|
|[58]|"Mean of Mean Frequency of fBodyAccJerk()X"       |Numeric between -1 and +1|
|[59]|"Mean of Mean Frequency of fBodyAccJerk()Y"       |Numeric between -1 and +1|
|[60]|"Mean of Mean Frequency of fBodyAccJerk()Z"       |Numeric between -1 and +1|
|[61]|"Mean of fBodyGyro()X"                            |Numeric between -1 and +1|
|[62]|"Mean of fBodyGyro()Y"                            |Numeric between -1 and +1|
|[63]|"Mean of fBodyGyro()Z"                            |Numeric between -1 and +1|
|[64]|"Standard Deviation of fBodyGyro()X"              |Numeric between -1 and +1|
|[65]|"Standard Deviation of fBodyGyro()Y"              |Numeric between -1 and +1|
|[66]|"Standard Deviation of fBodyGyro()Z"              |Numeric between -1 and +1|
|[67]|"Mean of Mean Frequency of fBodyGyro()X"          |Numeric between -1 and +1|
|[68]|"Mean of Mean Frequency of fBodyGyro()Y"          |Numeric between -1 and +1|
|[69]|"Mean of Mean Frequency of fBodyGyro()Z"          |Numeric between -1 and +1|
|[70]|"Mean of fBodyAccMag()"                           |Numeric between -1 and +1|
|[71]|"Standard Deviation of fBodyAccMag()"             |Numeric between -1 and +1|
|[72]|"Mean of Mean Frequency of fBodyAccMag()"         |Numeric between -1 and +1|
|[73]|"Mean of fBodyBodyAccJerkMag()"                   |Numeric between -1 and +1|
|[74]|"Standard Deviation of fBodyBodyAccJerkMag()"     |Numeric between -1 and +1|
|[75]|"Mean of Mean Frequency of fBodyBodyAccJerkMag()" |Numeric between -1 and +1|
|[76]|"Mean of fBodyBodyGyroMag()"                      |Numeric between -1 and +1|
|[77]|"Standard Deviation of fBodyBodyGyroMag()"        |Numeric between -1 and +1|
|[78]|"Mean of Mean Frequency of fBodyBodyGyroMag()"    |Numeric between -1 and +1|
|[79]|"Mean of fBodyBodyGyroJerkMag()"                  |Numeric between -1 and +1|
|[80]|"Standard Deviation of fBodyBodyGyroJerkMag()"    |Numeric between -1 and +1|
|[81]|"Mean of Mean Frequency of fBodyBodyGyroJerkMag()"|Numeric between -1 and +1|
