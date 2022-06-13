# MechaCar Statistical Analysis

## Project Overview
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this analysis, we complete the following tasks:

- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

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

Since a single attribute doesn't make a vehicle truly great by itself, many factors should be considered when determining vehicle performance such as road test performance, reliability, owner satisfaction, and safety. Some performance metrics that could be tested include: horse power, fuel efficiency, purchase cost, maintenance cost, owner satisfaction ratings, and safety ratings. We will focus on a few metrics that influence consumer safety for this potential study.

In order to design a statistical study to compare the consumer safety performance of MechaCar vehicles against performance of vehicles from other manufacturers, the following questions must be addressed:

- What metric or metrics are you going to test? 

    Some metrics that can be easily quantifed for vehicle performance relevant to consumer safety that we could test include safety ratings and defective units/recall rates. Manufacturers should strive to keep recall rates low to in order to keep consumers safe as well as mitigate the costs that are associated with product recalls along with potential bad press that comes along with recalls, which may deter consumers from buying products from companies with high recall rates.

- What is the null hypothesis or alternative hypothesis?

    - For the safety ratings metric -- The null hypothesis would be there is no statistical difference between safety ratings means from MechaCar and the other manufacturers, while the alternative hypothesis would be that there is a statistical difference between safety rating means from MechaCar and the other manufacturers.
    - For the defective units/recall rates metric -- The null hypothesis would be there is no statistical difference between the mean defective units/recall rates from MechaCar and the other manufacturers, while the alternative hypothesis would be that there is a statistical difference between the mean defective units/recall rates from MechaCar and the other manufacturers.

- What statistical test would you use to test the hypothesis? And why?

    Assuming MechaCar has multiple competitors, I would use ANOVA statistical test to test these hypotheses since these metric means would be compared between MechaCar vehicles and other manufacturers. One could perform numerous two-sample t-tests to test the hypotheses by comparing MechaCar metrics to each competitor metrics one at a time. However, using multiple two-sample t-test would be less efficient than running one ANOVA test to compare all manufacturers. Plus you could gain additional information about metric comparisons between manufacturers other than MechaCar.

- What data is needed to run the statistical test?
 
    To run this statistical test, I woould need a dataset that contains safety ratings and defective units/recall rates for comparative vehicles from MechaCar and other manufacturers at the minimum. Any additional variables about vehicle features, such as vehicle type, consumer satisfaction ratings, etc. could be benefical for future analysis since many determinants could affect the relationship between a vehicle's manufacturer and its performance metrics. 