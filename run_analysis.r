##read in raw data
##**"UCI HAR Dataset" folder must be in working directory!**
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", stringsAsFactors = FALSE)
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", stringsAsFactors = FALSE)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", stringsAsFactors = FALSE)
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", stringsAsFactors = FALSE)
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", stringsAsFactors = FALSE)
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", stringsAsFactors = FALSE)
features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
activities <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)

##Convert dataframes to 'tibbles' to work in the 'tidyverse' (see: "http://r4ds.had.co.nz/tibbles.html")
library(tidyverse)
XTrain <- as_tibble(X_train)
YTrain <- as_tibble(y_train)
SubjectTrain <- as_tibble(subject_train)
XTest <- as_tibble(X_test)
YTest <- as_tibble(y_test)
SubjectTest <- as_tibble(subject_test)
tfeatures <- as_tibble(features)

##add 'activity' and 'subject' columns from Y and subject sets after renaming columns
names(YTrain) <- "activitynum"
names(YTest) <- "activitynum"
names(SubjectTrain) <- "subject"
names(SubjectTest) <- "subject"
Xtrain <- as_tibble(cbind(XTrain, YTrain, SubjectTrain))
Xtest <- as_tibble(cbind(XTest, YTest, SubjectTest))

##combine into one table
X <- as_tibble(rbind(Xtrain, Xtest))

##name columns of combined set w/ features after adding "activity" and "subject" to features
index <- 562:563
feature <- c("activitynum", "subject")
add <- tibble(index, feature)
names(add) <- names(tfeatures)
Features <- rbind(tfeatures, add)
##also need to clean up the 'features' so they don't include reserved characters
feature_labels <- gsub("\\()", "", Features$V2)
feature_labels <- gsub("\\-","", feature_labels)
feature_labels <- as_tibble(gsub("\\,", "", feature_labels))
##and modify duplicate features so they can be used as column names
feature_labels <- make.unique(as.vector(feature_labels$value))
names(X) <- feature_labels

##isolate and extract columns containing means or standard deviations
cols_with_mean_and_std <- c(grep("mean", names(X)), grep("std", names(X)))
roughfinaldata <- X[,c(as.vector(cols_with_mean_and_std), 562:563)]

##move 'activity' and 'subject' columns to beginning
roughfinaldata <- select(roughfinaldata, activitynum, subject, everything())

##create lookup table assigning descriptive names to activities using 'activity_labels.txt'
lookup <- tibble(activitynum = activities[,1], activity = activities[,2])
##join with main data and move 'activity' to beginning
almostfinaldata <- inner_join(roughfinaldata, lookup, by = "activitynum") %>%
        select(subject, activitynum, activity, everything())
##rename variables to be more intuitive
names(almostfinaldata) <- gsub("Acc", "Acceleration", names(almostfinaldata))
names(almostfinaldata) <- gsub("Mag", "Magnetude", names(almostfinaldata))
names(almostfinaldata) <- gsub("std", "StandardDeviation", names(almostfinaldata))
names(almostfinaldata) <- gsub("max", "Maximum", names(almostfinaldata))
names(almostfinaldata) <- gsub("Freq", "Frequency", names(almostfinaldata))
names(almostfinaldata) <- gsub("min", "Minimum", names(almostfinaldata))
names(almostfinaldata) <- gsub("iqr", "InterquartileRange", names(almostfinaldata))
names(almostfinaldata) <- gsub("arCoeff", "AutorregresionCoefficients", names(almostfinaldata))
names(almostfinaldata) <- gsub("mad", "MedianAbsoluteDeviation", names(almostfinaldata))
names(almostfinaldata) <- gsub("sma", "SignalMagnitudeArea", names(almostfinaldata))
names(almostfinaldata) <- gsub("bandsEnergy", "FrequencyIntervalEnergy", names(almostfinaldata))
names(almostfinaldata) <- gsub("X$", "Xaxis", names(almostfinaldata))
names(almostfinaldata) <- gsub("Y$", "Yaxis", names(almostfinaldata))
names(almostfinaldata) <- gsub("Z$", "Zaxis", names(almostfinaldata))
names(almostfinaldata) <- gsub("^f", "FFT", names(almostfinaldata))
names(almostfinaldata) <- gsub("^t", "time", names(almostfinaldata))

##create second, independent tidy data set with average of each
##      variable for each activity and each subject
finaldata <- almostfinaldata %>%
        group_by(subject, activity) %>%
        summarize_all(funs(mean)) %>%
        arrange(subject)
names(finaldata)[4:82] <- paste("Average", names(finaldata)[4:82], sep = "")
