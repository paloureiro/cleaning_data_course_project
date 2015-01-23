| Variable Name            | Definition | Domain | Statistic |
| ----------------------   | :---------:| :----: | :-------: |
| time_BodyAcc_mean_X      |  body acceleration          |   time|mean       |
| time_BodyAcc_mean_Y      |  body acceleration          | time       |mean       |
| time_BodyAcc_mean_Z      |  body acceleration          | time       | mean      |   
| time_GravityAcc_mean_X   |  gravity acceleration         | time       | mean      |  
| time_GravityAcc_mean_Y   |  gravity acceleration          | time       | mean      |
| time_GravityAcc_mean_Z   |  gravity acceleration          |time        | mean      |
| time_BodyAccJerk_mean_X  |  jerk signals          | time       | mean      |
| time_BodyAccJerk_mean_Y  |  jerk signals          |  time      | mean      |
| time_BodyAccJerk_mean_Z  |  jerk signals          |time        | mean      |
| time_BodyGyro_mean_X     |  jerk signals          | time       | mean      |
| time_BodyGyro_mean_Y     |  jerk signals          |  time      | mean      |
| time_BodyGyro_mean_Z     |   jerk signals         |  time      | mean      |
| time_BodyGyroJerk_mean_X |  jerk signals          | time       | mean      |
| time_BodyGyroJerk_mean_Y |  jerk signals          | time       | mean      |           |
| time_BodyGyroJerk_mean_Z |  jerk signals          |  time      |mean       |
| time_BodyAccMag_mean     |  magnitude of body acceleration          |  time      |    mean   |
| time_GravityAccMag_mean  |  magnitude of gravity acceleration          | time       |      mean |
| time_BodyAccJerkMag_mean | magnitude of jerk signals           |  time      |mean           |
| time_BodyGyroMag_mean    | magnitude of jerk signals           | time       |meam           |
| time_BodyGyroJerkMag_mean| magnitude of jerk signals            | time       |mean           |
| freq_BodyAcc_mean_X      |  body acceleration          | frequency       |mean           |
| freq_BodyAcc_mean_Y      |  body acceleration          | frequency       |mean           |
| freq_BodyAcc_mean_Z      |  body acceleration          |  frequency  |  mean         |
| freq_BodyAccJerk_mean_X  | jerk signals           |  frequency      |  mean         |
| freq_BodyAccJerk_mean_Y  | jerk signals           | frequency       |  mean         |
| freq_BodyAccJerk_mean_Z  | jerk signals           |  frequency      |  mean         |
| freq_BodyGyro_mean_X     | jerk signals           |   frequency     |  mean         |
| freq_BodyGyro_mean_Y     | jerk signals           | frequency       |  mean     |
| freq_BodyGyro_mean_Z     | jerk signals           | frequency       |  mean         |
| freq_BodyAccMag_mean     | jerk signals           | frequency       |  mean         |
| freq_BodyAccJerkMag_mean | magnitude of jerk signals           | frequency       |  mean         |
| freq_BodyGyroMag_mean    | magnitude of jerk signals           | frequency       |  mean         |
| freq_BodyGyroJerkMag_mean| magnitude of jerk signals           | frequency       |  mean         |
| time_BodyAcc_std_X       | body acceleration           |   time     |  standard deviation         | 
| time_BodyAcc_std_Y       | body acceleration           | time       |    standard deviation       |
| time_BodyAcc_std_Z       | body acceleration           | time       |    standard deviation       |
| time_GravityAcc_std_X    | gravity acceleration           | time       |           standard deviation|
| time_GravityAcc_std_Y    | gravity acceleration           | time       |    standard deviation       |
| time_GravityAcc_std_Z    | gravity acceleration           | time       |    standard deviation       |
| time_BodyAccJerk_std_X   | jerk signals           | time       |      standard deviation     |
| time_BodyAccJerk_std_Y   | jerk signals           | time       |  standard deviation         |
| time_BodyAccJerk_std_Z   | jerk signals           | time       |standard deviation           |
| time_BodyGyro_std_X      | jerk signals           | time       |standard deviation           |
| time_BodyGyro_std_Y      | jerk signals           | time       |standard deviation           |
| time_BodyGyro_std_Z      | jerk signals            | time       |standard deviation           |
| time_BodyGyroJerk_std_X  | jerk signals           | time       |standard deviation           |
| time_BodyGyroJerk_std_Y  | jerk signals           | time       |  standard deviation         |
| time_BodyGyroJerk_std_Z  | jerk signals           | time       |standard deviation           |
| time_BodyAccMag_std      |  magnitude of body acceleration          | time       |standard deviation           |
| time_GravityAccMag_std   |  magnitude of gravity acceleration          | time       |standard deviation           |
| time_BodyAccJerkMag_std  |   magnitude of jerk signals          | time       |standard deviation           | 
| time_BodyGyroMag_std     |    magnitude of jerk signals         | time       |standard deviation           |
| time_BodyGyroJerkMag_std |  magnitude of jerk signals           | time       |standard deviation           |  
| freq_BodyAcc_std_X       |  body acceleration          | frequency       |standard deviation           |
| freq_BodyAcc_std_Y       |  body acceleration          | frequency       |standard deviation           |
| freq_BodyAcc_std_Z       | body acceleration           | frequency       |standard deviation           |
| freq_BodyAccJerk_std_X   |  jerk signals          | frequency       |standard deviation           |
| freq_BodyAccJerk_std_Y   |  jerk signals          | frequency       |standard deviation           |
| freq_BodyAccJerk_std_Z   |  jerk signals          | frequency       |standard deviation           |
| freq_BodyGyro_std_X      |  jerk signals          | frequency       |standard deviation           |
| freq_BodyGyro_std_Y      | jerk signals           | frequency       |standard deviation           |
| freq_BodyGyro_std_Z      | jerk signals           | frequency       |standard deviation           |
| freq_BodyAccMag_std      | magnitude of body acceleration           | frequency       |standard deviation           | 
| freq_BodyAccJerkMag_std  | magnitude of jerk signals           | frequency       |standard deviation           |
| freq_BodyGyroMag_std     | magnitude of jerk signals           | frequency       |standard deviation           |
| freq_BodyGyroJerkMag_std | magnitude of jerk signals           | frequency       |standard deviation           |

Notes:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals (prefix 'time') were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (time_BodyAcc_XYZ and time_GravityAcc_XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (time_BodyAccJerk_XYZ and time_BodyGyroJerk_XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (time_BodyAccMag, time_GravityAccMag, time_BodyAccJerkMag, time_BodyGyroMag, time_BodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing freq_BodyAcc_XYZ, freq_BodyAccJerk_XYZ, freq_BodyGyro_XYZ, freq_BodyAccJerkMag, freq_BodyGyroMag, freq_BodyGyroJerkMag.  
