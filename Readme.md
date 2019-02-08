# Readme
Getting and Cleaning Data Final Assignment

## Files
run_analysis.R - the analysis script
Codebook.md - a summary and description of variables used in the analysis
Readme.md - what you're reading now. A run down on what the code does, in order

## Running the Analysis
The code includes install.packages for the key packages I've used, dplyr and tidyverse. Do not run these lines if you have these packages installed.

You will need to set the working directory for the most appropriate folder for your setup - which will differ from ours.

The code then checks if the data has already been downloaded, and if not it creates a directory with name "Assignment2", changes the working directory, downloads the data and unzips it. If this step has already been done, it changes the working directory to the appropriate folder.

The data is read into variables that correspond to the source data files. As 'features' will be used for variable names and contains non-unique items, we have appended numbers in sequence to each item.

The code then applies the variable names to the columns names of the data frames, and consolidates the data into tidy data for each set, test and train.

The test set and the train set are then combined into the allData variable. Because the assignment does not call for the differentiation between the two sets to be retained, we have not created a new variable that distinguishes between test and train for each observation.

The resulting dataframe has one observation per row and one variable per column.

The dataframe is converted to a tibble, and only standard deviation and mean variables are retained, per instructions. The variable names are made more readable by replacing items such as "mean()" with "Mean of". 

Label observations are made more readable by changing "1", "2", etc to "Walking", etc.

The data is then grouped by Labels and Subjects, and the mean over these observations is taken. The resulting tibble is 80 rows, and this is saved as a file called tidyData.csv.