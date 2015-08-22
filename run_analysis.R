
# 1. Read files
train_data <- read.table("train/X_train.txt", header = FALSE)
train_activity <- read.table("train/y_train.txt", header = FALSE)
train_subject <- read.table("train/subject_train.txt", header = FALSE)

test_data <- read.table("test/X_test.txt", header = FALSE)
test_activity <- read.table("test/y_test.txt", header = FALSE)
test_subject <- read.table("test/subject_test.txt", header = FALSE)

labels <- read.table("activity_labels.txt", header = FALSE)
columns_name <- read.table("features.txt", header = FALSE)

# 2. To merge informations into one file
data <- rbind(train_data, test_data)
activity <- rbind(train_activity, test_activity)
subject <- rbind(train_subject, test_subject)

# 3. Giving names to the columns
names(subject) <- c("Subject")
names(activity) <- c("Activity")
columns_name <- as.vector(columns_name[, 2])
colnames(data) <- c(columns_name)

# 4. For the activity data set, translate the number acording to the activity_label.txt file
activity [, 1] <- labels[activity[, 1], 2]

# 5. Merging into one dataset
merge_temp <- cbind(activity, data)
merge <- cbind(subject, merge_temp)

# 6. Cleaning up some variables
rm(labels)
rm(merge_temp)
rm(test_activity)
rm(test_data)
rm(test_subject)
rm(train_activity)
rm(train_subject)
rm(train_data)
rm(subject)
rm(data)
rm(columns_name)
rm(activity)

# 7. Select just columns that contains mean and std
tidy <- select(merge[,], contains("mean"), contains("std"), contains("Activity"), contains("Subject"))
rm(merge)

# 8. Calculating 

avg <- tidy %>% 
       group_by(Subject, Activity) %>% 
       summarise_each(funs(mean))
write.table(avg, file="avg.txt", row.name=FALSE)







