# Load dplyr package
library(dplyr) 

# Import and read csv file as dataframe
mpg_data <- read.csv('MechaCar_mpg.csv') 

# Generate multiple linear regression model
lm(mpg ~  vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_data) 

# Generate summary statistics
summary(lm(mpg ~  vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_data)) 

# Import and read csv file as table
suspension_coil_data <- read.csv('Suspension_Coil.csv') 

# Create total_summary dataframe using summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column
total_summary = summarise(suspension_coil_data, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Create lot_summary dataframe using group_by() and summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column
lot_summary = suspension_coil_data %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
