# WORKING WITH DATA ################

## 1. Tibbles ######################

#' Load the tidyverse package.





#' Run the following code to import the online science classes data.

sci_classes <- read_csv("unit-0/data/sci-online-classes.csv")

#' Type sci_classes below and run the code. 
#' Examine the contents of sci_classes in your console.
#' Is your object a tibble? How do you know? 
#' Hint: Check the output in the console.   




### View() function ################

#' Now use the View() function to take a look at your data. 




## 2. Isolating Data with dplyr ####

### select() function ####

#' Select the following columns from the sci_classes:
#' student_id 
#' subject
#' semester
#' FinalGradeCEMS 
#' Assign to a new object with a different name.
#' Examine student_grades.
#' Do you see any missing grades?    







#' Select all columns except subject and section.
#' Assign to a new object with a different name.
#' Examine your data frame. 







#' Select only the columns that start with Time.
#' Assign to a new object.
#' Use the View() function again to examine your data frame. 






###  filter() function ###############

#' Filter the sci_classes data frame for just males. 
#' Assign to a new object.
#' Use the head() function to examine your data frame. 
#' How many rows does the head() function display?
#' Hint: Check the dimensions of your tibble in the console. 







#' Filter the sci_classes data frame for students whose
#' percentage_earned is greater than 0.8
#' Assign to a new object.
#' Use the tail() function to examine the 
#' last 6 rows of your data frame. 






#' Filter the sci_classes data frame so rows with 
#' NA for points earned are removed.
#' Assign to a new object.
#' Use glimpse() to examine all columns of your data frame.





#' Filter the sci_classes data for the following subjects:
#' BioA
#' PhysA
#' OcnA
#' Assign to a new object with a different name.
#' Use the summary() function to examine key stats
#' for numeric values in your data frame.







###  arrange() function ###############

#' Arrange sci_classes by subject subject then 
#' percentage_earned in descending order.
#' Assign to a new object.
#' Use the str() function to examine 
#' the data type of each column in your data frame.






### %>% operator ####

#' Using sci_classes data and the %>% pipe operator: 
#' Select subject, section, time spent in hours 
#' and final course grade. 
#' Filter for students in OcnA courses with grades
#' greater than or equal to 60.
#' Arrange grades by section in descending order. 
#' Assign to a new object. 
#' Examine the contents using a method of your choosing. 







## 3. Deriving info with dplyr ########

### summarise() ######################

#' Using sci_classes data and the summarise() function:
#' Get to get a distinct count of course ids. 

  


### group_by() ######################

#' Using sci_classes data and the %>% pipe operator: 
#' Filter final grades to remove NAs. 
#' Group your data by subject and gender. 
#' Summarise your data to calculate the following stats:
#' Total number of students. 
#' Mean final grade. 
#' Mean time spent in the course.  
#' Assign to a new object. 
#' Examine the contents using a method of your choosing. 







### mutate() ######################

#' Replace the underscores in the following code to: 
#' Create a new variable called score that is the 
#' product of percentage earned and 100.
#' Create a faceted scatter plot with 
#' hours spent in the course on the x axis, 
#' score on the y axis and
#' points colored by gender. 


sci_classes %>%
  mutate(______ = _______ * ______) %>%
  ggplot() +
  geom_point(______ = ____(_ = __________,
                           _ = __________,
                           ______ = _______,
                           ______ = ____)) +
  facet_wrap(~subject)
