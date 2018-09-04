***
This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see https://www.gnu.org/licenses/.
***

**Author**: Lucius Hu

**Description**: This is a part of course project for Getting and Cleaning Data online course. For more information, see 
             https://www.coursera.org/learn/data-cleaning/home/welcome>.
             
It performs the following operations by calling corresponding r scripts:

0. Sets up string constant used later by other scripts. (initialisation.R)
1. Merges the training and the test sets to create one data set. (data_import.R)
2. Extracts only the measurements on the mean and standard deviation for each measurement. (data_cleaning.R)
3. Uses descriptive activity names to name the activities in the data set. (renaming_activities.R)
4. Appropriately labels the data set with descriptive variable names. (renaming_variables.R)
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. (getting_average.R)

**Requirement**: You need to install the package "reshape2" and set the working directory correctly before running any scripts.
