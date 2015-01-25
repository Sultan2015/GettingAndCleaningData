run<-function(){

    # checking and loading additional packages    
    
    dplyr_path<-find.package("dplyr")
    is_dplyr<-match("there is no package", dplyr_path)
    if (!is.na(is_dplyr)) {install.packages(dplyr)}
    library(dplyr)
    
# 1. Merges the training and the test sets to create one data set.
# ----------------------------------------------------------------

    message("Reading data...")
    t1<-Sys.time()

    # reading measurement datasets
    
    x_train<-read.table(".\\UCI HAR Dataset\\train\\X_train.txt")
    x_test<-read.table(".\\UCI HAR Dataset\\test\\X_test.txt")

    # reading activity tables

    y_train<-read.table(".\\UCI HAR Dataset\\train\\y_train.txt", stringsAsFactors=FALSE)
    y_test<-read.table(".\\UCI HAR Dataset\\test\\y_test.txt", stringsAsFactors=FALSE)

    # reading subject tables

    subject_train<-read.table(".\\UCI HAR Dataset\\train\\subject_train.txt", stringsAsFactors=FALSE)
    subject_test<-read.table(".\\UCI HAR Dataset\\test\\subject_test.txt", stringsAsFactors=FALSE)

    # merging datasets

    train<-cbind(x_train, y_train, subject_train)
    test<-cbind(x_test, y_test, subject_test)
    dataset<-rbind(train, test)

    # simple progress message
    
    t2<-Sys.time()
    time_diff<-t2-t1
    time_diff<-gsub("Time difference of ", "", time_diff)
    message(paste("Done in", round(as.numeric(time_diff), 3), "seconds."))
    

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# ------------------------------------------------------------------------------------------

    message("Processing data...")

    # reading and cleaning variable list

    features<-read.table(".\\UCI HAR Dataset\\features.txt", stringsAsFactors=FALSE)
    features<-gsub("\\-|\\(|\\)|\\,", "_", features[, 2])
    
    # renaming variables in main dataset

    header<-c(features, "Activity", "Subject")
    names(dataset)<-header

    # finding variables for means and standard deviations

    mean_match<-grep("mean", features, ignore.case=TRUE)
    std_match<-grep("std", features, ignore.case=TRUE)
    index<-c(mean_match, std_match, c(562:563))
    
    # dropping derivatives

    meanfreq_match<-grep("meanfreq", features, ignore.case=TRUE)
    angle_match<-grep("angle", features, ignore.case=TRUE)
    dropped<-c(meanfreq_match, angle_match)
    index<-setdiff(index, dropped)        

    # sorting the index
    
    index<-sort(index)
    
    # subsetting dataset, leaving only variables of interest

    header_new<-header[index]
    dataset2<-dataset[, header_new]


# 3. Uses descriptive activity names to name the activities in the data set.
# --------------------------------------------------------------------------

    # reading activity codes

    activities<-read.table(".\\UCI HAR Dataset\\activity_labels.txt", stringsAsFactors=FALSE)
    
    # changing values for the acivity variable    

    for (i in 1:6)
    {
        dataset2$Activity[dataset2$Activity==i]<-activities[i, 2]
    }
    dataset2$Activity<-factor(dataset2$Activity)


# 4. Appropriately labels the data set with descriptive variable names.
# ---------------------------------------------------------------------

    header_long<-gsub("^t", "Time", header_new)
    header_long<-gsub("^f", "Frequency", header_long)
    header_long<-gsub("Acc", "Accelerometer", header_long)
    header_long<-gsub("Mag", "Magnitude", header_long)
    header_long<-gsub("mean", "Mean", header_long)
    header_long<-gsub("std", "Std", header_long)
    header_long<-gsub("BodyBody", "Body", header_long)
    header_long<-gsub("_", "", header_long)
    names(dataset2)<-header_long


# 5. From the data set in step 4, creates a second, independent tidy data set 
#    with the average of each variable for each activity and each subject.
# ---------------------------------------------------------------------------

    dataset3<-summarise_each(group_by(dataset2, Activity, Subject, add=TRUE), funs(mean))
    write.table(dataset3, "analysis.txt", row.name=FALSE)
    
    # simple progress message

    t3<-Sys.time()
    time_diff<-t3-t2
    time_diff<-gsub("Time difference of ", "", time_diff)
    message(paste("Done in", round(as.numeric(time_diff), 3), "seconds."))
    
    # returning dataset

    return(dataset3)

}