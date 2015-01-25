#Codebook#

###(c) Dmytro Goriunov###

This document describes the tidy (*1*) dataset that was a result of processing initial dataset according to Getting and Cleaning Dara course project requirements.

The features selected for the initial database came from the accelerometer and gyroscope 3-axial raw signals. Time domain signals were captured at a constant rate of 50 Hz and then filtered. The acceleration signal was then separated into body and gravity acceleration signals. The body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated. Finally, a Fast Fourier Transform (FFT) was applied to some of these signals producing frequency domain signals. These signals were used to estimate various variables of the feature vector for each pattern *(this text is a shortened version of variable description taken from initial source, see 2).*

All measurements were carried out for 30 subjects (split into two groups, but merged by me for the purpose of the task) and for 6 activities (walking, walking upstairs, walking downstairs, sitting, standing and laying). I have introduced separate variables for subject and activity, since they represent additional information about the signals.

According to the assignment instructions, I have kept only mean values and standard deviations. MeanFreq (weighted average of the frequency components to obtain a mean frequency) and angles between vectors were dropped as being even more processed data (and also MeanFreq being alternative stat comparing to mean and std). Final set of variables contains 66 measurements plus activity and subject variables. After that, we took mean of all variables for each combination of subject and activity, which produced new dataset with 180 observations for each variable.

Below one can see description of measurements. Since all measurements are normalized, they are unitless and their values lie within [-1, 1] range. Subject and activity variables were described earlier in the text; therefore, I have not add them to the table. Please note that the table is wider than appears, use scrollbar below to see all variables.

