# THE BASICS #######################

## 1. Programming Basics ###########

### a. Functions ###################

#' In the space below, use the round() function to 
#' round 3.14 to the nearest whole number.
#' Run your code to see the result. 

round(3.14)


### b. Arguments ###################

#### args() function ###############

#' Take a look at the arguments for the round() function. 

args(round)

#' Add an argument to the round() function to 
#' round pi to the nearest 2 decimal places. 
#' Remember to add a comma between arguments.

round(pi, digits = 2)

### c. Objects #####################

####  <- Operator ##################

#' Assign a number between 1 and 10 to a new object call my_number.
#' Multiply my_number by 2 and save as my_product. 
#' Examing the contents of my_product. 

my_number <- 4
my_product <- my_number*2
my_product

### d. Vectors ######################

#### c() function ###################

#' Create a vector that contains the numbers 50-100, 
#' Save as a new object called my_vector., and
#' Extract the number 99 from your vector.

my_vector <- c(50:100)

#### [] brackets ###################
my_vector[50]



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

my_list <- list(character = "Muffins",
                logical = FALSE,
                numeric = 4)
my_list


#### data.frame() function ############

#' Make a data frame that contains columns for
#' name, grade, and gpa for five students.
#' Examine the contents of your data frame.



#### $ operator #######################

#' Extract the student names from your data frame. 





### g. Packages #######################

#### install.packages() function ######

#' Install the tidyverse package. 

install.packages('tidyverse')

#' Now use the library() function to load the tidyverse package into R.

library("tidyverse")

#' 
?tidyverse



## 2. Visualization Basics ###########

### a. Import Data ###################

#' Load the tidyverse package that contains functions to import data files

library(tidyverse)


#' Run the following code to use the read_csv() function 
#' to import the online_science_classes.csv file 
#' fromour data folder into the R environment. 
#' You will use this data to create a basic visualization.

sci_classes <- read_csv("unit-0/data/sci-online-classes.csv")

#' Use the view() function to take a look at your data. 
view(sci_classes)


### b. A Code Template ################

#'  Make a boxplot using the sci_classes data 
#'  showing TimeSpent_hours on the x axis and 
#'  course subject on the y axis. 


ggplot(data = sci_classes) + 
  geom_boxplot(mapping = aes(x = subject, y = TimeSpent_hours))


### c. Aesthetic Mappings #############

#'  Make a scatterplot using the sci_classes data 
#'  to examine the relationship between 
#'  TimeSpent_hours (i.e. hours spent online by studnets)
#'  and FinalGradeCEMS (i.e final course grade).
#'  Map color to course subject.
#'  Set the alpha (transparency) to 0.5.   

ggplot(data = sci_classes) + 
  geom_point(mapping = aes(x = TimeSpent_hours, 
                           y = FinalGradeCEMS,
                           color = subject),
                           alpha = .5)
