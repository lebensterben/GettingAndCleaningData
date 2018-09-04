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
# Description: This script is called by run_analysis.R and it set up the 
#              environment for the other scripts called by run_analysis.R.
# 
#              This is a part of course project for Getting and Cleaning Data
#              online course. For more information, see 
#              https://www.coursera.org/learn/data-cleaning/home/welcome>.
#############################################################################

# This where the training set and test set are stored
kXTrain <- "./UCI HAR Dataset/train/X_train.txt"
kYTrain <- "./UCI HAR Dataset/train/y_train.txt"
kXTest <- "./UCI HAR Dataset/test/X_test.txt"
kYTest <- "./UCI HAR Dataset/test/y_test.txt"
## Complete list of features are available in "./UCI HAR Dataset/features.txt"
## Descriptions on all features are in "./UCI HAR Dataset/features_info.txt"
kFeatures <- readLines("./UCI HAR Dataset/features.txt")
kFeatures <- sub("[0-9]{1,3} ", "", kFeatures)
## Subject id for training set and testset
kIDTrain <- "./UCI HAR Dataset/train/subject_train.txt"
kIDTest <- "./UCI HAR Dataset/test/subject_test.txt"
## Activity labesl
kActivities <- readLines("./UCI HAR Dataset/activity_labels.txt")
kActivities <-sub("[0-9] ", "", kActivities)

# EOF