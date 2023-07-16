# Shaun Kellogg
# LASER Institute
# July 17, 2023

# PREPARE ####

# Load the {tidyverse} package

library(tidyverse)

# How to install the package if not already installed
# install.packages("tidyverse")
# Note this code is commented out so it will not run

# "read" into your R environment the sci-online-classes.csv file 
# stored in the data folder of your R project and
# save as a new data "object" named sci_data 

sci_data <- read_csv("data/sci-online-classes.csv", 
                     col_names = TRUE)

# print data to console to view
sci_data



# WRANGLE ####

# select student_id and course_id and save as 
sci_data |> 
  select(FinalGradeCEMS, TimeSpent)



# EXPLORE ####

# make a scatter plot showing time spent and final grades
ggplot(sci_data) +
  geom_point(aes(x = TimeSpent, y = FinalGradeCEMS))



# MODEL ####

# use a simple linear regression model to predict final course grades
m1 <- lm(FinalGradeCEMS ~ TimeSpent, data = sci_data)
summary(m1)