No | Variable                                    | Domain    | Source  | Sensor        | Jerk| Dimension      | Stat | Unit
---|---------------------------------------------|-----------|---------|---------------|-----|----------------|------|---------
1  | TimeBodyAccelerometerMeanX                  | Time      | Body    | Accelerometer | No  | X              | Mean | unitless
2  | TimeBodyAccelerometerMeanY                  | Time      | Body    | Accelerometer | No  | Y              | Mean | unitless
3  | TimeBodyAccelerometerMeanZ                  | Time      | Body    | Accelerometer | No  | Z              | Mean | unitless
4  | TimeBodyAccelerometerStdX                   | Time      | Body    | Accelerometer | No  | X              | Std  | unitless
5  | TimeBodyAccelerometerStdY                   | Time      | Body    | Accelerometer | No  | Y              | Std  | unitless
6  | TimeBodyAccelerometerStdZ                   | Time      | Body    | Accelerometer | No  | Z              | Std  | unitless
7  | TimeGravityAccelerometerMeanX               | Time      | Gravity | Accelerometer | No  | X              | Mean | unitless
8  | TimeGravityAccelerometerMeanY               | Time      | Gravity | Accelerometer | No  | Y              | Mean | unitless
9  | TimeGravityAccelerometerMeanZ               | Time      | Gravity | Accelerometer | No  | Z              | Mean | unitless
10 | TimeGravityAccelerometerStdX                | Time      | Gravity | Accelerometer | No  | X              | Std  | unitless
11 | TimeGravityAccelerometerStdY                | Time      | Gravity | Accelerometer | No  | Y              | Std  | unitless
12 | TimeGravityAccelerometerStdZ                | Time      | Gravity | Accelerometer | No  | Z              | Std  | unitless
13 | TimeBodyAccelerometerJerkMeanX              | Time      | Body    | Accelerometer | Yes | X              | Mean | unitless
14 | TimeBodyAccelerometerJerkMeanY              | Time      | Body    | Accelerometer | Yes | Y              | Mean | unitless
15 | TimeBodyAccelerometerJerkMeanZ              | Time      | Body    | Accelerometer | Yes | Z              | Mean | unitless
16 | TimeBodyAccelerometerJerkStdX               | Time      | Body    | Accelerometer | Yes | X              | Std  | unitless
17 | TimeBodyAccelerometerJerkStdY               | Time      | Body    | Accelerometer | Yes | Y              | Std  | unitless
18 | TimeBodyAccelerometerJerkStdZ               | Time      | Body    | Accelerometer | Yes | Z              | Std  | unitless
19 | TimeBodyGyroscopeMeanX                      | Time      | Body    | Gyroscope     | No  | X              | Mean | unitless
20 | TimeBodyGyroscopeMeanY                      | Time      | Body    | Gyroscope     | No  | Y              | Mean | unitless
21 | TimeBodyGyroscopeMeanZ                      | Time      | Body    | Gyroscope     | No  | Z              | Mean | unitless
22 | TimeBodyGyroscopeStdX                       | Time      | Body    | Gyroscope     | No  | X              | Std  | unitless
23 | TimeBodyGyroscopeStdY                       | Time      | Body    | Gyroscope     | No  | Y              | Std  | unitless
24 | TimeBodyGyroscopeStdZ                       | Time      | Body    | Gyroscope     | No  | Z              | Std  | unitless
25 | TimeBodyGyroscopeJerkMeanX                  | Time      | Body    | Gyroscope     | Yes | X              | Mean | unitless
26 | TimeBodyGyroscopeJerkMeanY                  | Time      | Body    | Gyroscope     | Yes | Y              | Mean | unitless
27 | TimeBodyGyroscopeJerkMeanZ                  | Time      | Body    | Gyroscope     | Yes | Z              | Mean | unitless
28 | TimeBodyGyroscopeJerkStdX                   | Time      | Body    | Gyroscope     | Yes | X              | Std  | unitless
29 | TimeBodyGyroscopeJerkStdY                   | Time      | Body    | Gyroscope     | Yes | Y              | Std  | unitless
30 | TimeBodyGyroscopeJerkStdZ                   | Time      | Body    | Gyroscope     | Yes | Z              | Std  | unitless
31 | TimeBodyAccelerometerMagnitudeMean          | Time      | Body    | Accelerometer | No  | NA (magnitude) | Mean | unitless
32 | TimeBodyAccelerometerMagnitudeStd           | Time      | Body    | Accelerometer | No  | NA (magnitude) | Std  | unitless
33 | TimeGravityAccelerometerMagnitudeMean       | Time      | Gravity | Accelerometer | No  | NA (magnitude) | Mean | unitless
34 | TimeGravityAccelerometerMagnitudeStd        | Time      | Gravity | Accelerometer | No  | NA (magnitude) | Std  | unitless
35 | TimeBodyAccelerometerJerkMagnitudeMean      | Time      | Body    | Accelerometer | Yes | NA (magnitude) | Mean | unitless
36 | TimeBodyAccelerometerJerkMagnitudeStd       | Time      | Body    | Accelerometer | Yes | NA (magnitude) | Std  | unitless
37 | TimeBodyGyroscopeMagnitudeMean              | Time      | Body    | Gyroscope     | No  | NA (magnitude) | Mean | unitless
38 | TimeBodyGyroscopeMagnitudeStd               | Time      | Body    | Gyroscope     | No  | NA (magnitude) | Std  | unitless
39 | TimeBodyGyroscopeJerkMagnitudeMean          | Time      | Body    | Gyroscope     | Yes | NA (magnitude) | Mean | unitless
40 | TimeBodyGyroscopeJerkMagnitudeStd           | Time      | Body    | Gyroscope     | Yes | NA (magnitude) | Std  | unitless
41 | FrequencyBodyAccelerometerMeanX             | Frequency | Body    | Accelerometer | No  | X              | Mean | unitless
42 | FrequencyBodyAccelerometerMeanY             | Frequency | Body    | Accelerometer | No  | Y              | Mean | unitless
43 | FrequencyBodyAccelerometerMeanZ             | Frequency | Body    | Accelerometer | No  | Z              | Mean | unitless
44 | FrequencyBodyAccelerometerStdX              | Frequency | Body    | Accelerometer | No  | X              | Std  | unitless
45 | FrequencyBodyAccelerometerStdY              | Frequency | Body    | Accelerometer | No  | Y              | Std  | unitless
46 | FrequencyBodyAccelerometerStdZ              | Frequency | Body    | Accelerometer | No  | Z              | Std  | unitless
47 | FrequencyBodyAccelerometerJerkMeanX         | Frequency | Body    | Accelerometer | Yes | X              | Mean | unitless
48 | FrequencyBodyAccelerometerJerkMeanY         | Frequency | Body    | Accelerometer | Yes | Y              | Mean | unitless
49 | FrequencyBodyAccelerometerJerkMeanZ         | Frequency | Body    | Accelerometer | Yes | Z              | Mean | unitless
50 | FrequencyBodyAccelerometerJerkStdX          | Frequency | Body    | Accelerometer | Yes | X              | Std  | unitless
51 | FrequencyBodyAccelerometerJerkStdY          | Frequency | Body    | Accelerometer | Yes | Y              | Std  | unitless
52 | FrequencyBodyAccelerometerJerkStdZ          | Frequency | Body    | Accelerometer | Yes | Z              | Std  | unitless
53 | FrequencyBodyGyroscopeMeanX                 | Frequency | Body    | Gyroscope     | No  | X              | Mean | unitless
54 | FrequencyBodyGyroscopeMeanY                 | Frequency | Body    | Gyroscope     | No  | Y              | Mean | unitless
55 | FrequencyBodyGyroscopeMeanZ                 | Frequency | Body    | Gyroscope     | No  | Z              | Mean | unitless
56 | FrequencyBodyGyroscopeStdX                  | Frequency | Body    | Gyroscope     | No  | X              | Std  | unitless
57 | FrequencyBodyGyroscopeStdY                  | Frequency | Body    | Gyroscope     | No  | Y              | Std  | unitless
58 | FrequencyBodyGyroscopeStdZ                  | Frequency | Body    | Gyroscope     | No  | Z              | Std  | unitless
59 | FrequencyBodyAccelerometerMagnitudeMean     | Frequency | Body    | Accelerometer | No  | NA (magnitude) | Mean | unitless
60 | FrequencyBodyAccelerometerMagnitudeStd      | Frequency | Body    | Accelerometer | No  | NA (magnitude) | Std  | unitless
61 | FrequencyBodyAccelerometerJerkMagnitudeMean | Frequency | Body    | Accelerometer | Yes | NA (magnitude) | Mean | unitless
62 | FrequencyBodyAccelerometerJerkMagnitudeStd  | Frequency | Body    | Accelerometer | Yes | NA (magnitude) | Std  | unitless
63 | FrequencyBodyGyroscopeMagnitudeMean         | Frequency | Body    | Gyroscope     | No  | NA (magnitude) | Mean | unitless
64 | FrequencyBodyGyroscopeMagnitudeStd          | Frequency | Body    | Gyroscope     | No  | NA (magnitude) | Std  | unitless
65 | FrequencyBodyGyroscopeJerkMagnitudeMean     | Frequency | Body    | Gyroscope     | Yes | NA (magnitude) | Mean | unitless
66 | FrequencyBodyGyroscopeJerkMagnitudeStd      | Frequency | Body    | Gyroscope     | Yes | NA (magnitude) | Std  | unitless

*(1) Hadley Wickham (RStudio). Tidy Data. Journal of Statistical Software (under review).*

*(2) Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012*