#Load 'data.table' library for use of fread
library(data.table)

#Read all raw data files
features <- fread("./UCI HAR Dataset/features.txt")
activity_labels <- fread("./UCI HAR Dataset/activity_labels.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt",header=FALSE,sep="")
y_test <- fread("./UCI HAR Dataset/test/y_test.txt")
subject_test <- fread("./UCI HAR Dataset/test/subject_test.txt")
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt",header=FALSE,sep="")
y_train <- fread("./UCI HAR Dataset/train/y_train.txt")
subject_train <- fread("./UCI HAR Dataset/train/subject_train.txt")

#Remove numbered column
features <- subset(features,select=V2)
#Create empty vector
features_vect <- NULL
#Copy variable names into empty vector
for (i in 1:nrow(features)){
    features_vect <- append(features_vect,features[i],after=length(features_vect))
}

#Remove numbered column
activity_labels <- subset(activity_labels,select=V2)

#Replace activity IDs with activity names
y_test_names <- data.frame()
for (i in 1:nrow(y_test)){
    if (y_test[i]==1){
        y_test_names[i,1] <- activity_labels[1]
    }else if (y_test[i]==2){
        y_test_names[i,1] <- activity_labels[2]
    }else if (y_test[i]==3){
        y_test_names[i,1] <- activity_labels[3]
    }else if (y_test[i]==4){
        y_test_names[i,1] <- activity_labels[4]
    }else if (y_test[i]==5){
        y_test_names[i,1] <- activity_labels[5]
    }else if (y_test[i]==6){
        y_test_names[i,1] <- activity_labels[6]
    }
}

#Replace activity IDs with activity names
y_train_names <- data.frame()
for (i in 1:nrow(y_train)){
    if (y_train[i]==1){
        y_train_names[i,1] <- activity_labels[1]
    }else if (y_train[i]==2){
        y_train_names[i,1] <- activity_labels[2]
    }else if (y_train[i]==3){
        y_train_names[i,1] <- activity_labels[3]
    }else if (y_train[i]==4){
        y_train_names[i,1] <- activity_labels[4]
    }else if (y_train[i]==5){
        y_train_names[i,1] <- activity_labels[5]
    }else if (y_train[i]==6){
        y_train_names[i,1] <- activity_labels[6]
    }
}

#Add variable column names
setnames(subject_test,"V1","subject_ID")
setnames(subject_train,"V1","subject_ID")
names(y_test_names) <- "activity_label"
names(y_train_names) <- "activity_label"
setnames(y_test,"V1","activity_ID")
setnames(y_train,"V1","activity_ID")
names(x_test) <- features_vect
names(x_train) <- features_vect

#Add subject IDs and activity labels to test and train data
x_test <- cbind(x_test,subject_test,y_test_names,y_test)
x_train <- cbind(x_train,subject_train,y_train_names,y_train)
#Merge test and train data sets
total_data <- rbind(x_test,x_train)

#Create list of variable names that are not a mean, standard deviation, 
#subject_ID or activity_label
remove_vars <- NULL
for (i in 1:ncol(total_data)){
    if (grepl("-mean",colnames(total_data)[i],ignore.case=TRUE)== 1 | 
            grepl("-std",colnames(total_data)[i],ignore.case=TRUE)== 1 | 
            grepl("subject_ID",colnames(total_data)[i])== 1 | 
            grepl("activity_label",colnames(total_data)[i])== 1 |
            grepl("activity_ID",colnames(total_data)[i])== 1) {
        #Do Nothing
    }else {
        remove_vars <- append(remove_vars,colnames(total_data)[i],after = length(remove_vars))
    }
}

#Remove data variables/columns that are on list generated
total_data <- total_data[setdiff(names(total_data),remove_vars)]

#Calculate means of data variables by subject_ID and activity_label
groups <- list(total_data[,"subject_ID"],total_data[,"activity_label"])
mean_data <- aggregate(x=total_data[,1:(ncol(total_data)-3)], by=groups, FUN=mean)

#Create descriptive names for first two columns of tidy mean data set
names(mean_data)[1] <- "subject_ID"
names(mean_data)[2] <- "activity_label"

#Output txt file of tidy mean data set to working directory
path <- "./"
write.table(mean_data,file=paste(path,"mean_data.txt",sep=""),row.names=FALSE)