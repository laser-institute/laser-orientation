# WORKING WITH DATA ################

## 1. Tibbles ######################

#' Load the tidyverse package.

library(tidyverse)

#' Run the following code to import the online science classes data
#' we will use this data again for data wrangling. 

sci_classes <- read_csv("unit-0/data/sci-online-classes.csv")

#' Type sci_classes below and run the code. 
#' Examine the contents of sci_classes in your console.
#' Is your object a tibble? How do you know?  

sci_classes


### View() function ################

#' Now use the View() function to take a look at your data. 

View(sci_classes)


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

student_grades <- select(sci_classes,
                         student_id,
                         subject,
                         semester,
                         FinalGradeCEMS)

student_grades

#' Select all columns except subject and section.
#' Assign to a new object with a different name.
#' Examine your data frame. 

new_object <- select(sci_classes,
                     -c(subject, section))

new_object


#' Select only the columns that start with Time.
#' Assign to a new object.
#' Use the View() function to examine your data frame. 

time <- select(sci_classes, starts_with("Time"))

View(time)


###  filter() function ###############

#' Filter the sci_classes data frame for just males. 
#' Assign to a new object.
#' Use the head() function to examine your data frame. 

male_students <- filter(sci_classes, Gender == "M")
head(male_students)


#' Filter the sci_classes data frame for students whose
#' percentage_earned is greater than 0.8
#' Assign to a new object.
#' Use the tail() function to examine your data frame. 

bio_stars <- filter(sci_classes, percentage_earned >= 0.8 & subject == "BioA")

tail(bio_stars)


#' Filter the sci_classes data frame so rows with 
#' NA for points earned are removed.
#' Assign to a new object.
#' Use the glimpse() function to examine your data frame.

complete_points <- filter(sci_classes, !is.na(Points_Earned))

glimpse(complete_points)


#' Filter the sci_classes data for the following subjects:
#' BioA
#' PhysA
#' OcnA
#' Assign to a new object with a different name.
#' Use the summary() function to examine your data frame.

my_classes <- filter(sci_classes, subject %in% c("BioA", "PhysA", "OcnA"))

summary(my_classes)

###  arrange() function ###############

#' Arrange sci_classes by subject subject then 
#' percentage_earned in descending order.
#' Assign to a new object.
#' Use the str() function to examine your data frame.

ordered_classes <- arrange(sci_classes, 
                           subject, 
                           desc(percentage_earned))

str(ordered_classes)




### %>% operator ####

#' Using sci_classes data and the %>% pipe operator: 
#' Select subject, section, time spent in hours 
#' and final course grade. 
#' Filter for students in OcnA courses with grades
#' greater than or equal to 60.
#' Arrange grades by section in descending order. 
#' Assign to a new object. 
#' Examine the contents using a method of your choosing. 

my_data <- sci_classes %>%
  select(subject, section, TimeSpent_hours, FinalGradeCEMS) %>%
  filter(subject == "OcnA" & FinalGradeCEMS >= 60) %>%
  arrange(section, FinalGradeCEMS)

view(my_data)




## 3. Deriving info with dplyr ########

### summarise() ######################

#' Using sci_classes data and the summarise() function:
#' Get to get a distinct count of course ids. 

sci_classes %>% summarise(courses = n_distinct(course_id))
  


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


gender_stats <- sci_classes %>%
  filter(!is.na(FinalGradeCEMS)) %>%
  group_by(subject, Gender) %>%
  summarise(total = sum(student_id),
            grade = mean(FinalGradeCEMS), 
            time = mean(TimeSpent_hours)
            )


gender_stats




### mutate() ######################

#' Replace the dashed lines in the following code to: 
#' Create a new variable called score that is the 
#' product of percentage earned and 100.
#' Create a faceted scatter plot with 
#' hours spent in the course on the x axis, 
#' score on the y axis and
#' points colored by gender. 


sci_classes %>%
  mutate(score = percentage_earned * 100) %>%
  ggplot() +
  geom_point(mapping = aes(x = TimeSpent_hours,
                           y = score,
                           color = Gender,
                           alpha = .5)) +
  facet_wrap(~subject)

sci_classes %>%
  mutate(score = percentage_earned * 100) %>%
  ggplot(mapping = aes(y = score, 
                       x = TimeSpent_hours,
                       color = Gender),
         alpha = .5) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  facet_wrap(~subject)

sci_classes %>%
  mutate(score = percentage_earned * 100) %>%
  ggplot(mapping = aes(y = score, 
                       x = TimeSpent_hours,
                       color = Gender)) +
  geom_point() +
  geom_smooth(method="lm", se = FALSE) + 
  facet_wrap(~subject)
