# Load dplyr package
library(dplyr) 

# Import and read csv file as dataframe
mpg_data <- read.csv('MechaCar_mpg.csv') 

# Generate multiple linear regression model
lm(mpg ~  vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_data) 

# Generate summary statistics
summary(lm(mpg ~  vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_data)) 
