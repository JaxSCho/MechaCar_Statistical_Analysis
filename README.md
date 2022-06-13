# MechaCar Statistical Analysis

## Project Overview
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this analysis, we complete the following tasks:

- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression to Predict MPG

A multiple linear regression analysis was performed to identify which variables in the MechaCar MPG dataset predicts the mpg of MechaCar prototypes. 

![image](https://user-images.githubusercontent.com/99936542/173261157-0cd1b357-ddf0-441d-b397-90a5fee36a79.png)

<b>Fig.1 - Linear Regression Model Output</b>

The linear regression model for our dataset would be:

```MPG = 6.267(vehicle_length) + 0.001245(vehicle_weight) + 0.06877(spoiler_angle) + 3.546(ground_clearance) - 3.411(AWD) - 104```

According to our results, vehicle length (p < 0.001) and ground clearance (p < 0.001) are statistically unlikely to provide random amoount of variance to the mpg values in the dataset at the 95% significance level since their indivdual variable p-values are less than 0.05. 

Because the p-value of our linear regression (p < 0.001) is less than our assumed significance level of 0.05, there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

From our linear regression model, the r-squared value is 0.7149, which means that roughly 71% of the variability of our dependent variables is explained using this linear model and therefore, we can state that our model is moderately strong at predicting mpg of MechaCar prototypes.

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. To determine if the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually, summary statistics were generated froom the suspension coil MechaCar dataset.

![image](https://user-images.githubusercontent.com/99936542/173271490-4abf7f70-197e-41db-9e45-eb1c63537062.png)

<b>Fig.2 - Summary Statistics on Suspension Coils of All Manufacturing Lots</b>

Overall, the PSI variance of all 150 suspension coils across all the manufacturing lots (62.29 pounds per square inch) is below 100 pounds per square inch and therefore, meets this design specification. However, when we examine the PSI variance of the suspension coils by manufacturing lots (see figure 3 below), only two lots - lots 1 and 2 specifically - meet the design specifications (i.e. 0.980 pounds per square inch and 7.470 pounds per square inch respectively). With a PSI variance of 170.286 pounds per square inch, the suspension coils in lot 3 did not meet this design specification.

![image](https://user-images.githubusercontent.com/99936542/173273409-9998d09e-6bb7-486c-ad65-7b0dd019f3b2.png)

<b>Fig.3 - Summary Statistics on Suspension Coils by Manufacturing Lot</b>

## T-Tests on Suspension Coils

We performed one-sample t-tests at the 95% significance level to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. The null hypothesis for these t-tests is that there is no statistical difference between the various observered sample mean suspension coil PSI and the population mean PSI of 1,500 pounds per square inch.

![image](https://user-images.githubusercontent.com/99936542/173273537-6bf36af2-e599-4423-a734-a1e8fdd501a0.png)

<b>Fig.4 - One-Sample t-test for all manufacturing lots</b>

The overall mean suspension coil PSI for all manufacturing lots was 1,498.78 pounds per square inch. Since p-value = 0.060, which is above our significance level of 0.05, we do not have sufficient evidence to reject the null hypothesis and therefore, the overall mean suspension coil PSI is statistically similar to the populationo mean of 1,500 per pounds per square inch at the 95% significance level.

![image](https://user-images.githubusercontent.com/99936542/173273547-8a8f7d01-5f37-44e9-b23e-6ca3deb8ad6d.png)

<b>Fig.5 - One-Sample t-test for Lot 1</b>

The mean suspension coil PSI for Lot 1 was 1,500 pounds per square inch. Since p-value = 1.0, which is above our significance level of 0.05, we do not have sufficient evidence to reject the null hypothesis and therefore, the mean suspension coil PSI for Lot 1 is statistically similar to the populationo mean of 1,500 per pounds per square inch at the 95% significance level.

![image](https://user-images.githubusercontent.com/99936542/173273558-dfa7f515-1210-4d85-9612-51843c7c3866.png)

<b>Fig.6 - One-Sample t-test for Lot 2</b>

The mean suspension coil PSI for Lot 2 was 1,500.2 pounds per square inch. Since p-value = 0.607, which is above our significance level of 0.05, we do not have sufficient evidence to reject the null hypothesis and therefore, the mean suspension coil PSI for Lot 2 is statistically similar to the populationo mean of 1,500 per pounds per square inch at the 95% significance level.

![image](https://user-images.githubusercontent.com/99936542/173273571-e7bb82a4-d7af-4da1-975d-c224acf4063a.png)

<b>Fig.7 - One-Sample t-test for Lot 3</b>

The mean suspension coil PSI for Lot 3 was 1,496.14 pounds per square inch. Since p-value = 0.042, which is lower our significance level of 0.05, we do have sufficient evidence to reject the null hypothesis and therefore, the mean suspension coil PSI for Lot 3 is statistically different to the populationo mean of 1,500 per pounds per square inch at the 95% significance level.

## Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?
