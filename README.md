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
vehicle_weight = .0776
spoiler_angle = .3069
ground_clearance = 5.21e-08
AWD = .1852

1.) Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

From the p-values shown above, the varaibles that provided a non-random amount of variance to the mpg values were vechile_length and ground_clearance because their p-values were way below the significance level of .05. 

2.) Is the slope of the linear model considered to be zero? Why or why not?

Because the p-value of the linear model was 5.35e-11, well below the significance level of .05, we can reject the null hypothesis meaning the slope of the linear model will be not zero.

3.) Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? 

The linear model created can be used as a good predictor of mpg since it's multiple r-squared value was .7149 and had a p-value of 5.35e-11, which is well below the signficance level of .05. Since it has a multiple r-squared value of .7149, we can expect the linear model to accuaretly predict the mpg of 71.49% of all models.



## Summary Statistics on Suspension Coils

1.) The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The following image shows the results after using R-stuido to gather summary statistics on all the lots, and then on each lot individually:
![lot_variance](https://user-images.githubusercontent.com/75760493/115384512-c19a0a00-a19c-11eb-9270-dfeedbc30034.PNG)

The results show that the PSI variance for all the lots was 62.3, which is below the max of 100 PSI. 

The results also show that the PSI variance for Lots 1 and 2 didn't exceed the 100 PSI variance with variances of .98 and 7.47 respectively. However, Lot 3 had a PSI variance of 170 which exceed the max of 100 PSI. 



## T-Tests on Suspension Coils




## Study Design: MechaCar vs. Competition

1.) What metric or metrics are you going to test?
2.) What is the null hypothesis or alternative hypothesis? 
3.) What statistical test would you use to test the hypothesis? And why?
4.) What data is needed to run the statistical test?
