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
# Description: This script is called by run_analysis.R and calculates the 
#              average of every variable by activities and subjects.
# 
#              This is a part of course project for Getting and Cleaning Data
#              online course. For more information, see 
#              https://www.coursera.org/learn/data-cleaning/home/welcome>.
# Packages: reshape2
#############################################################################

library(reshape2)

# Credit to https://github.com/bgentry/
#           coursera-getting-and-cleaning-data-project/
#           blob/master/run_analysis.R
dataMelted <- reshape2::melt(extractedData, id = c("Subject", "Activity"))
dataTidy <- reshape2::dcast(dataMelted, Subject + Activity ~ variable, mean)
write.table(dataTidy, "data_tidy.txt", row.names = FALSE, quote = FALSE)

rm(dataMelted, dataTidy, extractedData)

# EOF