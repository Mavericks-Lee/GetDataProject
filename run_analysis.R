## Course Project for getting and cleaning data
features <- read.table("./UCI HAR Dataset/features.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt",
                           col.names = c("subject"))
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
colnames(x_test) <- features[,2]
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt",
                     col.names = c("activity"))
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt",
                            col.names = c("subject"))
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
colnames(x_train) <- features[,2]
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt",
                      col.names = c("activity"))

## Merge test and train data set
## Merge test data set
test <- cbind(x_test,y_test,subject_test)
## Merge train data set
train <- cbind(x_train,y_train,subject_train)
## Merge test and train
allset <- rbind(test,train)

## Extract the measurements on mean and standard deviation
target <- allset[,c(grep("mean",features[,2]),grep("std",features[,2]),
                    562,563)]

## Name the activity
target[target$activity[]==1,"activity"] <- "Walking"
target[target$activity[]==2,"activity"] <- "Walking_Upstairs"
target[target$activity[]==3,"activity"] <- "Walking_Downstairs"
target[target$activity[]==4,"activity"] <- "Sitting"
target[target$activity[]==5,"activity"] <- "Standing"
target[target$activity[]==6,"activity"] <- "Laying"

## Subset a independent tidy data set with the average of each variable
## for each activity and each subject
final <- cbind(sapply(split(target[1:79],target$activity[]),colMeans),
               sapply(split(target[1:79],target$subject[]),colMeans))

## Export final in txt file
write.table(final,file="./getdataproject.txt",row.names = FALSE)
