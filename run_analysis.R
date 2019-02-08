## Load the packages used

install.packages("dplyr")

install.packages("tidyverse")


library("dplyr")
library("tidyverse")


##Download and unzip data


setwd("G:/GS Value Added Team/01 GS Analytics")
if(!file.exists("Assignment2")){
  dir.create("Assignment2")
  setwd("Assignment2")
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","Assignment Data.zip")
  unzip("Assignment Data.zip")
} else {
  setwd("Assignment2")
}

## Get Files

X_test<-read.fwf("UCI HAR Dataset/test/X_test.txt",widths=rep(16,561),header=FALSE)
y_test<-read.table("UCI HAR Dataset/test/y_test.txt", sep=" ")
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt", sep=" ")
X_train<-read.fwf("UCI HAR Dataset/train/X_train.txt",widths=rep(16,561),header=FALSE)
y_train<-read.table("UCI HAR Dataset/train/y_train.txt", sep=" ")
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt", sep=" ")
features<-read.table("UCI HAR Dataset/features.txt", sep=" ")
features<-paste0(features$V2,rep(1:length(features$V2)))


## Tidy names and merge data

names(X_test)<-features
names(X_train)<-features
names(subject_test)<-"Subjects"
names(y_test)<-"Labels"
names(subject_train)<-"Subjects"
names(y_train)<-"Labels"

testData<-cbind(subject_test,y_test,X_test)
trainData<-cbind(subject_train,y_train,X_train)
allData<-rbind(testData,trainData)

##Convert to Tibble

allData<-tbl_df(allData)
names(allData)

## Select the data we need from this assignment

allData<-allData %>% select(grep("mean|std|Subjects|Labels",names(allData)))

## Give variables more easy to understand names

names(allData)[grep("meanFreq()",names(allData))]<-paste("Mean Frequency of",names(allData)[grep("meanFreq()",names(allData))])
names(allData)[grep("mean()",names(allData))]<-paste("Mean of",names(allData)[grep("mean()",names(allData))])
names(allData)[grep("std()",names(allData))]<-paste("Standard Deviation of",names(allData)[grep("std()",names(allData))])
names(allData)<-gsub("-|std()|mean()|meanFreq()|*([0-9])","",names(allData))

## Convert Labels into a factor and rename levels to make
## them more understandable

allData<-allData %>% 
  mutate(Labels=as.factor(Labels)) %>%
    mutate(Labels = fct_recode(Labels, 
      "Walking"="1",
      "Walking Upstairs"="2",
      "Walking Downstairs"="3",
      "Sitting"="4",
      "Standing"="5",
      "Laying"="6"
      )
    )
  
## Output required by assignment - group by labels and then Subjects, and take
## the mean over the observations. Write to file
setwd("..")
getwd()

allData<- allData %>%
    group_by(Labels, Subjects) %>%
    summarise_all(mean)

write.csv(allData, file = "tidyData.csv")
