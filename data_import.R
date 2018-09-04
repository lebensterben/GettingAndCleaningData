#############################################################################
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.
#############################################################################
# 
# Author: Lucius Hu
# Description: This script is called by run_analysis.R and it loads the datasets
#              into memory.
# 
#              This is a part of course project for Getting and Cleaning Data
#              online course. For more information, see 
#              https://www.coursera.org/learn/data-cleaning/home/welcome>.
#############################################################################

# Load the classification result, subject id, features of both training set 
# and test set
yTrain <- read.table(kYTrain, colClasses = "factor", col.names = "Activity")
idTrain <- read.table(kIDTrain, colClasses = "factor", col.names = "Subject")
xTrain <- read.table(kXTrain, colClasses = "numeric", col.names = kFeatures)
trainData <- cbind(yTrain, idTrain, xTrain)

yTest <- read.table(kYTest, colClasses = "factor", col.names = "Activity")
idTest <- read.table(kIDTest, colClasses = "factor", col.names = "Subject")
xTest <- read.table(kXTest, colClasses = "numeric", col.names = kFeatures)
testData <- cbind(yTest, idTest, xTest)

# Revise feature Vector to include new variables Activity and Subject
kFeatures <- c("Activity", "Subject", kFeatures)
# Memory recyling
rm(kXTrain, kYTrain, kXTest, kYTest, kIDTrain, kIDTest,
   xTrain, yTrain, idTrain, xTest, yTest, idTest)

# Merge the tables
mergedData <- rbind(trainData, testData)

rm(trainData, testData)

# EOF