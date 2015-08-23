#CodeBook for getdataproject.txt and run_analysis.R
##variables in getdataproject.txt
columns 1-6 are activity names
columns 7-36 are the ID number of the subject who performed the activity for each window sample
1 "Laying"
2 "Sitting"
3 "Standing"
4 "Walking"
5 "Walking_Downstairs"
6 "Walking_Upstairs"
7 "1"
8 "2"
9 "3"
10 "4"
11 "5"
12 "6"
13 "7"
14 "8"
15 "9"
16 "10"
17 "11"
18 "12"
19 "13"
20 "14"
21 "15"
22 "16"
23 "17"
24 "18"
25 "19"
26 "20"
27 "21"
28 "22"
29 "23"
30 "24"
31 "25"
32 "26"
33 "27"
34 "28"
35 "29"
36 "30"
##variables in run_analysis.R
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
