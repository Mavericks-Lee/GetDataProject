#CodeBook of run_analysis.R
features: the variable names from features.txt
subject_test: subject of test data, read from subject_test.txt
x_test: measurements of test data, column names is set according features; read from X_test.txt
y_test: activity code, read from y_test.txt
subject_train: subject of train data, read from subject_train.txt
x_train: measurements of train data, like x_test
y_train: activity code of train data

test: a dataframe of test data contain 563 variables including 'activity' and 'subject'
train: a dataframe of train data has the same variables with test

allset: a dataframe combine test and train data

target: a subset of allset with columns 'activity', 'subject' and those on mean or standard deviation

final: a dataframe of the mean of each variable group by activity and subject.
