Codebook
========

### Access to the data:

[Source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) of the original data:

	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

[Full Description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) at the site where the data was obtained:

	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
	
### Variables used:

Were imported 2 tables:

- test_set - table with data used to test the model, obted from `test/X_test.txt` 
- train_set - table with data used to train the model, obted from `train/X_train.txt`
- test_names - table with test labels, obted from `test/y_test.txt`
- train_names - table with train labels, obted from `train/y_test.txt`
- test_subject - table with subjects from test data, obted from  `test/subject_test.txt`
- train_subject - table with subjects from train data, obted from `train/subject_train.txt`
- features - Names of data columns, obted from `features.txt`
- activity_labels - table with respective labels and codes of activity

- untidyData -  have the test_set and train_set together, with their respective
subjects IDs and activities merged together. Have just the mean and standard
deviation columns.

- tidyData - subsetted, human-readable data ready for output according to
  project description.


##### Cols from tidyData

Variable                                   | Comments
-------------------------------------------|-----------
subject_id                                 |  subject identifier of volunteer (1-30)
activity                                   |  name ofactivity subject performed (LAYING,SITTING,STANDING,WALKING,WALKING_DOWNSTAIRS,WALKING_UPSTAIRS)
timeBodyAccelerometerMeanX                 |  mean of tBodyAcc-mean()-X
timeBodyAccelerometerMeanY                 |  mean of tBodyAcc-mean()-Y
timeBodyAccelerometerMeanZ                 |  mean of tBodyAcc-mean()-Z
timeBodyAccelerometerStdX                  |  mean of tBodyAcc-std()-X
timeBodyAccelerometerStdY                  |  mean of tBodyAcc-std()-Y
timeBodyAccelerometerStdZ                  |  mean of tBodyAcc-std()-Z
timeGravityAccelerometerMeanX              |  mean of tGravityAcc-mean()-X
timeGravityAccelerometerMeanY              |  mean of tGravityAcc-mean()-Y
timeGravityAccelerometerMeanZ              |  mean of tGravityAcc-mean()-Z
timeGravityAccelerometerStdX               |  mean of tGravityAcc-std()-X
timeGravityAccelerometerStdY               |  mean of tGravityAcc-std()-Y
timeGravityAccelerometerStdZ               |  mean of tGravityAcc-std()-Z
timeBodyAccelerometerJerkMeanX             |  mean of tBodyAccJerk-mean()-X
timeBodyAccelerometerJerkMeanY             |  mean of tBodyAccJerk-mean()-Y
timeBodyAccelerometerJerkMeanZ             |  mean of tBodyAccJerk-mean()-Z
timeBodyAccelerometerJerkStdX              |  mean of tBodyAccJerk-std()-X
timeBodyAccelerometerJerkStdY              |  mean of tBodyAccJerk-std()-Y
timeBodyAccelerometerJerkStdZ              |  mean of tBodyAccJerk-std()-Z
timeBodyGyroscopeMeanX                     |  mean of tBodyGyro-mean()-X
timeBodyGyroscopeMeanY                     |  mean of tBodyGyro-mean()-Y
timeBodyGyroscopeMeanZ                     |  mean of tBodyGyro-mean()-Z
timeBodyGyroscopeStdX                      |  mean of tBodyGyro-std()-X
timeBodyGyroscopeStdY                      |  mean of tBodyGyro-std()-Y
timeBodyGyroscopeStdZ                      |  mean of tBodyGyro-std()-Z
timeBodyGyroscopeJerkMeanX                 |  mean of tBodyGyroJerk-mean()-X
timeBodyGyroscopeJerkMeanY                 |  mean of tBodyGyroJerk-mean()-Y
timeBodyGyroscopeJerkMeanZ                 |  mean of tBodyGyroJerk-mean()-Z
timeBodyGyroscopeJerkStdX                  |  mean of tBodyGyroJerk-std()-X
timeBodyGyroscopeJerkStdY                  |  mean of tBodyGyroJerk-std()-Y
timeBodyGyroscopeJerkStdZ                  |  mean of tBodyGyroJerk-std()-Z
timeBodyAccelerometerMagMean               |  mean of tBodyAccMag-mean()
timeBodyAccelerometerMagStd                |  mean of tBodyAccMag-std()
timeGravityAccelerometerMagMean            |  mean of tGravityAccMag-mean()
timeGravityAccelerometerMagStd             |  mean of tGravityAccMag-std()
timeBodyAccelerometerJerkMagMean           |  mean of tBodyAccJerkMag-mean()
timeBodyAccelerometerJerkMagStd            |  mean of tBodyAccJerkMag-std()
timeBodyGyroscopeMagMean                   |  mean of tBodyGyroMag-mean()
timeBodyGyroscopeMagStd                    |  mean of tBodyGyroMag-std()
timeBodyGyroscopeJerkMagMean               |  mean of tBodyGyroJerkMag-mean()
timeBodyGyroscopeJerkMagStd                |  mean of tBodyGyroJerkMag-std()
frequencyBodyAccelerometerMeanX            |  mean of fBodyAcc-mean()-X
frequencyBodyAccelerometerMeanY            |  mean of fBodyAcc-mean()-Y
frequencyBodyAccelerometerMeanZ            |  mean of fBodyAcc-mean()-Z
frequencyBodyAccelerometerStdX             |  mean of fBodyAcc-std()-X
frequencyBodyAccelerometerStdY             |  mean of fBodyAcc-std()-Y
frequencyBodyAccelerometerStdZ             |  mean of fBodyAcc-std()-Z
frequencyBodyAccelerometerJerkMeanX        |  mean of fBodyAccJerk-mean()-X
frequencyBodyAccelerometerJerkMeanY        |  mean of fBodyAccJerk-mean()-Y
frequencyBodyAccelerometerJerkMeanZ        |  mean of fBodyAccJerk-mean()-Z
frequencyBodyAccelerometerJerkStdX         |  mean of fBodyAccJerk-std()-X
frequencyBodyAccelerometerJerkStdY         |  mean of fBodyAccJerk-std()-Y
frequencyBodyAccelerometerJerkStdZ         |  mean of fBodyAccJerk-std()-Z
frequencyBodyGyroscopeMeanX                |  mean of fBodyGyro-mean()-X
frequencyBodyGyroscopeMeanY                |  mean of fBodyGyro-mean()-Y
frequencyBodyGyroscopeMeanZ                |  mean of fBodyGyro-mean()-Z
frequencyBodyGyroscopeStdX                 |  mean of fBodyGyro-std()-X
frequencyBodyGyroscopeStdY                 |  mean of fBodyGyro-std()-Y
frequencyBodyGyroscopeStdZ                 |  mean of fBodyGyro-std()-Z
frequencyBodyAccelerometerMagMean          |  mean of fBodyAccMag-mean()
frequencyBodyAccelerometerMagStd           |  mean of fBodyAccMag-std()
frequencyBodyBodyAccelerometerJerkMagMean  |  mean of fBodyBodyAccJerkMag-mean()
frequencyBodyBodyAccelerometerJerkMagStd   |  mean of fBodyBodyAccJerkMag-std()
frequencyBodyBodyGyroscopeMagMean          |  mean of fBodyBodyGyroMag-mean()
frequencyBodyBodyGyroscopeMagStd           |  mean of fBodyBodyGyroMag-std()
frequencyBodyBodyGyroscopeJerkMagMean      |  mean of fBodyBodyGyroJerkMag-mean()
frequencyBodyBodyGyroscopeJerkMagStd       |  mean of fBodyBodyGyroJerkMag-std()


### Transformations with the dataset

1. Import the train and testset, the subjects IDs, and activity codes.

2. Merge train and testsets, with the respective subject IDs and activities, and set the column names of the dataset to the names in features.

3. Subset the dataset, filtering only the columns that matches calculates the mean or standard deviation of the variables. 

4. Dataset was merged with derived feature code lookup table to get activity_labels.

5. Rename the column names to get more human-readable names.

6. Create tidyData dataset, with the average of each variable in the dataset, agreggated by subject_id and activity

7. The dataset is then written to `tidy.txt` file

### Output

#### tidyData2.txt

`tidyData.txt` is a 180x68 data frame.

- The first column contains subject IDs.
- The second column contains activity names.
- The columns 3-68 contain the averages for each of the 66 attributes.


