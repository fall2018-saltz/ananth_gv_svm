
###################################################################
#Step D: Build a Model using ksvm( ) 

#5.	Build a support vector model using the ksvm( ) function using two or three of the variables to predict a happy customer. Once you have specified the model statement and the name of 
    #the training data set, you can use the same parameters as shown on page 237: kernel= "rbfdot", kpar = "automatic", C = 5, cross = 3, prob.model = TRUE
#6.	Write a block comment that summarizes what you learned from the book about those parameters. The two parameters of greatest interest are C=5 and cross=3.
#7.	Store the output of kvsm( ) in a variable and then echo that variable to the console

library(kernfit)
kernfit <- ksvm(overall_satisfaction_greater_8 ~., data = trainData, kernel= "rbfdot", kpar = "automatic", C = 5, cross = 3, prob.model = TRUE) # ksvm function is used (kernel support vector machine) to generate the support vectors for classification and prediction 
kernfit

# explanation of function:

# The first argument, " overall_satisfaction_greater_8~.",
# specifies the model we want to test. overall_satisfaction_greater_8 is the dependent variable we wish to predict
# the . represents all independent variables considered in the data frame

# The "data" parameter denotes the data to be used, which is the "train" dataset in this case

# the kernel="rbfdot" refers to radial basis function.
# it takes the set of inputs from each row in a dataset and calculates a
# distance value based on the combination of the many variables in the row. The
# weighting of the different variables in the row is adjusted by the algorithm in order
# to get the maximum separation of distance between the happy and sad customer cases

# The "kpar" argument refers to a variety of parameters that can be used to
# control the operation of the radial basis function kernel. it can either have a specific number or 
# be "automatic"

# The C parameter tells the SVM optimization how much you want to avoid misclassifying each training example.
# For large values of C, the optimization will choose a smaller-margin hyperplane if that hyperplane 
# does a better job of getting all the training points classified correctly. Conversely, a very small value 
# of C will cause the optimizer to look for a larger-margin separating hyperplane, 
# even if that hyperplane misclassifies more points. For very tiny values of C, 
# you should get misclassified examples, often even if your training data is linearly separable.



