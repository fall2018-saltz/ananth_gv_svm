
###################################################################

#Part D: Predict Values in the Test Data and Create a Confusion Matrix
# 8.	Use the predict( ) function to validate the model against test data. Assuming that you put the output from the ksvm( ) call into svmOutput and that your test data set is in a data frame called testData, the call would be:
#   svmPred <- predict(svmOutput, testData, type = "votes")
# 9.	Now the svmPred object contains a list of votes in each of its rows. The votes are either for “happy” or “notHappy”. Review the contents of svmPred using str( ) and head( ).
# 10.	Create a confusion matrix (a 2 x 2 table) that compares the second row of svmPred to the contents of testData$happy variable.
# 11.	Calculate an error rate based on what you see in the confusion matrix. See pages 243-244 for more information

library(kernlab)
svmPred1 <- predict(kernfit, testData, type="votes")    # predict the test data on top of trained model using predict function. votes are for TRUE or FALSE(Happy Not Happy)
str(svmPred1)                                           # str function is used to get the structure of the prediction
confusionMatrix1 <- table(svmPred1[1,],testData$overall_satisfaction_greater_8)  # confusion matrix is created confusion matrix (a 2 x 2 table) that compares the second row of svmPred to the contents of testData$happy variable.
confusionMatrix1
# error rate
rate1 <- (confusionMatrix1[1,1]+confusionMatrix1[2,2])/sum(confusionMatrix1)
rate1 
#0.09538092
# the error rate is considerably low, which indicates that our model performed well taking into consideration many attributes like - 
# "hotelFriendly", "checkInSat", "lengthOfStay", "hotelClean", "guestAge", "hotelSize", "whenBookedTrip"
