
#################################################################
#Part B: Create a happy customer variable 

#2.	To focus on predicting happy customers, we need to generate a new column (where overallCustSat is 8 or higher).

source(‘methods’)
data[data$overallCustSat >=8, "overall_satisfaction_greater_8"] <- TRUE              # Create new column overall_satisfaction_greater_8 with values TRUE for overallCustSat>=8
data[data$overallCustSat < 8, "overall_satisfaction_greater_8"] <- FALSE             # Create new column overall_satisfaction_greater_8 with values FALSE for overallCustSat<8
data$overall_satisfaction_greater_8 <- as.factor(data$overall_satisfaction_greater_8)
data_clean <- data[, c("hotelFriendly", "checkInSat", "lengthOfStay", "hotelClean", "guestAge", "hotelSize", "whenBookedTrip", "overall_satisfaction_greater_8")]            # Only the required attributes and columns are selected 

#for prediction by creating a subset and assigning it to a new data frame

table(data_clean$overall_satisfaction_greater_8)                                     # table function is used to get a count of total cutomers who are satisfied(TRUE) and not satisfied(FALSE)

str(data_clean)                                                                      # str function is used to get the resulting structure of the new data frame data_clean
plot(data_clean)                                                                     # plot function is used on the data _clean data frame to get an idea of which variables are related and identify relations for prediction and analysis
plot(data_clean$hotelFriendly, data_clean$guestAge, col = data_clean$overall_satisfaction_greater_8)
plot(data_clean$hotelSize, data_clean$whenBookedTrip, col = data_clean$overall_satisfaction_greater_8)

