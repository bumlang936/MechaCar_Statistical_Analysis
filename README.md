# MechaCar_Statistical_Analysis


## Linear Regression to Predict MPG

By using R-studio and the MechaCar_mpg.csv dataset, a linear regression model can be made by using the following code and the following outputs: 
![lm_mpg](https://user-images.githubusercontent.com/75760493/115299769-d89d1580-a124-11eb-8ef1-632a006c921f.PNG)

The following linear regression model for mpg was created:

mpg = 6.267 * vehicle_length + .002145 * vehicle_weight + .06877 * spoiler_angler + 3.546 * ground_clearance - 3.411 * AWD - 104

Since the values for the spoiler angle and vehicle weight are so small, (basically 0), then they will have very little, or no impact on mpg. So the formula can be written without those two parameters:

mpg = 6.267 * vehicle_length + 3.546 * ground_clearance - 3.411 * AWD - 104

From this equation, it's clear that the vehicle length, ground clearance, and AWD have an influence on the vehicles' mpg.

R-studio was then used to determine summary statistics and p-values for the all the parameters used to calculate a vehicles' mpg. The following code was used to generate summary statistics, p-values along with the r-squared value:
![summary_mpg](https://user-images.githubusercontent.com/75760493/115380463-361e7a00-a198-11eb-9ab3-897fe9da9035.PNG)

As shown above, the following p-values were found for the following parameters:
intercept = 5.08e-08
vehicle_length = 2.60e-12
vehicle_weight = 0.0776
spoiler_angle = 0.3069
ground_clearance = 5.21e-08
AWD = 0.1852

1.) Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

From the p-values shown above, the variables that provided a non-random amount of variance to the mpg values were vechile_length and ground_clearance because their p-values were way below the significance level of .05. 

2.) Is the slope of the linear model considered to be zero? Why or why not?

Because the p-value of the linear model was 5.35e-11, well below the significance level of 0.05, we can reject the null hypothesis meaning the slope of the linear model will be not zero.

3.) Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? 

The linear model created can be used as a good predictor of mpg since it's multiple r-squared value was .7149 and had a p-value of 5.35e-11, which is well below the significance level of .05. Since it has a multiple r-squared value of 0.7149, we can expect the linear model to accurately  predict the mpg of 71.49% of all models.


## Summary Statistics on Suspension Coils

1.) The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The following image shows the results after using R-studio to gather summary statistics on all the lots, and then on each lot individually:
![lot_variance](https://user-images.githubusercontent.com/75760493/115384512-c19a0a00-a19c-11eb-9270-dfeedbc30034.PNG)

The results show that the PSI variance for all the lots was 62.3, which is below the max of 100 PSI. 

The results also show that the PSI variance for Lots 1 and 2 didn't exceed the 100 PSI variance with variances of .98 and 7.47 respectively. However, Lot 3 had a PSI variance of 170 which exceed the max of 100 PSI. 


## T-Tests on Suspension Coils

The following images show the results of running a t-test on all the lots, and then t-tests on each individual lots to see if they are statistically different from the mean population of 1,500 PSI.

T-Test across all lots:
![all_lots](https://user-images.githubusercontent.com/75760493/115387514-6f5ae800-a1a0-11eb-9c72-53c1738b8f6f.PNG)

T-Test across Lot 1:
![lot1](https://user-images.githubusercontent.com/75760493/115387571-826db800-a1a0-11eb-9231-3edc3277559d.PNG)

T-Test across Lot 2:
![lot2](https://user-images.githubusercontent.com/75760493/115387630-91546a80-a1a0-11eb-8dce-05ff4b05f5ae.PNG)

T-Test across Lot 3:
![lot3](https://user-images.githubusercontent.com/75760493/115387694-9f09f000-a1a0-11eb-85de-1d7017190f04.PNG)

The t-test performed across all lots resulted in a p-value of 0.06028.

The t-test performed across Lot 1 resulted in a p-value of 1.

The t-test performed across Lot 2resulted in a p-value of 0.6072.

The t-test performed across Lot 3 resulted in a p-value of 0.04168.

The suspension coil's PSI of lot 3 is the only one that is statistically different from the mean population of 1,500 PSI since it is the only one with a p-value below 0.05 with a p-value of 0.04168. All others fail to show that they are statistically different from the mean population of 1,500 PSI.


## Study Design: MechaCar vs. Competition

1.) What metric or metrics are you going to test?

The metrics I will be testing are city and highway fuel efficiencies.

2.) What is the null hypothesis or alternative hypothesis? 

The null hypothesis is that all cars in the same class have the same city and highway fuel efficiencies. The alternative hypothesis is that the city and highway fuel efficiencies for each car are not the same.

3.) What statistical test would you use to test the hypothesis? And why?

An ANOVA test would be used since I am trying to determine if the MechaCar has better fuel efficiencies then its competitors. This would be appropriate since ANOVA tests are used to test the means of a continuous numerical variable across multiple groups. 

4.) What data is needed to run the statistical test?

In order to properly perform this test, then both city and highway fuel efficiencies for all manufacturers would be required in order to see how the MechaCar's city and highway fuel efficiencies differ. 
