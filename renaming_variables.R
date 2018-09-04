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
# Description: This script is called by run_analysis.R and it renames all 
#              variables with descriptive names.
# 
#              This is a part of course project for Getting and Cleaning Data
#              online course. For more information, see 
#              https://www.coursera.org/learn/data-cleaning/home/welcome>.
#############################################################################

# For readability, a dictionary is defined as a list of three sublist
dictDomains <- list(
  "t[[:upper:]]" = "", # Time domain indicator, no renaming needed
  "f[[:alpha:]]" = "(Frequency Representation)", # Frequency domain indicator
  "Activity" = "Activity", # Last two entries are created for compatibility
  "Subject" = "Subject"
)
dictTypes <- list(
  "BodyBody|Body" = "Body Motion", # There are typoes in some feature names
  Jerk = "Jerk Motion",
  Gravitiy = "Gravitational"
)
dictMeasures <- list(
  Acc = "Acceleration",
  Gyro = "Angular Velocity"
)
dictAxes <- list(
  X = "on X-axis",
  Y = "on Y-axis",
  Z = "on Z-axis",
  Mag = "Magnitude"
)
dictMoments <- list(
  mean = "Mean of",
  std = "Standard Deviation of"
)
dictionaries <- list(
  domains = dictDomains,
  types = dictTypes,
  measures = dictMeasures,
  axes = dictAxes,
  moments = dictMoments
)

rm(dictDomains, dictTypes, dictMeasures, dictAxes, dictMoments)

# Source the translator function
source("translator.R")

# Call the translator funcion to get translated feature list
kKeyFeatures <- translator(kKeyFeatures, dictionaries, c(5,2,3,4,1))
names(extractedData) <- kKeyFeatures

write.table(extractedData, "key_features.txt", row.names = FALSE, quote = FALSE)

rm(kKeyFeatures, translator, dictionaries)

# EOF