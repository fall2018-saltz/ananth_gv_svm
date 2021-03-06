
# Name - Ananth GV                          SUID - 506147067  

# Homework 10 - Submitted by Ananth
# Portions of this code came from Introduction to Data Science
# but the comments are all original.
#################################################################
#Part A: Load and condition the data  

library(kernlab)                                       # load the kernlab library which contains Kernel-based machine learning methods for classification, regression, clustering, novelty detection.
library(jsonlite)                                      # load jsonlite library to perform json read write functions.

#1.	The data is available on blackboard (hotelSurveyBarriot), as a JSON file.

#setwd("D:/Workspace Syracuse/Intro to Data Science")   # setwd is used to set the working directory where the working json file can be found.                                                        # json lite library is loaded to perform json operations.
data <- data.frame(fromJSON("hotelSurveySherison.json"))      # data.frame function is used to convert the output of json read to a data frame.
