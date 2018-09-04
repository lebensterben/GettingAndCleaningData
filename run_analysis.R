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
# Description: This is a part of course project for Getting and Cleaning Data
#              online course. For more information, see 
#              https://www.coursera.org/learn/data-cleaning/home/welcome>.
#              It performs the following operations:
#               1. Merges the training and the test sets to create one data set.
#               2. Extracts only the measurements on the mean and standard 
#                  deviation for each measurement.
#               3. Uses descriptive activity names to name the activities in 
#                  the data set
#               4. Appropriately labels the data set with descriptive variable 
#                  names.
#               5. From the data set in step 4, creates a second, independent
#                  tidy data set with the average of each variable for each 
#                  activity and each subject.
# Packages: reshape2
#############################################################################

# Assume all files sourced below are in the current working directory. If not,
# please setwd() manually before running this RScript.

# 0. Initialisation
source("initialisation.R")

# 1. Load and merge data
source("data_import.R")

# 2. Extract only mean and standard deviation
source("data_cleaning.R")

# 3. Rename Activity factor variable with friendly names
source("renaming_activities.R")

# 4. Rename variables with descriptive names
source("renaming_variables.R")

# 5. Generate a dataset with average of each varialbe by activity and subject
source("getting_average.R")

# EOF