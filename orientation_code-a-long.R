

# CODE- ALONG #######################

## 1. Programming Basics ###########


#####################
### a. Functions ####
#####################

mean()
max()
filter()
class()

round(3.14)
#' In the space below, use the round() function to 
#' round 3.14 to the nearest whole number.
#' Run your code to see the result. 

round(3.14)

######################
### b. Arguments #####
######################

#### args() function ###############

?mean()
?class()

#' Take a look at the arguments for the round() function. 

?round()


#' Add an argument to the round() function to 
#' round pi to the nearest 1 decimal places. 
#' Remember to add a comma between arguments.


round(3.14, digits = 1)

#######################
### c. Objects ########
#######################

twenty <-20
twenty
thirty <- 20
thirty
forty <- 20
forty
new_data <- 20
new_data
13 <- 20 *4
13
x <- 20 *4

# Don't ever have names like TRUE/FALSE or NaN, inf, NA

####  <- Operator ##################




#' Assign a number between 1 and 10 to a new object call my_number.
#' Multiply my_number by 2 and save as my_product. 
#' Type my_product and run to examine the contents. 

my_number <- 5
my_product <- my_number * 2

my_product

########Other operators 

#get from lab 0 in LA

#####################
### d. Packages #####
#####################

#### install.packages() function ######

install.packages("tidyverse")

library(tidyverse)
?tidyverse

#' Run the following code to 
#' install the readr package. 



#did it work? Maybe you need to install first. You can also check if you package is loaded in the package pane.

#' Now use the library() function to load the readr package into R.
library(readr)

#' Use ? to check the help document for the readr package.
