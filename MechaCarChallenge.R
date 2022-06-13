#==================================================
# Deliverable 1 - Linear Regression to Predict MPG
#==================================================

# Load dplyr package
library(tidyverse)

# Import and read MechaCar_mpg.csv as a dataframe
MechaCarMPG <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Linear Regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCarMPG)

# Summary fumction to determine p-value and r-sq value for model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCarMPG))

#==================================================
# Deliverable 2 - Summary Stats on Suspension Coils
#==================================================

# Import and read Suspension_Coil.csv as a table
SuspensionCoil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Create total_summary dataframe -- mean, median, variance, and standard deviation of the suspension coil's PSI column
total_summary <- SuspensionCoil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=sd(PSI)^2, SD=sd(PSI))

# Create lot_summary dataframe - group each manufacturing lot by mean, median, variance, and standard deviatioon of the suspension coil's PSI column
lot_summary <- SuspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=sd(PSI)^2, SD=sd(PSI))

#==================================================
# Deliverable 3
#==================================================

# one sample t-test determine if the PSI across all manufacturing lots is statistically different from the pop mean of 1500 pounds/square inch
t.test(SuspensionCoil$PSI, mu=1500)

# determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds/square inch
t.test(subset(SuspensionCoil, Manufacturing_Lot=='Lot1')$PSI, mu=1500)
t.test(subset(SuspensionCoil, Manufacturing_Lot=='Lot2')$PSI, mu=1500)
t.test(subset(SuspensionCoil, Manufacturing_Lot=='Lot3')$PSI, mu=1500)


