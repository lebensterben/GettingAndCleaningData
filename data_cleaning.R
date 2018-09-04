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
# Description: This script is called by run_analysis.R and it drop all variables
#               except the means and stand deviations.
# 
#              This is a part of course project for Getting and Cleaning Data
#              online course. For more information, see 
#              https://www.coursera.org/learn/data-cleaning/home/welcome>.
#############################################################################

# Get a logical vector matches "mean" or "std" (standard deviation)
kExtracts <- grepl("(mean)|(std)", kFeatures, perl=TRUE)
# Remove unwanted "meanFreq()" variables
kExtracts[grepl("meanFreq", kFeatures, perl=TRUE)] <- FALSE
# Note that the first two variables, Activity, and Features, should be kept
kExtracts[1:2] <- TRUE

# Extract the variable contains mean() and std()
extractedData <- mergedData[, kExtracts]
# Get the list of features for the extracted dataset
kKeyFeatures <- kFeatures[kExtracts]

rm(kExtracts, kFeatures, mergedData)

# EOF