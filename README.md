#Readme#

###(c) Dmytro Goriunov###

This is readme file for Course Project of Getting and Cleaning Data course.

The task was to make tidy dataset according to instructions. In order to implement the task a simple R script was written. It is available at the GitHub repository here <https://github.com/Sultan2015/GetttingAndCleaningData/blob/master/run_analysis.R>. It performs the following steps:

- [x] 1. Merges the training and the test sets to create one data set.
  - [x] Reads measurement datasets. *(1)*
  - [x] Reads activity tables.
  - [x] Reads subject tables.
  - [x] Merges datasets.
- [x] 2. Extracts only the measurements on the mean and standard deviation for each measurement.
  - [x] Reads and cleaning variable list.
  - [x] Renames variables in main dataset.
  - [x] Finds variables for means and standard deviations.
  - [x] Drops derivatives (mean frequencies and angles). *(2)*
  - [x] Subsets dataset, leaving only variables of interest.
- [x] 3. Uses descriptive activity names to name the activities in the data set.
  - [x] Reads activity codes.
  - [x] Changes values for the activity variable.
- [x] 4. Appropriately labels the data set with descriptive variable names.
  - [x] Converts abbreviations to full words. *(3)*
  - [x] Clears characters that are not allowed.
  - [x] Converts names to CamelCase.
- [x] 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  - [x] Calculates means.
  - [x] Writes the resulting dataset in a separate text file.

*1) It is assumed that relevant data directory exists in the working directory, so no filesystem error proofing procedures were introduced. Data from "Inertial Signals" subfolders were not taken into account since they do not contain required means and standard deviations.*

*2) Please refer to Codebook for full list of variables and motivations behind choice decisions.*

*3) The only exception is the standard deviation, since the acronym is widely used among statisticians. Furthermore, using full phrase would make names of variables even more cumbersome.*