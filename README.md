# GetDataProject
The scrpition run_analysis.R read Samsung data, combine test data set and train data set, nominate each variable as the features.txt indicates, and then extract variables that on the mean and standard deviation. Finally calculate the mean of each variable and splite the data set by activity and subject.
The names of variable are read from features.txt and store in features.
The subject and activity are read from subject_test.txt and y_test.txt with the column names as "subject" and "activity".
After read X_test.txt, the column names are set by colnames(). Set col.names = features[,2] in read.table() does not work correctly.

Test data set is created by cbind x_test, y_test, and subject_test while train data set is created by cbind x_train, y_train, and subject_train.
A whole data set is getted by rbind test data set and train data set.

grep("mean",features[,2]) get the sequence of columns on mean, and grep("std",features[,2]) get the sequence of columns on the standard deviation.
Then columns on mean and standard deviation are subsetted with activity and subject into dataframe 'target'. And the activity codes are substained by descriptive names.

target[1:79] is a dataframe exclude columns activity and subject, and used to calculate the mean of each variable.
sapply() apply colMeans function on each group splite target[1:79] by activity or subject. The results are cbinded and store in 'final'
Write.table() export final as a text file.
