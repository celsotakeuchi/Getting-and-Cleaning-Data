#Getting and Cleaning Data project - Code Book#

###Analysis Process###

1. Understanding the data and putting informations into a single file
Read informations from the X_test.txt and X_train.txt files and then merge them.
Read informations from y_test.txt and t_train.txt files and then merge them.
Read informations from subject_test.txt and merge them.

2. Putting columns names
Put appropriate names into the subject column, activity column.
Put the informations from feature.s.txt as columns names of the training data 

3. Substituting codes to names
Activities informations are coded. It was needed to substitute the numbers according to the activities name provided by the file activity_labels.txt

5. Selecting data to be analysed
Select columns names with "Mean", "Std", "Activity" and "Subject"

6. Analyse the extracted data
By subject and activity, the code creates a mean of all variables and stores the information into the file avg.txt

7. Create an output file

###Columns output file###

Subject - the participant's identification
Activity - the 6 activities used in the experiment. To further information, please see the file activity_labels.txt into the data experiment.

The output file of the code has mean of each participant(subject) in each activity in the following measurements:
"Subject"                              
"Activity"                            
"tBodyAcc-mean()-X"                    
"tBodyAcc-mean()-Y"                   
"tBodyAcc-mean()-Z"                    
"tGravityAcc-mean()-X"                
"tGravityAcc-mean()-Y"                 
"tGravityAcc-mean()-Z"                
"tBodyAccJerk-mean()-X"                
"tBodyAccJerk-mean()-Y"               
"tBodyAccJerk-mean()-Z"                
"tBodyGyro-mean()-X"                  
"tBodyGyro-mean()-Y"                   
"tBodyGyro-mean()-Z"                  
"tBodyGyroJerk-mean()-X"               
"tBodyGyroJerk-mean()-Y"              
"tBodyGyroJerk-mean()-Z"               
"tBodyAccMag-mean()"                  
"tGravityAccMag-mean()"                
"tBodyAccJerkMag-mean()"              
"tBodyGyroMag-mean()"                  
"tBodyGyroJerkMag-mean()"             
"fBodyAcc-mean()-X"                    
"fBodyAcc-mean()-Y"                   
"fBodyAcc-mean()-Z"                    
"fBodyAcc-meanFreq()-X"               
"fBodyAcc-meanFreq()-Y"                
"fBodyAcc-meanFreq()-Z"               
"fBodyAccJerk-mean()-X"                
"fBodyAccJerk-mean()-Y"               
"fBodyAccJerk-mean()-Z"                
"fBodyAccJerk-meanFreq()-X"           
"fBodyAccJerk-meanFreq()-Y"           
"fBodyAccJerk-meanFreq()-Z"           
"fBodyGyro-mean()-X"                   
"fBodyGyro-mean()-Y"                  
"fBodyGyro-mean()-Z"                  
"fBodyGyro-meanFreq()-X"              
"fBodyGyro-meanFreq()-Y"               
"fBodyGyro-meanFreq()-Z"              
"fBodyAccMag-mean()"                   
"fBodyAccMag-meanFreq()"              
"fBodyBodyAccJerkMag-mean()"          
"fBodyBodyAccJerkMag-meanFreq()"      
"fBodyBodyGyroMag-mean()"              
"fBodyBodyGyroMag-meanFreq()"         
"fBodyBodyGyroJerkMag-mean()"          
"fBodyBodyGyroJerkMag-meanFreq()"     
"angle(tBodyAccMean,gravity)"         
"angle(tBodyAccJerkMean),gravityMean)"
"angle(tBodyGyroMean,gravityMean)"     
"angle(tBodyGyroJerkMean,gravityMean)"
"angle(X,gravityMean)"                 
"angle(Y,gravityMean)"                
"angle(Z,gravityMean)"                
 "tBodyAcc-std()-X"                    
"tBodyAcc-std()-Y"                     
"tBodyAcc-std()-Z"                    
"tGravityAcc-std()-X"                  
"tGravityAcc-std()-Y"                 
"tGravityAcc-std()-Z"                  
"tBodyAccJerk-std()-X"                
"tBodyAccJerk-std()-Y"                 
"tBodyAccJerk-std()-Z"                
"tBodyGyro-std()-X"                   
"tBodyGyro-std()-Y"                   
"tBodyGyro-std()-Z"                    
"tBodyGyroJerk-std()-X"               
"tBodyGyroJerk-std()-Y"               
 "tBodyGyroJerk-std()-Z"               
"tBodyAccMag-std()"                    
"tGravityAccMag-std()"                
"tBodyAccJerkMag-std()"                
"tBodyGyroMag-std()"                  
"tBodyGyroJerkMag-std()"               
"fBodyAcc-std()-X"                    
"fBodyAcc-std()-Y"                     
"fBodyAcc-std()-Z"                    
"fBodyAccJerk-std()-X"                 
"fBodyAccJerk-std()-Y"                
"fBodyAccJerk-std()-Z"                 
"fBodyGyro-std()-X"                   
"fBodyGyro-std()-Y"                    
"fBodyGyro-std()-Z"                   
"fBodyAccMag-std()"                    
"fBodyBodyAccJerkMag-std()"           
"fBodyBodyGyroMag-std()"               
"fBodyBodyGyroJerkMag-std()"


Please find more information into the file features_info.txt