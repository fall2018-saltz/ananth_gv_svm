
#################################################################
#Part C: Create training and test data sets

# 1) The training data should contain about two thirds of the whole data set, 
#    with the remaining one third going to the test data.
# 2) Use the dim( ) function to demonstrate that the resulting training data set 
#    and test data set contain the appropriate number of cases.

rand_index <- sample(1:dim(data_clean)[1])            # Sample function is used to generate a random indices with dimensionality 1: length of data_clean data frame.
summary(rand_index)                                   # summary fucntion is used to display the mean, median, 95th percentile and other statistical measures on the rand_index
length(rand_index)                                    # length displays the length of rand index list
head(rand_index)                                      # head function is used to display first few random elements of the list

cutPoint2_3 <- floor(2 * dim(data_clean)[1]/3)        # floor function is used to return largest integer value which is not greater than (less than) or equal to an individual number. The computation is used to the exact index number which corresponds to 2/3 of the data set.
trainData <- data_clean[rand_index[1:cutPoint2_3],]   # train data set is generated from the data clean data frame with rand_index list as index and from 1: 2/3 cutPoint2_3 derived from previous step
testData <- data_clean[rand_index[(cutPoint2_3+1):dim(data_clean)[1]],]  # test data set is generated in the similar way but from cutPoint2_3+1 to last element index( dim(data frame)[1]) 

#4.	Use the dim( ) function to demonstrate that the resulting training data set and test data set contain the appropriate number of cases

dim(trainData)                                        # Dim function is used to get the dimension of the resulting test and train data set. It returns the length of data frame and number of columns or attributes
dim(testData)                                         # Dim function is used to get the dimension of the resulting test and train data set. It returns the length of data frame and number of columns or attributes

