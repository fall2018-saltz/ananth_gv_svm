
####################################################################
# Part F: Find a good prediction
# 12.	Repeat Parts C and D to try and improve your prediction
# 
# 13.	Explain, in a block comment, why it is valuable to have a “test” dataset that is separate from a “training” dataset?

# ksvm function is called with more specific independent variables which help predict customer satisfaction such as hotelClean+whenBookedTrip+checkInSat
kernfit2 <- ksvm(overall_satisfaction_greater_8 ~ hotelClean+whenBookedTrip+checkInSat, data = trainData, kernel= "rbfdot", kpar = "automatic", C = 5, cross = 3, prob.model = TRUE)
kernfit2
svmPred2 <- predict(kernfit2, testData, type="votes")    # # predict the test data on top of trained model using predict function. votes are for TRUE or FALSE(Happy Not Happy)
str(svmPred2)
confusionMatrix2 <- table(svmPred2[1,],testData$overall_satisfaction_greater_8)
confusionMatrix2
# error rate
rate2 <- (confusionMatrix2[1,1]+confusionMatrix2[2,2])/sum(confusionMatrix2)
rate2
# 0.1676665
# the error rate is considerably high , hence we look at other combinations to tune the model and imporve predication.
# error rate: 0.1718182


# ksvm function is called with more specific independent variables which help predict customer satisfaction such as lengthOfStay+hotelFriendly+whenBookedTrip
kernfit3 <- ksvm(overall_satisfaction_greater_8~lengthOfStay+hotelFriendly+whenBookedTrip+guestAge, data=trainData, kernel="rbfdot",kpar="automatic",C=5,cross=3,prob.model=TRUE)
kernfit3
svmPred3 <- predict(kernfit3, testData, type="votes")
str(svmPred3)
confusionMatrix3 <- table(svmPred3[1,],testData$overall_satisfaction_greater_8)
confusionMatrix3
# error rate
rate3 <- (confusionMatrix3[1,1]+confusionMatrix3[2,2])/sum(confusionMatrix3)
rate3
# 0.12177 

# the error rate reduces as you change the variables

# It is better to have a test set and train set because it gives us an opportunity to validate the predicting power of the trained model on a sample of data from the same sample space.
# having 2/3rds of the data set as training set helps in having a major chunk of the distinct data involved in the training model,
# this ensures that prediction model takes into account most of the widspread data to make better predictions.
# Further allowing k-fold validation allows all the data are equally and prominently considered in training.
# running the trained model on 1/3 of the test data ensures the validaity of the predication.

