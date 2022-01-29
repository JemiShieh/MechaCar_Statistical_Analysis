# MechaCar Statistical Analysis

## MechaCar Statistical Analysis Overview
Use R and RStudio to help Jeremy and the data analytics team review and analyze production data for AutosRUs’ newest prototype, the MechaCar, to glean any insights that may help the manufacturing team overcome production issues that are blocking its progress.

## Linear Regression to Predict MPG
Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.

![Screenshot (54)](https://user-images.githubusercontent.com/92612370/151651756-34e66719-9e6e-4408-8fdb-1fbfa8b44f7c.png)

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset? 
  - vehicle_length and ground_clearance are statistically significant, and to a lesser extent vehicle_weight
* Is the slope of the linear model considered to be zero? Why or why not? 
  - No, because the coefficients are not equal to zero, and they are significant enough relative to the standard error to give confidence that is indeed the case.			
* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? 
  - The residual standard error of 8.774 mpg would indicate that the model may not be the most effective, however the multiple r-squared of .7149 and .6925. respectively, gives higher confidence in the results. 

## Summary Statistics on Suspension Coils
Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.

All manufacturing lots:

![Screenshot (57)](https://user-images.githubusercontent.com/92612370/151651789-8c5232af-e46b-4289-bc3c-6f0ca77af7d5.png)

Individual manufacturing lots:

![Screenshot (58)](https://user-images.githubusercontent.com/92612370/151651796-83798d8c-e367-4bc3-8299-0c52da631293.png)

* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not? 
  - The variance for all manufacturing lots in total is 62.29 PSI, and the variance for each lot individually is 0.98 PSI, 7.47 PSI, and 170.29 PSI for Lot1, Lot2, and Lot3, respectively. Therefore, only Lot3 exceeds the 100 PSI limit.

## T-Tests on Suspension Coils
Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
All manufacturing lots against population PSI t-test summary: 	
data:  suspension_coil_data$PSI
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval: 1497.507 1500.053
sample estimates: mean of x 1498.78

![Screenshot (59)](https://user-images.githubusercontent.com/92612370/151651879-ed7b1fc8-9f66-497d-ae6d-5c62a3f0e39a.png)

Each manufacturing lot against population PSI t-test summary:
Lot1
data:  subset(suspension_coil_data$PSI, suspension_coil_data$Manufacturing_Lot == "Lot1")
t = 0, df = 49, p-value = 1
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval: 1499.719 1500.281
sample estimates: mean of x 1500

![Screenshot (60)](https://user-images.githubusercontent.com/92612370/151651887-fc2ce9d4-b60e-4854-96c7-cdadf038552c.png)

Lot2
data:  subset(suspension_coil_data$PSI, suspension_coil_data$Manufacturing_Lot == "Lot2")
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval: 1499.423 1500.977
sample estimates: mean of x 1500.2

![Screenshot (61)](https://user-images.githubusercontent.com/92612370/151651894-83304867-3a1a-46aa-918a-afe2d06cdcb2.png)

Lot3
data:  subset(suspension_coil_data$PSI, suspension_coil_data$Manufacturing_Lot == "Lot3")
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval: 1492.431 1499.849
sample estimates: mean of x 1496.14

![Screenshot (62)](https://user-images.githubusercontent.com/92612370/151651909-4fc7c95c-8d76-4813-9ec8-e6f263c4c9ed.png)

## Study Design: MechaCar vs Competition
Design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.
* What metric or metrics are you going to test? 
  - Upfront cost and annual maintenance cost
* What is the null hypothesis or alternative hypothesis?
  - Null Hypothesis: There is no difference between the upfront cost and maintenance cost of the electric-powered MechaCars versus its competitors’ gas-powered vehicles.
  - Alternative Hypothesis: Although the MechaCar electric vehicles have higher upfront costs, their annual maintenance costs are lower.
* What statistical test would you use to test the hypothesis? And why?
  - Two-Sample t-tests comparing the mean of the upfront cost and annual maintenance cost of MechaCars versus vehicles from other manufacturers. This will determine any potential statistical differences between the distribution means from the two samples.
  - Simple Linear Regression analyses to determine if the vehicle manufacturer can predict upfront cost and annual maintenance cost. 
* What data is needed to run the statistical test?
  - Upfront cost and annual maintenance cost data for MechaCars and vehicles from other manufacturers would be required.
