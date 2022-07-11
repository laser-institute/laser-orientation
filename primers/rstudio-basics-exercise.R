# THE BASICS #######################

## 1. Programming Basics ###########

### a. Functions ###################

#' In the space below, use the round() function to 
#' round 3.14 to the nearest whole number.
#' Run your code to see the result. 




### b. Arguments ###################

#### args() function ###############

#' Take a look at the arguments for the round() function. 




#' Add an argument to the round() function to 
#' round pi to the nearest 2 decimal places. 
#' Remember to add a comma between arguments.




### c. Objects #####################

####  <- Operator ##################

#' Assign a number between 1 and 10 to a new object call my_number.
#' Multiply my_number by 2 and save as my_product. 
#' Type my_product and run to examine the contents. 





### d. Vectors ######################

#### c() function ###################

#' Create a vector that contains the numbers 50-100, 
#' Save as a new object called my_vector. 



#### [] brackets ###################

#' Use brackets to extract the number 99 from your vector.




### e. Data Types ###################

#### typeof() function ##############

#' Create a character vector that contains the names of your four favorite
#' characters from TV or literature and then check to see if your
#' vector is truly a character data type. 




### f. Lists #########################

#### list() function #################

#' Make a list called my_list that contains 
#' a logical, numeric, and character element. 
#' Give each element a name. 
#' Save as a new object called my_list.
#' Examine the contents of your list.   






#### data.frame() function ############

#' Make a data frame that contains columns for
#' name, grade, and gpa for five students.
#' Examine the contents of your data frame.





#### $ operator #######################

#' Extract the student names from your data frame us $. 





### g. Packages #######################

#### install.packages() function ######

#' Rund the following code to 
#' install the tidyverse package. 

install.packages('tidyverse')

#' Now use the library() function to load the tidyverse package into R.



#' Use ? to check the help document for the tidyverse package.   




## 2. Visualization Basics ###########

### a. Import Data ###################

#' Run the following code to use the read_csv() function 
#' to import the online_science_classes.csv file 
#' from our data folder into the R environment. 
#' You will use this data to create a basic visualization.

sci_classes <- read_csv("unit-0/data/sci-online-classes.csv")

#' Use the View() function to take a look at your data. 





### b. A Code Template ################

#'  Make a boxplot using the sci_classes data 
#'  showing TimeSpent_hours on the x axis and 
#'  course subject on the y axis. 





### c. Aesthetic Mappings #############

#'  Make a scatterplot using the sci_classes data 
#'  to examine the relationship between 
#'  TimeSpent_hours (i.e. hours spent online by studnets)
#'  and FinalGradeCEMS (i.e final course grade).
#'  Map color to course subject.
#'  Set the alpha (transparency) to 0.5.   

