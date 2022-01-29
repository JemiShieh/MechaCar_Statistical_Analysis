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

# Use t.test() function to determine if PSI across all manufacturing lots is statistically different from population mean of 1,500 pounds per square inch
t.test(suspension_coil_data$PSI, mu=1500) #compare sample versus population mean

# Use t.test() function and its subset() argument to determine if PSI for each manufacturing lot is statistically different from population mean of 1,500 pounds per square inch
t.test(subset(suspension_coil_data$PSI, suspension_coil_data$Manufacturing_Lot=="Lot1"), mu=1500) #compare sample versus population mean
t.test(subset(suspension_coil_data$PSI, suspension_coil_data$Manufacturing_Lot=="Lot2"), mu=1500) #compare sample versus population mean
t.test(subset(suspension_coil_data$PSI, suspension_coil_data$Manufacturing_Lot=="Lot3"), mu=1500) #compare sample versus population mean
